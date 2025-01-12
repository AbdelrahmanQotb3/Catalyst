import 'package:catalyst/Base/enums/base_screen_state.dart';
import 'package:catalyst/Model/Data/Properties/DeletePropertyResponse.dart';
import 'package:catalyst/Model/Data/Properties/GetPropertiesResponse.dart';
import 'package:catalyst/Model/Data/Properties/UpdatePropertyResponse.dart';
import 'package:catalyst/Model/Repositories/Properties/properties_repo.dart';
import 'package:catalyst/States/properties_tab_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class PropertiesTabViewModel extends Cubit<PropertiesTabState>{
  PropertiesRepository propertiesRepository;
  PropertiesTabViewModel(this.propertiesRepository) : super(PropertiesTabState());

  Future<void> getAllProperties()async{
    emit(state.copyWith(propertiesAPI: BaseScreenState.loading));
    print("loading");
    try{
      List<GetPropertiesResponse> properties = await propertiesRepository.getProperties();
      emit(state.copyWith(propertiesAPI: BaseScreenState.success , properties: properties));
      print("Successful");

    }catch(exception){
      emit(state.copyWith(propertiesAPI: BaseScreenState.failure , errorMessage: exception.toString()));
      print("Error");
    }

  }

  Future<void> updateProperty(num id)async{
    emit(state.copyWith(propertiesAPI: BaseScreenState.loading));
    print("loading");
    try{
      UpdatePropertyResponse updateProperty = await propertiesRepository.updateProperty(id);
      emit(state.copyWith(propertiesAPI: BaseScreenState.success , updateProperty: updateProperty));
      print("Successful");

    }catch(exception){
      emit(state.copyWith(propertiesAPI: BaseScreenState.failure , errorMessage: exception.toString()));
      print("Error");
    }

  }

  Future<void> deleteProperty(num id)async{
    emit(state.copyWith(propertiesAPI: BaseScreenState.loading));
    print("loading");
    try{
      DeletePropertyResponse deleteProperty = await propertiesRepository.deleteProperty(id);
      emit(state.copyWith(propertiesAPI: BaseScreenState.success , deleteProperty: deleteProperty));
      print("Successful");

    }catch(exception){
      emit(state.copyWith(propertiesAPI: BaseScreenState.failure , errorMessage: exception.toString()));
      print("Error");
    }

  }
}