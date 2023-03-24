import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthcare/screens/login_screen.dart';
class SignUp_Screen extends StatefulWidget {
  const SignUp_Screen({super.key});

  @override
  State<SignUp_Screen> createState() => _SignUp_ScreenState();
}

class _SignUp_ScreenState extends State<SignUp_Screen> {
  @override
  Widget build(BuildContext context) {
    bool passToggle = true;
    return Material(
      color: Colors.white,
      child: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          children: [
            //?IMAGE
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Image.asset("asset/images/doctors.png"),
            ),
            //!textfield
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.all(12),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Full Name"),
                  prefixIcon: Icon(Icons.person),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(12),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("Email Address"),
                  prefixIcon: Icon(Icons.email),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(12),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  label: Text("PhoneNumber"),
                  prefixIcon: Icon(Icons.phone),
                ),
              ),
            ),
            //!password
            Padding(
              padding: const EdgeInsets.all(12),
              child: TextField(
                obscureText: passToggle ? true : false,
                decoration: InputDecoration(
                    border: const OutlineInputBorder(),
                    label: const Text("Email Password"),
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: InkWell(
                      onTap: () {
                        if (passToggle == true) {
                          passToggle = false;
                        } else {
                          passToggle = true;
                        }
                        setState(() {});
                      },
                      child: passToggle
                          ? Icon(CupertinoIcons.eye_fill)
                          : Icon(CupertinoIcons.eye_slash_fill),
                    )),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: SizedBox(
                width: double.infinity,
                child: Material(
                  color: Color(0xFF7165d6),
                  borderRadius: BorderRadius.circular(10),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => LoginScreen(),
                          ));
                    },
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                      child: Center(
                        child: Text(
                          "Create Account",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
           
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Already have account?",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.black54,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ));
                  },
                  child: const Text(
                    "Log  In ",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff7165d6),
                    ),
                  ),
                ),
              ],
            ),
          ],
        )),
      ),
    );
  }
}