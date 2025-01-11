import 'package:catalyst/States/home_screen_state.dart';
import 'package:catalyst/Utilities/app_constants.dart';
import 'package:catalyst/View%20Model/home_screen_view_model.dart';
import 'package:catalyst/di.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  static String routeName = "HomePage";
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  HomeScreenViewModel viewModel = getIt();
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeScreenViewModel , HomeScreenState>(
      bloc: viewModel,
      builder: (context , state){
        return Scaffold(
          appBar: AppBar(
            backgroundColor: AppConstants.barsColor,
            centerTitle: true,
            title: Text("Catalyst" , style: AppConstants.appBarText,),
          ),
          body: state.tabs[state.currentTabIndex],
          bottomNavigationBar: Theme(
            data: Theme.of(context)
                .copyWith(canvasColor: AppConstants.barsColor),
            child: BottomNavigationBar(

              backgroundColor: AppConstants.barsColor,
              currentIndex: state.currentTabIndex ,
              selectedLabelStyle: AppConstants.bottomNavigationBarLabelTextStyle,
              unselectedLabelStyle: AppConstants.bottomNavigationBarLabelTextStyle.copyWith(fontSize: 13 , fontWeight: FontWeight.w300 ),
              onTap: (index) {
                viewModel.setNewTab(index);
              },
              items: [
                buildBottomNavigationBarItem(Icons.person , "Users" , state.currentTabIndex == 0),
                buildBottomNavigationBarItem(Icons.dataset_rounded , "Properties" , state.currentTabIndex == 1),
                buildBottomNavigationBarItem(Icons.library_books, "Bookings" , state.currentTabIndex == 2),
              ],
            ),
          ),
        );
      },
    );
  }

  BottomNavigationBarItem buildBottomNavigationBarItem(IconData icon ,String label, bool selected) {
    return BottomNavigationBarItem(
      icon: selected ? CircleAvatar(
        radius: 20,
        backgroundColor: Colors.white,
        child: Icon(icon , size: 30,),
      ) : Icon(icon , size: 30,),
      label: label,

    );
  }
}
