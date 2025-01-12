import 'package:catalyst/Base/enums/base_screen_state.dart';
import 'package:catalyst/Model/Data/Properties/GetSpecificPropertyResponse.dart';

class PropertyDetailsState {
  String errorMessage;
  GetSpecificPropertyResponse? property;
  BaseScreenState propertyAPI;

  PropertyDetailsState(
      {this.propertyAPI = BaseScreenState.loading,
      this.errorMessage = "",
      this.property});

  PropertyDetailsState copyWith({
    String? errorMessage,
    GetSpecificPropertyResponse? property,
    BaseScreenState? propertyAPI,
  }) {
    return PropertyDetailsState(
      errorMessage: errorMessage ?? this.errorMessage,
      property: property ?? this.property,
      propertyAPI: propertyAPI ?? this.propertyAPI,
    );
  }
}
