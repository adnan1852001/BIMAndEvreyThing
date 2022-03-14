import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testoop/shared/component/componts.dart';
import 'package:testoop/shared/cubit/cubit.dart';
import 'package:testoop/shared/cubit/states.dart';

class DoneTasks extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit,AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        return Container(
          color: Colors.red,
        );
      },
    );
  }
}
