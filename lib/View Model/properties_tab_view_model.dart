import 'package:catalyst/Base/enums/base_screen_state.dart';
import 'package:catalyst/Model/Data/Properties/GetPropertiesResponse.dart';
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
}