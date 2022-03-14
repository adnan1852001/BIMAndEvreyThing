// ignore: file_names
// ignore: file_names

import 'package:flutter/material.dart';

class Home_secreen extends StatelessWidget {
  // ignore: non_constant_identifier_names
  List<int> x = [
    1,
    2,
    4,
    5,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        centerTitle: true,
        foregroundColor: Colors.black,
       elevation: 5.0,
        backgroundColor:Colors.cyanAccent,
        leading: IconButton(
          icon: Icon(
            Icons.menu,
          ),
          onPressed: casea,
        ),
        title: Text("First App"),
        actions: [
          IconButton(
            onPressed: (){
              print('hello');
            },
            icon:      Icon(
                Icons.notifications_active_sharp
            ),
          ),

        ],
      ),
        body:  Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(100.0),
              child: Container(
                decoration:BoxDecoration(
                  borderRadius:BorderRadius.circular(50.0),

                ) ,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image(
                        image:NetworkImage(
                            'https://storyy.cc/wp-content/uploads/2019/08/13013.jpg '
                        ),
                      width: 200.0,
                      height:200.0,
                      fit:BoxFit.cover

                    ),
                    Container(
                      width:200.0,
                      color: Colors.black.withOpacity(0.4),
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                      ),
                      child: Text(
                          'back',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 20.0,
                          color:Colors.white,
                        ),

                      ),
                    ),

                  ],
                ),
              ),
            )
          ],


        ),



      // body: Container(
        //   width: double.infinity,
        //   child: SingleChildScrollView(
        //  //   scrollDirection:Axis.horizontal ,      //اذا بدك تعمل row scroll اضف الكود هاد + roow بدلcolum
        //     child: Column(
        //       crossAxisAlignment:CrossAxisAlignment.center,
        //       children: [
        //         Text(
        //           'First',
        //           style:TextStyle(
        //             fontSize:20.0,
        //           ) ,
        //         ),
        //         Text(
        //           'Soconde',
        //           style:TextStyle(
        //             fontSize:20.0,
        //           ) ,
        //         ),
        //         Text(
        //           'third',
        //           style:TextStyle(
        //             fontSize:20.0,
        //           ) ,
        //         ),
        //         Text(
        //           'First',
        //           style:TextStyle(
        //             fontSize:20.0,
        //           ) ,
        //         ),
        //         Text(
        //           'Soconde',
        //           style:TextStyle(
        //             fontSize:20.0,
        //           ) ,
        //         ),
        //         Text(
        //           'third',
        //           style:TextStyle(
        //             fontSize:20.0,
        //           ) ,
        //         ),
        //         Text(
        //           'First',
        //           style:TextStyle(
        //             fontSize:20.0,
        //           ) ,
        //         ),
        //         Text(
        //           'Soconde',
        //           style:TextStyle(
        //             fontSize:20.0,
        //           ) ,
        //         ),
        //         Text(
        //           'third',
        //           style:TextStyle(
        //             fontSize:20.0,
        //           ) ,
        //         ),
        //         Text(
        //           'First',
        //           style:TextStyle(
        //             fontSize:20.0,
        //           ) ,
        //         ),
        //         Text(
        //           'Soconde',
        //           style:TextStyle(
        //             fontSize:20.0,
        //           ) ,
        //         ),
        //         Text(
        //           'third',
        //           style:TextStyle(
        //             fontSize:20.0,
        //           ) ,
        //         ),
        //         Text(
        //           'First',
        //           style:TextStyle(
        //             fontSize:20.0,
        //           ) ,
        //         ),
        //         Text(
        //           'Soconde',
        //           style:TextStyle(
        //             fontSize:20.0,
        //           ) ,
        //         ),
        //         Text(
        //           'third',
        //           style:TextStyle(
        //             fontSize:20.0,
        //           ) ,
        //         ),
        //         Text(
        //           'First',
        //           style:TextStyle(
        //             fontSize:20.0,
        //           ) ,
        //         ),
        //         Text(
        //           'Soconde',
        //           style:TextStyle(
        //             fontSize:20.0,
        //           ) ,
        //         ),
        //         Text(
        //           'third',
        //           style:TextStyle(
        //             fontSize:20.0,
        //           ) ,
        //         ),
        //         Text(
        //           'First',
        //           style:TextStyle(
        //             fontSize:20.0,
        //           ) ,
        //         ),
        //         Text(
        //           'Soconde',
        //           style:TextStyle(
        //             fontSize:20.0,
        //           ) ,
        //         ),
        //         Text(
        //           'third',
        //           style:TextStyle(
        //             fontSize:20.0,
        //           ) ,
        //         ),
        //         Text(
        //           'First',
        //           style:TextStyle(
        //             fontSize:20.0,
        //           ) ,
        //         ),
        //         Text(
        //           'Soconde',
        //           style:TextStyle(
        //             fontSize:20.0,
        //           ) ,
        //         ),
        //         Text(
        //           'third',
        //           style:TextStyle(
        //             fontSize:20.0,
        //           ) ,
        //         ),
        //         Text(
        //           'First',
        //           style:TextStyle(
        //             fontSize:20.0,
        //           ) ,
        //         ),
        //         Text(
        //           'Soconde',
        //           style:TextStyle(
        //             fontSize:20.0,
        //           ) ,
        //         ),
        //         Text(
        //           'third',
        //           style:TextStyle(
        //             fontSize:20.0,
        //           ) ,
        //         ),
        //         Text(
        //           'First',
        //           style:TextStyle(
        //             fontSize:20.0,
        //           ) ,
        //         ),
        //         Text(
        //           'Soconde',
        //           style:TextStyle(
        //             fontSize:20.0,
        //           ) ,
        //         ),
        //         Text(
        //           'third',
        //           style:TextStyle(
        //             fontSize:20.0,
        //           ) ,
        //         ),
        //         Text(
        //           'First',
        //           style:TextStyle(
        //             fontSize:20.0,
        //           ) ,
        //         ),
        //         Text(
        //           'Soconde',
        //           style:TextStyle(
        //             fontSize:20.0,
        //           ) ,
        //         ),
        //         Text(
        //           'third',
        //           style:TextStyle(
        //             fontSize:20.0,
        //           ) ,
        //         ),
        //         Text(
        //           'First',
        //           style:TextStyle(
        //             fontSize:20.0,
        //           ) ,
        //         ),
        //         Text(
        //           'Soconde',
        //           style:TextStyle(
        //             fontSize:20.0,
        //           ) ,
        //         ),
        //         Text(
        //           'third',
        //           style:TextStyle(
        //             fontSize:20.0,
        //           ) ,
        //         ),
        //         Text(
        //           'First',
        //           style:TextStyle(
        //             fontSize:20.0,
        //           ) ,
        //         ),
        //         Text(
        //           'Soconde',
        //           style:TextStyle(
        //             fontSize:20.0,
        //           ) ,
        //         ),
        //         Text(
        //           'third',
        //           style:TextStyle(
        //             fontSize:20.0,
        //           ) ,
        //         ),
        //         Text(
        //           'First',
        //           style:TextStyle(
        //             fontSize:20.0,
        //           ) ,
        //         ),
        //         Text(
        //           'Soconde',
        //           style:TextStyle(
        //             fontSize:20.0,
        //           ) ,
        //         ),
        //         Text(
        //           'third',
        //           style:TextStyle(
        //             fontSize:20.0,
        //           ) ,
        //         ),
        //         Text(
        //           'First',
        //           style:TextStyle(
        //             fontSize:20.0,
        //           ) ,
        //         ),
        //         Text(
        //           'Soconde',
        //           style:TextStyle(
        //             fontSize:20.0,
        //           ) ,
        //         ),
        //         Text(
        //           'third',
        //           style:TextStyle(
        //             fontSize:20.0,
        //           ) ,
        //         ),
        //         Text(
        //           'First',
        //           style:TextStyle(
        //             fontSize:20.0,
        //           ) ,
        //         ),
        //         Text(
        //           'Soconde',
        //           style:TextStyle(
        //             fontSize:20.0,
        //           ) ,
        //         ),
        //         Text(
        //           'third',
        //           style:TextStyle(
        //             fontSize:20.0,
        //           ) ,
        //         ),
        //         Text(
        //           'First',
        //           style:TextStyle(
        //             fontSize:20.0,
        //           ) ,
        //         ),
        //         Text(
        //           'Soconde',
        //           style:TextStyle(
        //             fontSize:20.0,
        //           ) ,
        //         ),
        //         Text(
        //           'third',
        //           style:TextStyle(
        //             fontSize:20.0,
        //           ) ,
        //         ),
        //         Text(
        //           'First',
        //           style:TextStyle(
        //             fontSize:20.0,
        //           ) ,
        //         ),
        //         Text(
        //           'Soconde',
        //           style:TextStyle(
        //             fontSize:20.0,
        //           ) ,
        //         ),
        //         Text(
        //           'third',
        //           style:TextStyle(
        //             fontSize:20.0,
        //           ) ,
        //         ),
        //         Text(
        //           'First',
        //           style:TextStyle(
        //             fontSize:20.0,
        //           ) ,
        //         ),
        //         Text(
        //           'Soconde',
        //           style:TextStyle(
        //             fontSize:20.0,
        //           ) ,
        //         ),
        //         Text(
        //           'third',
        //           style:TextStyle(
        //             fontSize:20.0,
        //           ) ,
        //         ),
        //
        //
        //
        //       ],
        //
        //
        //     ),
        //   ),
        //
        // ),















        //  body: Container(
        //       color: Colors.amberAccent,
        //     //  height: double.infinity ,
        //    child: Row(
        //      mainAxisSize: MainAxisSize.max ,
        //        mainAxisAlignment: MainAxisAlignment.end,
        //        crossAxisAlignment: CrossAxisAlignment.end,
        //        children:
        //        [
        //          Expanded(
        //            flex: 0,
        //            child: Container(
        //              color: Colors.black,
        //              child: Text(
        //                'First',
        //               style: TextStyle(
        //                 fontSize: 20,
        //                 color:Colors.white,
        //
        //               ),
        //              ),
        //            ),
        //          ),
        //          // Expanded(
        //          //   child: Container(
        //          //     color: Colors.cyanAccent,
        //          //     child: Text(
        //          //       'socond',
        //          //       style: TextStyle(
        //          //         fontSize: 20,
        //          //           color:Colors.white,
        //          //
        //          //       ),
        //          //     ),
        //          //   ),
        //          // ),
        //          // Expanded(
        //          //   child: Container(
        //          //     color: Colors.deepOrange,
        //          //     child: Text(
        //          //       'Therd',
        //          //       style: TextStyle(
        //          //         fontSize: 20,
        //          //           color:Colors.white,
        //          //       ),
        //          //     ),
        //          //   ),
        //          // ),
        //
        //        ],
        //
        //
        //
        //   ),
        // ),
    );
  }
}
void casea(){
  print ("ooopss");
}
