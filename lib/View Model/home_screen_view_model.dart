import 'package:catalyst/States/home_screen_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class HomeScreenViewModel extends Cubit<HomeScreenState>{
  HomeScreenViewModel() : super(HomeScreenState(currentTabIndex: 0));

  void setNewTab(int newTabIndex){
    emit(state.copyWith(currentTabIndex: newTabIndex));
  }
}