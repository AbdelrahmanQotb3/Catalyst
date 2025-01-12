import 'package:catalyst/Base/enums/base_screen_state.dart';
import 'package:catalyst/Model/Data/Users/CreateUserResponse.dart';
import 'package:catalyst/Model/Data/Users/DeleteUserResponse.dart';
import 'package:catalyst/Model/Data/Users/GetSpecificUser.dart';
import 'package:catalyst/Model/Data/Users/GetUsersResponse.dart';
import 'package:catalyst/Model/Data/Users/UpdateUserResponse.dart';
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

  Future<void> createNewUser(String name , String email) async {
    emit(state.copyWith(usersApi: BaseScreenState.loading));
    try{
      CreateUserResponse user = await usersRepositories.createNewUser(name, email);
      emit(state.copyWith(usersApi: BaseScreenState.success,newUser: user));
      print("Successful");
    }catch(exception){
      emit(state.copyWith(usersApi: BaseScreenState.failure , errorMessage: exception.toString()));
      print("Error");
    }
  }

  Future<void> deleteUser(num id)async{
    emit(state.copyWith(usersApi: BaseScreenState.loading));
    try{
      DeleteUserResponse userDelete = await usersRepositories.deleteUSer(id);
      emit(state.copyWith(usersApi: BaseScreenState.success , deleteUser: userDelete));
    }catch(exception){
      emit(state.copyWith(usersApi: BaseScreenState.failure , errorMessage: exception.toString()));
      print("Failed");
    }
  }

  Future<void> getSpecificUser(num id) async {
    emit(state.copyWith(usersApi: BaseScreenState.loading));
    try{
      GetSpecificUser oneUser = await usersRepositories.getSpecificUser(id);
      emit(state.copyWith(usersApi: BaseScreenState.success , specificUser: oneUser));
      print("Success");
    }catch(exception){
      emit(state.copyWith(usersApi: BaseScreenState.failure , errorMessage: exception.toString()));
      print("Error");
    }
  }

  Future<void> updateUser(num id) async {
    emit(state.copyWith(usersApi: BaseScreenState.loading));
    try{
      UpdateUserResponse updatedUser = await usersRepositories.updateUser(id);
      emit(state.copyWith(usersApi: BaseScreenState.success , updateUser: updatedUser));
      print("Success");
    }catch(exception){
      emit(state.copyWith(usersApi: BaseScreenState.failure , errorMessage: exception.toString()));
      print("Error");
    }
  }
}
