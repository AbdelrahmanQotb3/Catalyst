import 'package:catalyst/UI/Screens/Home/Tabs/Bookings%20Tab/bookings_tab.dart';
import 'package:catalyst/UI/Screens/Home/Tabs/Properties%20Tab/properties_tab.dart';
import 'package:catalyst/UI/Screens/Home/Tabs/Users%20Tab/users_tab.dart';
import 'package:flutter/cupertino.dart';

class HomeScreenState {
  int currentTabIndex;
  static const List<Widget> defaultTabs = [
    UsersTab(),
    PropertiesTab(),
    BookingsTab()
  ];
  List<Widget> tabs;

  HomeScreenState({this.currentTabIndex = 0, this.tabs = defaultTabs});

  HomeScreenState copyWith({
    int? currentTabIndex,
    List<Widget>? tabs,
  }) {
    return HomeScreenState(
      currentTabIndex: currentTabIndex ?? this.currentTabIndex,
      tabs: tabs ?? this.tabs,
    );
  }
}
