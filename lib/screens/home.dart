import 'package:SignIn_SignUp_app/Animation/FadeAnimation.dart';
import 'package:SignIn_SignUp_app/screens/sign_in.dart';
import 'package:SignIn_SignUp_app/screens/sign_up.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(

        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.black,


        ),

        child: Column(

          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[

            SizedBox(height: 120),

            Text.rich(
                TextSpan(
                    text: 'Creative ',
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 35,
                        fontWeight: FontWeight.bold
                    ),
                    children: <InlineSpan>[
                      TextSpan(
                        text: ' Store ',
                        style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,color: Colors.white),
                      ),


                    ]
                )
            ),

            SizedBox(height: 200),


           



            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children:<Widget>[

                  Column(
                    children: [

                      FadeAnimation(1.6, Container(
                          height: 50,
                          width: 300,

                          // margin: EdgeInsets.symmetric(horizontal: 50),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.white
                          ),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(context,MaterialPageRoute(builder: (context) => SignUp()),);
                            },
                            child: Center(
                              child: Text("Sign Up", style: TextStyle(fontSize: 20,color: Colors.black, fontWeight: FontWeight.bold),),
                            ),
                          )
                      )),

                      SizedBox(height:40 ,),

                      FadeAnimation(1.6, Container(
                          height: 50,
                          width: 300,
                          // margin: EdgeInsets.symmetric(horizontal: 50),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.red
                          ),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(context,MaterialPageRoute(builder: (context) => SignIn()),);
                            },
                            child: Center(
                              child: Text("Sign In", style: TextStyle(fontSize: 20,color: Colors.white, fontWeight: FontWeight.bold),),
                            ),
                          )
                      )),

                    ],
                  )


                ]
            ),


          ],
        ),
      ),
    );
  }
}
