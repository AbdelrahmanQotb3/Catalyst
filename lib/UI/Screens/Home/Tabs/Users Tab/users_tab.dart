import 'package:catalyst/Base/enums/base_screen_state.dart';
import 'package:catalyst/Model/Data/Users/GetUsersResponse.dart';
import 'package:catalyst/States/users_tab_state.dart';
import 'package:catalyst/Utilities/app_constants.dart';
import 'package:catalyst/Utilities/app_error.dart';
import 'package:catalyst/View%20Model/users_tab_view_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../di.dart';

class UsersTab extends StatefulWidget {
  const UsersTab({super.key});

  @override
  State<UsersTab> createState() => _UsersTabState();
}

class _UsersTabState extends State<UsersTab> {
  UsersTabViewModel viewModel = getIt();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    viewModel.getAllUsers();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<UsersTabViewModel, UsersTabState>(
      bloc: viewModel,
      builder: (context, state) {
        if (state.usersApi == BaseScreenState.success) {
          return buildUsers(state.users!);
        } else if (state.usersApi == BaseScreenState.loading) {
          return AppConstants.loadingView();
        } else {
          return AppError(error: state.errorMessage);
        }
      },
    );
  }

  Widget buildUsers(List<GetUsersResponse> users) {
    return ListView.builder(
      padding: const EdgeInsets.all(15),
      itemCount: users.length,
      itemBuilder: (context, index) {
        return userItem(user: users[index]);
      },
    );
  }

  Widget userItem({required GetUsersResponse user}) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.deepOrangeAccent,
        borderRadius: BorderRadius.circular(12),
      ),
      height: MediaQuery.of(context).size.height * 0.2,
      alignment: Alignment.center,
      child: Row(
        children: [
          ClipOval(
            child: Image.network(
              user.profileImage!,
              fit: BoxFit.fill,
              height: 110,
              width: 110,
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Column(
            children: [
              Flexible(
                  child: Text(
                user.name!,
                style: AppConstants.userName,
                overflow: TextOverflow.ellipsis,
              )),
              Text(user.role! , style: AppConstants.userName.copyWith(fontSize: 17),),
              Text(user.phone! , style: AppConstants.userName.copyWith(fontSize: 17),),
              Text("${user.id}" , style: AppConstants.userName.copyWith(fontSize: 17),)
            ],
          ),

        ],
      ),
    );
  }
}
