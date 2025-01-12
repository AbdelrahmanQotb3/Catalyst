import 'package:catalyst/Base/enums/base_screen_state.dart';
import 'package:catalyst/Model/Data/Properties/GetSpecificPropertyResponse.dart';
import 'package:catalyst/States/property_details_state.dart';
import 'package:catalyst/Utilities/app_constants.dart';
import 'package:catalyst/Utilities/app_error.dart';
import 'package:catalyst/View%20Model/property_details_view_model.dart';
import 'package:catalyst/di.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PropertiesDetailsScreen extends StatefulWidget {
  static String routeName = "PropertiesDetailsScreen";

  const PropertiesDetailsScreen({super.key});

  @override
  State<PropertiesDetailsScreen> createState() =>
      _PropertiesDetailsScreenState();
}

class _PropertiesDetailsScreenState extends State<PropertiesDetailsScreen> {
  PropertyDetailsViewModel viewModel = getIt();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    viewModel.getSpecificProperty(44);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppConstants.barsColor,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            )),
        title: Text(
          "Catalyst",
          style: AppConstants.appBarText,
        ),
      ),
      body: BlocBuilder<PropertyDetailsViewModel, PropertyDetailsState>(
        bloc: viewModel,
        builder: (context, state) {
          if (state.propertyAPI == BaseScreenState.loading) {
            return AppConstants.loadingView();
          } else if (state.propertyAPI == BaseScreenState.success) {
            return buildPropertyDetails(state.property!);
          } else {
            return AppError(error: state.errorMessage);
          }
        },
      ),
    );
  }

  Widget buildPropertyDetails(GetSpecificPropertyResponse property) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            property.name,
            style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: 29,
                vertical: MediaQuery.of(context).size.height * 0.07),
            padding: EdgeInsets.all(12),
            height: MediaQuery.of(context).size.height * 0.6,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.deepOrangeAccent),
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        property.location,
                        style: TextStyle(fontWeight: FontWeight.w400),
                      ),
                      SizedBox(height: 10),
                      Text(
                        "Price : \$${property.price}",
                        style:
                            TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text(
                        property.description,

                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Property ID : ${property.id}",
                        style:
                            TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Created At : ${property.createdAt}",
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("Created by User : ${property.userId}",
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold))
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
