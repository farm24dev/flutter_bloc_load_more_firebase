import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_cubit_loadmore/pages/bloc/user/user_cubit.dart';
import 'package:flutter_cubit_loadmore/repositories/firebase_repositories.dart';
import 'package:flutter_smart_dialog/flutter_smart_dialog.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final UserCubit _userCubit = UserCubit();
  late RefreshController refreshController;
  @override
  void initState() {
    super.initState();
    refreshController = RefreshController();
    _userCubit.onFetchUser();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: BlocConsumer<UserCubit, UserState>(
        bloc: _userCubit,
        listener: (context, state) {
          if (state.status == UserStatus.loadMoreFailure) {
            refreshController.loadFailed();
          }
          if (state.status == UserStatus.loadMoreSuccess) {
            refreshController.loadComplete();
          }
        },
        builder: (context, state) {
          if (state.status == UserStatus.loading) {
            return const Center(
              child: CircularProgressIndicator.adaptive(),
            );
          }
          if (state.status == UserStatus.failure) {
            return const Center(
              child: Text('something went wrong!'),
            );
          }
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                child: Column(
                  children: [
                    const SizedBox(height: 24),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        'จำนวน ${state.users.length} คน',
                      ),
                    ),
                    const SizedBox(height: 12),
                    const Divider(),
                    const SizedBox(height: 12),
                  ],
                ),
              ),
              Expanded(
                child: SmartRefresher(
                  controller: refreshController,
                  physics: const BouncingScrollPhysics(),
                  enablePullDown: false,
                  enablePullUp: true,
                  onLoading: () async {
                    _userCubit.onLoadMore();
                  },
                  child: SingleChildScrollView(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    physics: const BouncingScrollPhysics(),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ListView.separated(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: state.users.length,
                          separatorBuilder: (context, index) => const SizedBox(height: 12),
                          itemBuilder: (context, index) {
                            final user = state.users[index];
                            return Container(
                              padding: const EdgeInsets.all(12),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(16),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 3,
                                    offset: const Offset(0, 1),
                                    color: Colors.black.withOpacity(0.16),
                                  )
                                ],
                              ),
                              child: Row(
                                children: [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundImage: NetworkImage(user.avatar ?? ''),
                                  ),
                                  const SizedBox(width: 24),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          user.name ?? '-',
                                          style: const TextStyle(
                                            fontSize: 16,
                                            color: Colors.black87,
                                          ),
                                        ),
                                        const SizedBox(height: 10),
                                        Container(
                                          padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2),
                                          decoration: BoxDecoration(
                                            color: user.status == true ? Colors.green : Colors.red.shade400,
                                            borderRadius: BorderRadius.circular(100),
                                          ),
                                          child: Text(
                                            user.status == true ? 'active' : 'disable',
                                            style: const TextStyle(fontSize: 14, color: Colors.white),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            );
                          },
                        ),
                        const SizedBox(height: 24),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton.small(
            child: const Icon(Icons.radar),
            onPressed: () async {
              SmartDialog.showLoading();
              await Future.delayed(const Duration(seconds: 2));
              await FirebaseRepositories.addDataMork();
              SmartDialog.dismiss();
            },
          ),
          FloatingActionButton.small(
            child: const Icon(Icons.add),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
