import 'package:catalyst/Base/enums/base_screen_state.dart';
import 'package:catalyst/Model/Data/Users/GetUsersResponse.dart';
import 'package:catalyst/Model/Repositories/Users/users_repo.dart';
import 'package:catalyst/States/users_tab_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class UsersTabViewModel extends Cubit<UsersTabState> {
  UsersRepositories usersRepositories;

  UsersTabViewModel(this.usersRepositories) : super(UsersTabState());

  Future<void> getAllUsers() async {
    emit(state.copyWith(usersApi: BaseScreenState.loading));
    print("Loading");
    try {
      List<GetUsersResponse> users = await usersRepositories.getAllUsers();
      emit(state.copyWith(usersApi: BaseScreenState.success , users: users));
      print("Success");
    } catch (exception) {
      emit(state.copyWith(usersApi: BaseScreenState.failure,errorMessage: exception.toString()));
      print("Failure");
    }
  }
}
