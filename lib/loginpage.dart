import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';


class LoginPage extends GetView {
  // const LoginPage({super.key});
  final _formKey = GlobalKey<FormBuilderState>();
  List numList=["first name","last name"];
  @override
  Widget build(BuildContext context) {
   return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(title:Text("Login to Your Account"),),
      body:  Padding(
        padding:  EdgeInsets.all(40.0),
        child: SingleChildScrollView(child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FormBuilder(key: _formKey,child: Column(
              children: [
                for(var i in numList)
                  FormBuilderTextField(name:" $i",),
                FloatingActionButton(onPressed: (){
                  if(_formKey.currentState!.saveAndValidate()){
                    print(_formKey.currentState!.value);
                  }
                })
              ]
            ),),
          ],
        )),
      ),
    );
  }
}
