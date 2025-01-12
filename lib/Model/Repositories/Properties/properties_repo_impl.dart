import 'dart:convert';

import 'package:catalyst/Model/Data/Properties/GetPropertiesResponse.dart';
import 'package:catalyst/Model/Data/Properties/GetSpecificPropertyResponse.dart';
import 'package:catalyst/Model/Repositories/Properties/properties_repo.dart';
import 'package:catalyst/Utilities/app_constants.dart';
import 'package:catalyst/Utilities/end_points.dart';
import 'package:http/http.dart';
import 'package:injectable/injectable.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

@Injectable(as: PropertiesRepository )
class PropertiesRepositoryImpl extends PropertiesRepository{
  InternetConnectionCheckerPlus internetConnection;
  PropertiesRepositoryImpl(this.internetConnection);
  @override
  Future createProperty() {
    // TODO: implement createProperty
    throw UnimplementedError();
  }

  @override
  Future deleteProperty(String id) {
    // TODO: implement deleteProperty
    throw UnimplementedError();
  }

  @override
  Future<List<GetPropertiesResponse>> getProperties() async {
    if (await internetConnection.hasConnection) {
      Response response = await get(Uri.parse(EndPoint.retrievePropertiesApi));
      List<GetPropertiesResponse> properties = (jsonDecode(response.body) as List)
          .map((e) => GetPropertiesResponse.fromJson(e as Map<String, dynamic>))
          .toList();
      if (response.statusCode >= 200 && response.statusCode < 300) {
        return properties;
      } else {
        throw AppConstants.defaultMessageError;
      }
    } else {
      throw AppConstants.internetErrorMessage;
    }
  }

  @override
  Future getSpecificProperty(num id) async{
    if(await internetConnection.hasConnection){
      Response response = await get(Uri.parse("${EndPoint.retrievePropertiesApi}/$id"));
      GetSpecificPropertyResponse property = GetSpecificPropertyResponse.fromJson(jsonDecode(response.body));
      if(response.statusCode >= 200 && response.statusCode < 300){
        print("API Done");
        return property;
      }else{
        throw AppConstants.defaultMessageError;
      }
    }else{
      throw AppConstants.internetErrorMessage;
    }
  }

  @override
  Future updateProperty(String id) {
    // TODO: implement updateProperty
    throw UnimplementedError();
  }

}