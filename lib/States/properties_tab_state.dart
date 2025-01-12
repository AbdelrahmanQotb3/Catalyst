import 'package:catalyst/Base/enums/base_screen_state.dart';
import 'package:catalyst/Model/Data/Properties/DeletePropertyResponse.dart';
import 'package:catalyst/Model/Data/Properties/GetPropertiesResponse.dart';
import 'package:catalyst/Model/Data/Properties/UpdatePropertyResponse.dart';

class PropertiesTabState {
  BaseScreenState propertiesAPI;
  String errorMessage;
  List<GetPropertiesResponse>? properties;
  DeletePropertyResponse? deleteProperty;
  UpdatePropertyResponse? updateProperty;

  PropertiesTabState({
    this.errorMessage = "",
    this.propertiesAPI = BaseScreenState.loading,
    this.properties,
    this.updateProperty,
    this.deleteProperty,
  });

  PropertiesTabState copyWith({
    BaseScreenState? propertiesAPI,
    String? errorMessage,
    List<GetPropertiesResponse>? properties,
    DeletePropertyResponse? deleteProperty,
    UpdatePropertyResponse? updateProperty,
  }) {
    return PropertiesTabState(
      propertiesAPI: propertiesAPI ?? this.propertiesAPI,
      errorMessage: errorMessage ?? this.errorMessage,
      properties: properties ?? this.properties,
      deleteProperty: deleteProperty ?? this.deleteProperty,
      updateProperty: updateProperty ?? this.updateProperty,
    );
  }
}
