import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:healthcare/screens/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                  label: Text("Enter UserName"),
                  prefixIcon: Icon(Icons.person),
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
                    label: const Text("Enter UserName"),
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
                          "Log In",
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
            SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Don't have any account?",
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
                          builder: (context) => SignUp_Screen(),
                        ));
                  },
                  child: const Text(
                    "Create Account ",
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
