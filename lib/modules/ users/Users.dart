import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:testoop/models/%20user/user_modle.dart';

class Users extends StatelessWidget {
  List<UsersModle> user=[
    UsersModle(
      id: 1,
      name: 'Adnan khella',
      phone: '0599858802',

    ),
    UsersModle(
      id: 2,
      name: 'Ahmead khella',
      phone: '0599254802',

    ),
    UsersModle(
      id: 3,
      name: 'same al Masry',
      phone: '0599859902',

    ),
    UsersModle(
      id: 4,
      name: 'Adnan khaliel',
      phone: '0529858602',

    ),
    UsersModle(
      id: 1,
      name: 'Adnan khella',
      phone: '0599858802',

    ),
    UsersModle(
      id: 5,
      name: 'Adnan khella',
      phone: '0599858802',

    ),
    UsersModle(
      id: 1,
      name: 'Adnan khella',
      phone: '0599858802',

    ),
    UsersModle(
      id: 1,
      name: 'Adnan khella',
      phone: '0599858802',

    ),
    UsersModle(
      id: 1,
      name: 'Adnan khella',
      phone: '0599858802',

    ),

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Users',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView.separated(
          itemBuilder: (context,index)=>buildUsersItem(user[index]),
        separatorBuilder: (context,index)=>Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            color: Colors.black26,
            width: double.infinity,
            height: 1.0,
          ),
        ),
        itemCount: user.length,
      ),
    );
  }
}
Widget buildUsersItem(UsersModle users) =>  Padding(
  padding: const EdgeInsets.all(10.0),
  child: Column(
    children: [
      Row(
        children: [
          CircleAvatar(
            backgroundColor: Colors.blue,
            radius: 30,
            child: Text(
              '${users.id}',
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
                fontSize: 28,
              ),
            ),

          ),
          SizedBox(
            width: 20.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${users.name}',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Text(
                  '${users.phone}',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black54,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            width: 20.0,
          ),
         Expanded(
           child: IconButton(
             alignment: Alignment.centerRight,
               onPressed:(){
                 print("");
               } ,
               icon:Icon(
                 Icons.delete_forever_rounded,
                 color: Colors.red,
               ),
           ),
         ),
        ],
      ),

    ],
  ),
);