import 'package:catalyst/Base/enums/base_screen_state.dart';
import 'package:catalyst/Model/Data/Properties/GetPropertiesResponse.dart';

class PropertiesTabState {
  BaseScreenState propertiesAPI;
  String errorMessage;
  List<GetPropertiesResponse>? properties;

  PropertiesTabState({
    this.errorMessage = "",
    this.propertiesAPI = BaseScreenState.loading,
    this.properties,
  });

  PropertiesTabState copyWith({
    BaseScreenState? propertiesAPI,
    String? errorMessage,
    List<GetPropertiesResponse>? properties,
  }) {
    return PropertiesTabState(
      propertiesAPI: propertiesAPI ?? this.propertiesAPI,
      errorMessage: errorMessage ?? this.errorMessage,
      properties: properties ?? this.properties,
    );
  }
}

