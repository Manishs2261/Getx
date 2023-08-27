import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getxuse/src/home/home_one.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("getx"),),

      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Get.snackbar("Error","Welcome to app");
        },
      ),

      body: Column(
        children: [


          // getx dilog box
          Card(
            child: ListTile(
              
              title: Text("Getx dialog Alert"),
              subtitle: Text("Gets "),
              onTap: (){
                Get.defaultDialog(
                  title: "Delete Chat",
                  middleText: "Are you sour delete text",
                  contentPadding: EdgeInsets.all(10),
                  titlePadding: EdgeInsets.all(10),
                  confirm: TextButton(onPressed: (){
                    Navigator.pop(context);
                  }, child: Text("yes")),
                  cancel: TextButton(onPressed: (){
                    Get.back();
                  }, child: Text("No")),
                  content: Column(
                    children: [
                      Text("data"),
                      Text("data"),
                      Text("data"),
                      Text("data"),
                    ],
                  )
                );

              },
            ),
          ),

          // get bottom sheete
          Card(
            child: ListTile(

              title: Text("Getx Bottom sheet"),
              subtitle: Text("Gets "),
              onTap: (){

            Get.bottomSheet(

              Container(
                color: Colors.white,
                child: Column(
                  children: [
                    ListTile(
                      leading: Icon(Icons.light_mode),
                      title: Text("light theme"),
                      onTap: (){
                        Get.changeTheme(ThemeData.light());
                      },
                    ),
                    ListTile(
                      leading: Icon(Icons.dark_mode),
                      title: Text("dark theme"),
                      onTap: (){
                        Get.changeTheme(ThemeData.dark());
                      },
                    ),

                  ],
                ),
              )

            );

              },
            ),
          ),

          //Navigation Button

          TextButton(onPressed: (){
            Get.to(HomeOneScreen());
          }, child: Text("Navigation button"))
        ],
      ),
    );
  }
}
