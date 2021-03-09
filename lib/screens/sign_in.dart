import 'package:fertilizer_management/authentication/authentication_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  bool isShowPassword = false;
  void _changeObscureText() {
    setState(() {
      isShowPassword = !isShowPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    final windowSize = MediaQuery.of(context).size;
    final windowWidth = windowSize.width * 0.9;
    final windowHeight = windowSize.height;

    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: Color(0xFFF3F8FE),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            width: windowWidth,
            height: windowHeight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 200,
                  height: 200,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(100),
                    child: Container(
                      color: Colors.black12,
                      child: Icon(
                        Icons.person,
                        size: 150,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: windowWidth,
                  height: windowHeight * 0.03,
                ),
                TextField(
                  controller: emailController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.black26,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    hintText: "Username",
                    prefixIcon: Padding(
                      padding: new EdgeInsets.all(10),
                      child: Icon(Icons.person),
                    ),
                  ),
                ),
                SizedBox(
                  width: windowWidth,
                  height: windowHeight * 0.03,
                ),
                TextField(
                  controller: passwordController,
                  enableSuggestions: false,
                  autocorrect: false,
                  obscureText: !isShowPassword,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.black26,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                    ),
                    hintText: "Password",
                    prefixIcon: Padding(
                      padding: new EdgeInsets.all(10),
                      child: Icon(Icons.lock),
                    ),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        _changeObscureText();
                      },
                      child: Icon(isShowPassword == false
                          ? Icons.visibility
                          : Icons.visibility_off),
                    ),
                  ),
                ),
                SizedBox(
                  width: windowWidth,
                  height: windowHeight * 0.03,
                ),
                FlatButton(
                  onPressed: () {
                    context.read<AuthenticationService>().signIn(
                        email: emailController.text.trim(),
                        password: passwordController.text.trim());
                  },
                  minWidth: windowWidth,
                  padding:
                      new EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                  color: Colors.black,
                  textColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(40),
                    side: BorderSide(
                      width: 0,
                      style: BorderStyle.none,
                    ),
                  ),
                  child: Text(
                    "Login",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
