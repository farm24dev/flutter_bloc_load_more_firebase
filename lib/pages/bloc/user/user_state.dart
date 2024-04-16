part of 'user_cubit.dart';

enum UserStatus {
  unknow,
  loading,
  success,
  failure,
  loadMoreLoading,
  loadMoreSuccess,
  loadMoreFailure,
}

class UserState extends Equatable {
  const UserState({
    this.status = UserStatus.unknow,
    this.users = const [],
    this.lastDoc,
  });
  final UserStatus status;
  final List<UserModel> users;
  final DocumentSnapshot? lastDoc;

  @override
  List<Object?> get props => [status, users, lastDoc];

  UserState copyWith({
    UserStatus? status,
    List<UserModel>? users,
    DocumentSnapshot? lastDoc,
  }) =>
      UserState(
        status: status ?? this.status,
        users: users ?? this.users,
        lastDoc: lastDoc ?? this.lastDoc,
      );
}
