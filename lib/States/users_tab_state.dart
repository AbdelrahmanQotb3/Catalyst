import 'package:catalyst/Base/enums/base_screen_state.dart';
import 'package:catalyst/Model/Data/Users/GetUsersResponse.dart';

class UsersTabState {
  BaseScreenState usersApi;
  String errorMessage;
  List<GetUsersResponse>? users;

  UsersTabState({
    this.usersApi = BaseScreenState.loading,
    this.errorMessage = "",
    this.users,
  });

  UsersTabState copyWith({
    BaseScreenState? usersApi,
    String? errorMessage,
    List<GetUsersResponse>? users,
  }) {
    return UsersTabState(
      usersApi: usersApi ?? this.usersApi,
      errorMessage: errorMessage ?? this.errorMessage,
      users: users ?? this.users,
    );
  }
}
