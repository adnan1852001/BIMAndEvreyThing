import 'package:flutter/cupertino.dart';

class ArchivedTasks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const  Center(
      child: Text(
       'Archived',
        style: TextStyle(
          fontSize: 50.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
