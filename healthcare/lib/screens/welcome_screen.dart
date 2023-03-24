import 'package:flutter/material.dart';
import 'package:healthcare/screens/login_screen.dart';
import 'package:healthcare/screens/navbar_root.dart';
import 'package:healthcare/screens/signup_screen.dart';
class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: 
    Material(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            SizedBox(height: 15,),
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(onPressed: (){
                  Navigator.push(
                         context,
                         MaterialPageRoute(
                           builder: (context) => NavBarRoots(),
                         ));
              },
               child:const  Text("SKIP", style:
                TextStyle(
                  color: Color(0xff7165d6),
                  fontSize: 20,
                  ),)),
            ),
            SizedBox(height: 50,),
            Padding(
              padding: EdgeInsets.all(20),
              child:Image.asset("asset/images/doctors.png"),
              ),

            SizedBox(height: 50,),

            const Text("Doctors Appointment ",
            style: TextStyle(color: Color(0xff7165d6),
            fontSize: 35,
            fontWeight: FontWeight.bold, letterSpacing: 1,wordSpacing: 2,
            ),
            ),
            SizedBox(height: 10,),

            const Text("Appoint Your Doctor ",
            style: TextStyle(color: Colors.black54,
            fontSize: 18,
            fontWeight: FontWeight.bold, letterSpacing: 1,wordSpacing: 2,
            ),
            ),

            SizedBox(height: 60,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Material(color: Color(0xFF7165d6),
                borderRadius: BorderRadius.circular(10),
                child: 
                InkWell(
                  onTap:(){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen(),));
                  },
                  child: 
                 const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15,horizontal: 40),
                    child: 
                    Text("Log In",
                    style: TextStyle(color: Colors.white, 
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    ),
                    ),
                  ),
                  ),
                ),
Material(color: Color(0xFF7165d6),
                borderRadius: BorderRadius.circular(10),
                child: 
                InkWell(
                  onTap:(){
                     Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SignUp_Screen(),
                        ));
                  },
                  child: 
                 const Padding(
                    padding: EdgeInsets.symmetric(vertical: 15,horizontal: 40),
                    child: 
                    Text("Sign Up",
                    style: TextStyle(color: Colors.white, 
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    ),
                    ),
                  ),
                  ),
                ),
              ],
            ),
          ]),

      ),

    ));
  }
}