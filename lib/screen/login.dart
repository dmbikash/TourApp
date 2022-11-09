import 'package:flutter/material.dart';

import '../widgets/custom_normal_text_form.dart';
import '../widgets/rounded_rectangle_button.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double w = MediaQuery.of(context).size.width;
    double h = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          color: Colors.white,
          height: h,
          width: w,

          child: Column(
            children: [
              Container(
                height: h*.40,
                width: w,
                //color: Colors.green,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/logo/logo.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              CustomNormalTextForm(hintName: "Email",),
              CustomNormalTextForm(hintName: "Password",),
              Row(
                children: [SizedBox(width: w*.65,),
                  TextButton(
                      onPressed:(){} ,
                      child:Text('Forgot Password',
                      style: TextStyle(color: Colors.green),))],
              ),

          SizedBox(
            width: w*.90,
            child: ElevatedButton(
              onPressed: (){
                Navigator.pushNamed(context, 'Home');
              },
              child: Text("Submit"),
              style: ButtonStyle(
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                        side: BorderSide(color: Colors.green),

                      )
                  )
              ),
            ),
          ),
              SizedBox(height: 100,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't hvae an account? ",
                  style: TextStyle(
                    fontSize: 18
                  ),),
                  TextButton(onPressed: (){},
                    child: Text("Signup",
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),),)
                ],
              ),

            ],
          ),
        ),
      ),
    );
  }
}
