import 'package:flutter/material.dart';
import 'package:login_signup_activity/home.dart';
import 'package:login_signup_activity/signin.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            child: SingleChildScrollView(
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 50.0, left: 10, right: 10),
          child: Text(
            textAlign: TextAlign.center,
            "Log In",
            style: TextStyle(
                fontFamily: "pop", fontSize: 30, fontWeight: FontWeight.w500),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Image.network(
            "https://www.certifiedfinancialguardian.com/images/blog-wp-login.png",
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextFormField(
            cursorColor: Colors.purple,
            decoration: InputDecoration(
              labelText: "Email",
              labelStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              hintText: "Email",
              prefixIcon: Icon(Icons.email),
              suffixIcon: Icon(Icons.remove_red_eye_sharp),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                    color: Color.fromARGB(255, 73, 40, 78), width: 2),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                    color: Color.fromARGB(255, 65, 48, 68), width: 2),
              ),
            ),
            keyboardType: TextInputType.text,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextFormField(
            cursorColor: Colors.purple,
            decoration: InputDecoration(
              labelText: "Password",
              labelStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
              hintText: "Password",
              prefixIcon: Icon(Icons.lock),
              suffixIcon: Icon(Icons.remove_red_eye_sharp),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                    color: Color.fromARGB(255, 73, 40, 78), width: 2),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: BorderSide(
                    color: Color.fromARGB(255, 65, 48, 68), width: 2),
              ),
            ),
            keyboardType: TextInputType.text,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 200.0),
          child: Text(
            "Forgot your password?",
            style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 14,
                fontFamily: "pop",
                color: Colors.deepPurple),
          ),
        ),
        Container(
          height: 26,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 55.0, right: 55, top: 20),
          child: InkWell(
            onTap: () async {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => home()));
            },
            child: Container(
              height: 60,
              width: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  color: Colors.deepPurple,
                  borderRadius: BorderRadius.circular(10)),
              child: Center(
                child: Text("Log In",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w600,
                        fontFamily: "pop",
                        color: Colors.white)),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 15.0),
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => signin()));
            },
            child: Text(
              "Create new account",
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.w600, fontFamily: "pop"),
            ),
          ),
        ),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50.0),
              child: Text(
                "Or continue with",
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    fontFamily: "light",
                    color: Colors.deepPurple),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset(
                    "assets/Images/facebook.png",
                    height: 50,
                    width: 50,
                  ),
                  Image.asset(
                    "assets/Images/instagram.png",
                    height: 50,
                    width: 50,
                  ),
                  Image.asset(
                    "assets/Images/whatsapp.png",
                    height: 50,
                    width: 50,
                  )
                ],
              ),
            )
          ],
        ),
      ]),
    )));
  }
}
