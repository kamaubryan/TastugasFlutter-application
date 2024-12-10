import 'package:coffee_card/homepage.dart';
import 'package:coffee_card/loginpage.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Tastugas extends StatelessWidget {
  const Tastugas({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SizedBox(width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            Image.asset("./assets/title.png"),
              SizedBox(height: 20,),
            Image.asset("./assets/tastugaspic.png"),
SizedBox(height: 30,),
const Text('Team Up For Success', style: TextStyle(color: Color(0xff000000), fontSize: 35, fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            const Text('Get ready to unleash your Potential and witness the \n power of teamwork as we embark on this \n Extraordinary Project',style: TextStyle(fontSize: 17, color: Colors.black), textAlign: TextAlign.center),
            SizedBox(height: 30,),
            SizedBox(width: 300,
              child: FloatingActionButton(onPressed: (){
                Get.to(LoginPage());
              },
                child: Text('Login'), backgroundColor: Colors.lightGreen,)

            ) ,
            SizedBox(width: 300,
              child: FloatingActionButton(onPressed: (){
                Get.off(const Homepage(),arguments: "from landing page");
                print("tapped");
              },
                child: Text('back'), backgroundColor: Colors.white,)

            )




          ],
        ),
      ),


    );
  }
}
