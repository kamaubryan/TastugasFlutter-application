import 'package:coffee_card/landing.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Homepage extends StatelessWidget {
  const Homepage({super.key});


  @override
  Widget build(BuildContext context) {
    var args = Get.arguments;
    return  Scaffold(
      body: SizedBox(width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,

          children: [
            Image.asset("./assets/title.png"),
            SizedBox(height: 20,),
            Image.asset("./assets/tastugaspic.png"),
            SizedBox(height: 30,),
             Text("${args}", style: TextStyle(color: Colors.greenAccent, fontSize: 35, fontWeight: FontWeight.bold),),
            SizedBox(height: 20,),
            SizedBox(width: 300,
                child: FloatingActionButton(heroTag:"buttonA",onPressed: (){
                },
                  child: Text('hello', style: TextStyle(color: Colors.white),), backgroundColor: Colors.black,)

            ) ,
            SizedBox(width: 300,
                child: FloatingActionButton(heroTag:"buttonB",onPressed: (){
                  Get.to( const Tastugas());
                  print("tapped");

                },
                  child: Text('Next'), backgroundColor: Colors.white,),



            )




          ],
        ),
      ),


    );
  }
}
