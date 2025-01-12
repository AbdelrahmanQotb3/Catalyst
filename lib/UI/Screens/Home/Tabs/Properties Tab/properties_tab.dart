import 'package:catalyst/Base/enums/base_screen_state.dart';
import 'package:catalyst/Model/Data/Properties/GetPropertiesResponse.dart';
import 'package:catalyst/States/properties_tab_state.dart';
import 'package:catalyst/UI/Screens/Home/Tabs/Properties%20Tab/Properties%20Details/properties_details.dart';
import 'package:catalyst/Utilities/app_constants.dart';
import 'package:catalyst/Utilities/app_error.dart';
import 'package:catalyst/View%20Model/properties_tab_view_model.dart';
import 'package:catalyst/di.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../Utilities/property_card.dart';

class PropertiesTab extends StatefulWidget {
  const PropertiesTab({super.key});

  @override
  State<PropertiesTab> createState() => _PropertiesTabState();
}

class _PropertiesTabState extends State<PropertiesTab> {
  PropertiesTabViewModel viewModel = getIt();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    viewModel.getAllProperties();
  }
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<PropertiesTabViewModel , PropertiesTabState>(
      bloc: viewModel,
      builder: (context , state){
        if(state.propertiesAPI == BaseScreenState.loading){
          return AppConstants.loadingView();
        }
        else if(state.propertiesAPI == BaseScreenState.success){
          return buildPropertiesList(state.properties!);
        }
        else{
          return AppError(error: state.errorMessage);
        }
      },
    );
  }

  Widget buildPropertiesList(List<GetPropertiesResponse> properties) {
    return ListView.builder(
      itemBuilder: (context , index){
        return InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => const PropertiesDetailsScreen()));
            },
            child: PropertyCard(property: properties[index])
        );
      },
      itemCount: properties.length,
      padding: EdgeInsets.all(8),
      scrollDirection: Axis.vertical,

    );
  }

}
