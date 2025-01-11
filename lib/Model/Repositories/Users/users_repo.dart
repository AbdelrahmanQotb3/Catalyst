import 'dart:core';

abstract class UsersRepositories{
  Future getAllUsers();

  Future createNewUser(String name , String email);

  Future getSpecificUser(String id);

  Future updateUser(String id);

  Future deleteUSer(String id);
}