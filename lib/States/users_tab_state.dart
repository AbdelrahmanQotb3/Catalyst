import 'package:catalyst/Base/enums/base_screen_state.dart';
import 'package:catalyst/Model/Data/Users/CreateUserResponse.dart';
import 'package:catalyst/Model/Data/Users/DeleteUserResponse.dart';
import 'package:catalyst/Model/Data/Users/GetSpecificUser.dart';
import 'package:catalyst/Model/Data/Users/GetUsersResponse.dart';
import 'package:catalyst/Model/Data/Users/UpdateUserResponse.dart';

class UsersTabState {
  BaseScreenState usersApi;
  String errorMessage;
  List<GetUsersResponse>? users;
  CreateUserResponse? newUser;
  UpdateUserResponse? updateUser;
  GetSpecificUser? specificUser;
  DeleteUserResponse? deleteUser;

  UsersTabState({
    this.usersApi = BaseScreenState.loading,
    this.errorMessage = "",
    this.users,
    this.newUser,
    this.specificUser,
    this.updateUser,
    this.deleteUser
  });

  UsersTabState copyWith({
    BaseScreenState? usersApi,
    String? errorMessage,
    List<GetUsersResponse>? users,
    CreateUserResponse? newUser,
    UpdateUserResponse? updateUser,
    GetSpecificUser? specificUser,
    DeleteUserResponse? deleteUser,
  }) {
    return UsersTabState(
      usersApi: usersApi ?? this.usersApi,
      errorMessage: errorMessage ?? this.errorMessage,
      users: users ?? this.users,
      newUser: newUser ?? this.newUser,
      updateUser: updateUser ?? this.updateUser,
      specificUser: specificUser ?? this.specificUser,
      deleteUser: deleteUser ?? this.deleteUser,
    );
  }
}
