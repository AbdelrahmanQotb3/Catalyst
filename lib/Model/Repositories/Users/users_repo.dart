import 'dart:core';

abstract class UsersRepositories{
  Future getAllUsers();

  Future createNewUser(String name , String email);

  Future getSpecificUser(num id);

  Future updateUser(num id);

  Future deleteUSer(num id);
}