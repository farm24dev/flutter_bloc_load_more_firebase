import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_cubit_loadmore/models/user_model.dart';
import 'package:flutter_cubit_loadmore/repositories/firebase_repositories.dart';

part 'user_state.dart';

class UserCubit extends Cubit<UserState> {
  UserCubit() : super(const UserState());

  Future<void> onFetchUser() async {
    emit(state.copyWith(status: UserStatus.loading));
    try {
      final res = await FirebaseRepositories.fetchUserList();
      final List<UserModel> users = [];
      users.addAll(res.docs.map((e) => UserModel.fromJson(e.data())));
      emit(state.copyWith(status: UserStatus.success, users: users, lastDoc: res.docs.lastOrNull));
    } catch (e) {
      emit(state.copyWith(status: UserStatus.failure));
    }
  }

  Future<void> onLoadMore() async {
    emit(state.copyWith(status: UserStatus.loadMoreLoading));
    try {
      final res = await FirebaseRepositories.fetchUserList(startAfterDoc: state.lastDoc);
      final List<UserModel> users = [];
      users.addAll(res.docs.map((e) => UserModel.fromJson(e.data())));
      emit(state.copyWith(status: UserStatus.loadMoreSuccess, users: [...state.users, ...users], lastDoc: res.docs.lastOrNull));
    } catch (e) {
      emit(state.copyWith(status: UserStatus.loadMoreFailure));
    }
  }
}
