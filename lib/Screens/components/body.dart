import 'package:flutter/material.dart';
import 'package:wdemy4/Screens/register/register_screen.dart';

class Body extends StatelessWidget {
//  const Body({Key? key}) : super(key: key);
 bool isHiddenPassword =true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.only(top:25, bottom: 0),
              padding: const EdgeInsets.only(top: 4),
              child: const Image(
                height: 300,
                width: 330,
                image: AssetImage("assets/images/grup.png",),
              ),
            ),Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.only(bottom: 2),
                child: const Text(
                  'Welcome Back!',
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w500,
                    fontSize: 22,),
                )),
            Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.only(top: 2, bottom: 10),
                child: const Text(
                  'Please enter your details.',
                  style: TextStyle(fontSize: 10),
                )),
            Container(
              padding: const EdgeInsets.only(left: 25, right: 25, bottom: 10),
              child: TextField(
                  decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Enter your email or password',
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
              onPressed: () {
                //forgot password screen
              },
              child: const Text('Recovery Password',
                style: TextStyle(fontSize: 12),),
            ),
            Container(
                height: 50,
                width: 320,
                padding: const EdgeInsets.fromLTRB(0, 0, 5, 10),
                child: ElevatedButton(
                  child: const Text('Continue'),
                  onPressed: () {},
                )
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
                  "Or continue with",
                  style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  padding:EdgeInsets.all(10),
                  margin: const EdgeInsets.only(top:8, right: 20),
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 2,
                        color: Colors.blueAccent
                    ),
                    borderRadius: BorderRadius.circular(12),),
                  child: const Image(image:AssetImage('assets/icons/search.png',),
                    height: 25,
                    width: 25,),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  margin: const EdgeInsets.only(top: 8, right: 20),
                  decoration: BoxDecoration (
                    border: Border.all(
                        width: 2,
                        color: Colors.blueAccent
                    ),
                    borderRadius: BorderRadius.circular(12),),
                  child: const Image(image: AssetImage('assets/icons/apple-black-logo.png',),
                    height: 25,
                    width: 25,),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  margin: const EdgeInsets.only(top: 8),
                  decoration: BoxDecoration(
                    border: Border.all(
                        width: 2,
                        color: Colors.blueAccent
                    ),
                    borderRadius: BorderRadius.circular(12),),
                  child: const Image(image: AssetImage('assets/icons/facebook.png',),
                    height: 25,
                    width: 25,),
                ),
              ],
            ),

            TextButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context){
                        return RegisterScreen();
                        },
                    ),
                );
                //forgot password screen
              },
              child: const Text('Not a Member? Register Now',
                style: TextStyle(fontSize: 12,fontWeight: FontWeight.w700 ),),
            )
          ],

        )
    )
    );
  }
  void _togglePasswordView(){
    if (isHiddenPassword == true){
      isHiddenPassword = false;
    }else{
      isHiddenPassword = true;
    }
    //setState()
  }
}

