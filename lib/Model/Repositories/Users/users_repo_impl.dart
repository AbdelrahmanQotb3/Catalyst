import 'dart:convert';

import 'package:catalyst/Model/Data/Users/GetUsersResponse.dart';
import 'package:catalyst/Model/Repositories/Users/users_repo.dart';
import 'package:catalyst/Utilities/end_points.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

import '../../../Utilities/app_constants.dart';

@Injectable(as: UsersRepositories )
class UsersRepositoriesImpl extends UsersRepositories{
  InternetConnectionCheckerPlus internetConnection;
  UsersRepositoriesImpl(this.internetConnection);
  @override
  Future createNewUser(String name, String email) {
    // TODO: implement createNewUser
    throw UnimplementedError();
  }

  @override
  Future deleteUSer(String id) {
    // TODO: implement deleteUSer
    throw UnimplementedError();
  }

  @override
  Future getAllUsers() async {
    if(await internetConnection.hasConnection){
      Response response = await get(Uri.parse(EndPoint.retrieveUsersApi));
      List<GetUsersResponse> users = (jsonDecode(response.body) as List)
          .map((e) => GetUsersResponse.fromJson(e as Map<String, dynamic>))
          .toList();
      if(response.statusCode >= 200 && response.statusCode < 300){
        return users;
      }
      else{
        throw AppConstants.defaultMessageError;
      }
    }else{
      throw AppConstants.internetErrorMessage;
    }
  }

  @override
  Future getSpecificUser(String id) {
    // TODO: implement getSpecificUser
    throw UnimplementedError();
  }

  @override
  Future updateUser(String id) {
    // TODO: implement updateUser
    throw UnimplementedError();
  }

}
