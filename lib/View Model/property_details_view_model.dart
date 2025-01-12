import 'package:catalyst/Base/enums/base_screen_state.dart';
import 'package:catalyst/Model/Data/Properties/GetSpecificPropertyResponse.dart';
import 'package:catalyst/Model/Repositories/Properties/properties_repo.dart';
import 'package:catalyst/States/property_details_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class PropertyDetailsViewModel extends Cubit<PropertyDetailsState>{
  PropertiesRepository propertiesRepository;
  PropertyDetailsViewModel(this.propertiesRepository) : super(PropertyDetailsState());

  Future<void> getSpecificProperty(num propertyID) async{
    emit(state.copyWith(propertyAPI: BaseScreenState.loading));
    print("Loading");
    try{
      GetSpecificPropertyResponse property = await propertiesRepository.getSpecificProperty(propertyID);
      emit(state.copyWith(propertyAPI: BaseScreenState.success , property: property));
      print("Success");
    }catch(exception){
      emit(state.copyWith(propertyAPI: BaseScreenState.failure , errorMessage:  exception.toString()));
      print("Error");
    }
  }

}