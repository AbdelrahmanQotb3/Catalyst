import 'package:flutter/material.dart';

class AppError extends StatelessWidget {
  String error ;
  final Function? onRefreshClick;
  AppError({
    super.key,
    required this.error,
    this.onRefreshClick
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(error),
        ElevatedButton(onPressed: (){
          onRefreshClick?.call();
        }, child: Text("Refresh"))
      ],
    );
  }
}