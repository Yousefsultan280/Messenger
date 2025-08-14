import 'dart:ffi';
import 'package:flutter/rendering.dart';

import 'images.dart';
import 'package:courseflutter/counter.dart';
import 'package:flutter/material.dart';

void  main(){
  runApp(MyApp());
}

class Messanger extends StatefulWidget {
  const Messanger({super.key});

  @override
  State<Messanger> createState() => _MessangerState(

  );
}

class _MessangerState extends State<Messanger> {
  int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    List<ChatModel> mychats=JsonList.map((e)=>ChatModel.FromJson(e)).toList();

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
            backgroundColor: Colors.black,
            leading: Icon(Icons.menu,size: 30,color: Colors.white),
            title: Text("Chats",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white),),
            actions: [Icon(Icons.camera_alt_outlined,size: 30,color: Colors.white,),
              SizedBox(width: 10),
              Icon(Icons.edit,size: 30,color: Colors.white),
              SizedBox(width: 10,)
            ],
          ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.only(left: 10),
                decoration: BoxDecoration(color: Colors.grey,borderRadius: BorderRadius.circular(20)),
                height: 60,
                width: double.infinity,
                child:
                  Row(
                    children: [
                      Icon(Icons.search_rounded,size: 30,color: Colors.white60),
                      SizedBox(width: 10,),
                      Text("Search",style: TextStyle(fontSize: 20,color: Colors.white60),)
                    ],
                  )
              ),  // search
              Container(
                height: 150,
                child:ListView.separated(
                  scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemBuilder: (context,index)=>Statues(
                        name:mychats[index].name!,
                        img: mychats[index].image!,


                    ),
                    separatorBuilder: (_, __) => SizedBox(width: 0), itemCount: mychats.length)
              ), //statues
              Container(
                child: Column(
                  children: [
                    ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      itemCount: mychats.length,
                  itemBuilder: (context,index)=>Chats_model(
                      name:mychats[index].name!,
                      text:mychats[index]. text!,
                      img: mychats[index].image!,
                      time: mychats[index].time!

                  ),


                  separatorBuilder: (_, __)=>SizedBox(height: 15,),)
                  ],
                ),
              )// chats
            ],
          ),
        ),
       bottomNavigationBar: Container(
         child: BottomNavigationBar(
           backgroundColor: Colors.black,
             type: BottomNavigationBarType.fixed,
             selectedItemColor: Colors.blue,
             unselectedItemColor: Colors.grey,
           currentIndex: selectedIndex,
             onTap: (index){
             setState(() {
               selectedIndex=index;
             });
             },

             items: [
           BottomNavigationBarItem(icon: Icon(Icons.chat),label: "Chats"),
           BottomNavigationBarItem(icon: Icon(Icons.call),label: "Calls"),
           BottomNavigationBarItem(icon: Icon(Icons.people),label: "People"),
           BottomNavigationBarItem(icon: Icon(Icons.settings_rounded),label: "Setting"),

         ]),
       ),
          ),
    );
  }
  Widget Statues({required String img,required String name}){
    return Padding(
      padding: const EdgeInsets.only(top: 15,left: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(backgroundColor: Colors.blue,radius: 35,),
                  CircleAvatar(backgroundColor: Colors.white,radius: 30,),
                  CircleAvatar(backgroundImage: NetworkImage(img),radius: 27,),
                  Positioned(
                   bottom: 15,
                      right: 10,
                      child:
                      CircleAvatar(backgroundColor: Colors.green,radius: 5,))
                ],
              ),
              Text(name,style: TextStyle(color: Colors.white,fontSize: 20),)
            ],
          )

        ],
      ),
    );

  }
  Widget Chats_model({
    required String name,
    required String text,
    required String img,
    required String time,
}) {
    return Row(
      children: [
        Stack(
            alignment: Alignment.center,
            children: [
              CircleAvatar(backgroundColor: Colors.blue,radius: 35,),
              CircleAvatar(backgroundColor: Colors.white,radius: 30,backgroundImage: NetworkImage(img),),
              Positioned(
                  bottom: 7,
                  right: 1,
                  child: CircleAvatar(backgroundColor: Colors.green,radius: 7)),
            ]
        ),
        SizedBox(width: 15,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(name,style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold)),
            Text(text,style: TextStyle(color: Colors.white,fontSize: 15)),
          ],
        ),
        Spacer(),
        Text(time,style: TextStyle(color: Colors.white,fontSize: 15))
      ],
    );
  }
}
