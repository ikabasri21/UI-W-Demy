import 'package:flutter/material.dart';
import 'package:wdemy4/Screens/components/body.dart';
import 'package:wdemy4/Screens/login/login_screen.dart';

class RegisterScreen extends StatelessWidget {
  bool isHiddenPassword =true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.topCenter,
        padding: const EdgeInsets.only(top: 30),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              child:const Image(
                height: 120,
                width: 120,
                image: AssetImage("assets/icons/wdemmy.png",),
              ),
            ),
            Container(
              alignment: Alignment.center,
                padding: const EdgeInsets.only(top: 10, bottom: 15),
                child: const Text(
                  'Sign up for an account',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w500,
                    fontSize: 22,),
                ),
            ),
            ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                primary: Colors.white,
                onPrimary: Colors.black,
                minimumSize: Size(250, 50)
              ),
              icon: const Image(image: AssetImage('assets/icons/search.png',),
                height: 30,
                width: 30,),
              label: Text("Sign Up with Google",
                  style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700)),
              onPressed: () {},
            ),
            Container(
              height: 10,
            ),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.black,
                  minimumSize: Size(250, 50),
                  padding: EdgeInsets.all(10)
              ),
              icon: const Image(image: AssetImage('assets/icons/apple-black-logo.png',),
                height: 30,
                width: 30,),
              label: Text("Sign Up with Apple",
                  style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700)),
              onPressed: () {},
            ),
            Container(
              height: 10,
            ),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.black,
                  minimumSize: Size(250, 50)
              ),
              icon: const Image(image: AssetImage('assets/icons/facebook.png',),
                height: 30,
                width: 30,),
              label: Text("Sign Up with Facebook",
                  style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700)),
              onPressed: () {},
            ),
            Container(
              height: 20,
            ),
            Row(
              children: <Widget>[
                Expanded(
                  child: Divider (
                    color: Colors.blue,
                    height: 1.5,
                  ),
                ),
                Text(
                  "Or with e-mail",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w600,
                    fontSize: 12
                  ),
                ),
                Expanded(
                  child: Divider (
                    color: Colors.blue,
                    height: 1.5,
                  ),
                ),
              ],
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            Container(
              padding: const EdgeInsets.only(top: 15, left: 25, right: 25, bottom: 10),
              child: TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
              child: TextField(
                obscureText: isHiddenPassword,
                decoration: InputDecoration(
                  border:OutlineInputBorder(),
                  labelText: 'Password',
                  suffixIcon: InkWell(
                    onTap: _togglePasswordView,
                    child: Icon(Icons.visibility,
                    ),
                ),
              ),
            ),
            ),
            TextButton(
              onPressed: () {},
              child: Text('By creating an account, you aggreeing to our Privacy Policy and Electronic Communication Policy.',
                style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500, color: Colors.black,),),
            ),
            Container(
                height: 50,
                width: 320,
                padding: const EdgeInsets.fromLTRB(0, 0, 5, 10),
                child: ElevatedButton(
                  child: const Text('Sign Up'),
                  onPressed: () {},
                )
            ),

            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context){
                      return LoginScreen();
                    },
                  ),
                );
                //forgot password screen
              },
              child: const Text('Already have an account? Sign In',
                style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700 ),),
            )
          ],
        ),
      )
      )
      );
  }
  void _togglePasswordView(){
    if (isHiddenPassword == true){
      isHiddenPassword = false;
    } else {
      isHiddenPassword = true;
    }
    //setState((){});
  }
}