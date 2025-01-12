import 'dart:convert';

import 'package:catalyst/Model/Data/Users/CreateUserResponse.dart';
import 'package:catalyst/Model/Data/Users/DeleteUserResponse.dart';
import 'package:catalyst/Model/Data/Users/GetSpecificUser.dart';
import 'package:catalyst/Model/Data/Users/GetUsersResponse.dart';
import 'package:catalyst/Model/Data/Users/UpdateUserResponse.dart';
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
  Future createNewUser(String name, String email) async {
    final Map<String, dynamic> body = {
      "name": name,
      "email": email,
    };
    if(await internetConnection.hasConnection){
      Response response = await post(Uri.parse(EndPoint.createUsersApi),body: body);
      CreateUserResponse newUser = CreateUserResponse.fromJson(jsonDecode(response.body));
      if(response.statusCode >= 200 && response.statusCode < 300){
        print("API Done");
        return newUser;
      }else{
        throw AppConstants.defaultMessageError;
      }
    }else{
      throw AppConstants.internetErrorMessage;
    }
  }

  @override
  Future deleteUSer(num id) async{
    if(await internetConnection.hasConnection){
      Response response = await delete(Uri.parse("${EndPoint.retrieveUsersApi}/$id"));
      DeleteUserResponse deleteUser = DeleteUserResponse.fromJson(jsonDecode(response.body));
      if(response.statusCode >= 200 && response.statusCode < 300){
        return deleteUser;
      }
      else{
        throw AppConstants.defaultMessageError;
      }
    }else{
      throw AppConstants.internetErrorMessage;
    }
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
  Future getSpecificUser(num id) async {
    if(await internetConnection.hasConnection){
      Response response = await get(Uri.parse("${EndPoint.retrieveUsersApi}/$id"));
      GetSpecificUser oneUser = GetSpecificUser.fromJson(jsonDecode(response.body));
      if(response.statusCode >= 200 && response.statusCode < 300){
        print("API done");
        return oneUser;
      }else{
        throw AppConstants.defaultMessageError;
      }
    }else{
      throw AppConstants.internetErrorMessage;
    }
  }

  @override
  Future updateUser(num id) async {
    if(await internetConnection.hasConnection){
      Response response = await post(Uri.parse("${EndPoint.createUsersApi}/$id"));
      UpdateUserResponse updatedUser = UpdateUserResponse.fromJson(jsonDecode(response.body));
      if(response.statusCode >= 200 && response.statusCode < 300){
        print("API Done");
        return updatedUser;
      }else{
        throw AppConstants.defaultMessageError;
      }
    }else{
      throw AppConstants.internetErrorMessage;
    }
  }

}
