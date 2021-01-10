import 'package:SignIn_SignUp_app/Animation/FadeAnimation.dart';
import 'package:SignIn_SignUp_app/socail_icons.dart';
import 'package:flutter/material.dart';

import 'package:getwidget/getwidget.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.black
            // gradient: LinearGradient(
            //     begin: Alignment.topCenter,
            //     colors: [
            //       Color(0xFFF29849),
            //       Color(0xFFF2B749),
            //       Color(0xFFF2C849)
            //     ]
            // )
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 80,),
            Padding(
              padding: EdgeInsets.all(20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[

                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        FadeAnimation(1, Text("Sign Up", style: TextStyle(color: Colors.white, fontSize: 40),)),
                        SizedBox(height: 10,),
                        // FadeAnimation(1.3, Text("Welcome Back", style: TextStyle(color: Colors.white, fontSize: 18),)),
                      ])],
              ),
            ),

            SizedBox(height: 20),

            Expanded(

              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(topLeft: Radius.circular(20), topRight: Radius.circular(20))
                ),

                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.all(30),
                    child: Column(
                      children: <Widget>[

                        SizedBox(height: 20,),

                        FadeAnimation(1.4, Container(
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(25),
                              boxShadow: [BoxShadow(
                                  color: Color.fromRGBO(225, 95, 27, .3),

                                  blurRadius: 20,
                                  offset: Offset(0, 10)
                              )]
                          ),

                          child: Column(
                            children: <Widget>[

                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey[200]))
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "User Name",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none
                                  ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey[200]))
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Email ",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none
                                  ),
                                ),
                              ),

                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    border: Border(bottom: BorderSide(color: Colors.grey[200]))
                                ),
                                child: TextField(
                                  decoration: InputDecoration(
                                      hintText: "Password",
                                      hintStyle: TextStyle(color: Colors.grey),
                                      border: InputBorder.none
                                  ),
                                ),
                              ),

                            ],
                          ),
                        )),

                        SizedBox(height: 40),


                        FadeAnimation(1.6, Container(
                          height: 50,
                          width: 700,
                          // margin: EdgeInsets.symmetric(horizontal: 50),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.black
                          ),
                          child: Center(
                            child: Text("Sign Up", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),),
                          ),
                        )),


                        SizedBox(height: 20,),

                        FadeAnimation(1.7, Text("OR", style: TextStyle(color: Colors.black),)),

                        SizedBox(height: 20,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,

                          children: <Widget>[
                            SocalIcon(

                              iconSrc: "assets/icons/facebook.svg",
                              press: () {},
                            ),
                            SocalIcon(

                              iconSrc: "assets/icons/twitter.svg",
                              press: () {},
                            ),
                            SocalIcon(

                              iconSrc: "assets/icons/google-plus.svg",
                              press: () {},
                            ),


                          ],
                        )
                      ],


                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
