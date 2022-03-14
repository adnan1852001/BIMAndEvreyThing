import 'package:flutter/material.dart';

class Massenger_secreen extends StatelessWidget {
  const Massenger_secreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        titleSpacing: 10.0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20.0,
              backgroundImage: NetworkImage('https://hobe.cc/wp-content/uploads/2018/06/3497-7.jpg') ,
            ),
            SizedBox(
              width: 15,
            ),
            Text(
                'Chats',
              style: TextStyle(
                color: Colors.black,

              ),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: (){},
              icon: CircleAvatar(
                backgroundColor: Colors.black54,
                child: Icon(
                  Icons.camera_alt_outlined,
                  color: Colors.white,
                ),
              ),
          ),
          IconButton(
            onPressed: (){},
            icon: CircleAvatar(
              backgroundColor: Colors.black54,
              child: Icon(
                Icons.edit_outlined,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(0.0),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 5.0,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(0.5),
                    hintText: 'Search',
                    border: OutlineInputBorder(

                      borderRadius: BorderRadius.circular(40),
                      gapPadding: 0,
                    ),
                    prefixIcon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    suffixIcon: IconButton(
                      onPressed: (){print("");},
                      icon: Container(
                        color: Colors.black26,
                        child: Text(
                          'SMS',
                          style: TextStyle(
                            color: Colors.white,
                          ),

                        ),
                      ),

                    ),


                    ),

                  ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 115,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                    itemBuilder: (context,index)=> bulidStoryItem(),
                  separatorBuilder: (context,index)=> SizedBox(
                    width: 10.0,
                  ),
                  itemCount: 40,

                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                   shrinkWrap: true,
                    itemBuilder: (context,index)=>bulidChatItem(),
                    separatorBuilder: (context,index)=>SizedBox(
                      height: 10.0,
                    ),
                    scrollDirection: Axis.vertical,
                    itemCount: 40,

                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
Widget bulidChatItem()=> Column(
  children:
  [
    Row(
      children: [
        CircleAvatar(
          radius: 35,
          backgroundImage: NetworkImage(
            'https://lyricss.cc/wp-content/uploads/2018/06/6045.jpg',

          ),
        ),
        SizedBox(
          width: 10,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Adnan khella',
                style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                child: Row(
                  children: [
                    Expanded(
                      child: Text(
                        'hello adnan I Need the hwNeed the hw hello adnan I Need the hw  ',
                        maxLines:1,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: CircleAvatar(
                        radius: 4,
                        backgroundColor: Colors.blue[1000],
                      ),
                    ),
                    Text(
                        '2:00 pm'
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  ],
);
Widget bulidStoryItem()=>Row(
  children: [
    Container(
      width: 70.0,
      child: Column(
        children: [
          Stack(

            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                radius: 35,
                backgroundImage: NetworkImage(
                  'https://lyricss.cc/wp-content/uploads/2018/06/6045.jpg',

                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                  end:3,
                  bottom:3 ,
                ),
                child: CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 8.5,


                ),

              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(
                  end:3,
                  bottom:3 ,
                ),
                child: CircleAvatar(
                  backgroundColor: Colors.blue[1000],
                  radius: 8,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 10,
            ),
            child: Text(
              'Adnan khella sulima fffff',
              maxLines: 2,
              overflow:TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    ),

  ],
);