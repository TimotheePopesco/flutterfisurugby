import 'package:flutter/material.dart';
import 'package:flutterfisurugby/delayed_animation.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutterfisurugby/main.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white.withOpacity(0),
        leading: IconButton(
          icon: Icon(
            Icons.close,
            color: primary_red,
            size: 30,
          ),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children:[
            Container(
              margin: EdgeInsets.symmetric(
                vertical: 40,
                horizontal: 30,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DelayedAnimation(
                    delay: 1500, 
                    child: Text(
                      "Connect email adress",
                      style: GoogleFonts.rufina(
                        color: primary_red,
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        ),
                    ),
                  ),
                  SizedBox(height: 22,),
                  DelayedAnimation(
                    delay: 2500, 
                    child: Text(
                      "It's recommended to connect your email adress for us to better protect your information.",
                      style: GoogleFonts.rufina(
                        color: primary_blue,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            LoginForm(),
            SizedBox(height: 100),
            DelayedAnimation(
              delay: 5500, 
              child: Container(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: primary_red,
                    shape: StadiumBorder(),
                    padding: EdgeInsets.symmetric(
                      vertical: 13,
                      horizontal: 125,
                    ),
                  ),
                  child: Text(
                    'CONFIRM',
                    style: GoogleFonts.rufina(
                      color: secondary_blue,
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onPressed: (){
                    Navigator.push(
                      context, 
                      MaterialPageRoute( 
                        builder: (context)=> MyApp(),
                      ),
                    );
                  },
                ),
              ),
            ),
            SizedBox(height: 30,),
            Align(
              alignment: Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.only(right: 35),
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: DelayedAnimation(
                    delay: 6500,
                    child: Text(
                      "SKIP",
                      style: GoogleFonts.rufina(
                        color: primary_red,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],        
        ),      
      ),
    );
  }
}

class LoginForm extends StatefulWidget {
  @override
  _LoginFormState createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  var _obscureText = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: 30,
      ),
      child: Column(
        children: [
          DelayedAnimation(
            delay: 3500, 
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Your Email',
                labelStyle: TextStyle(
                  color: primary_blue,
                ),
              ),
            ),
          ),
          SizedBox(height: 30,),
          DelayedAnimation(
            delay: 3500, 
            child: TextField(
              obscureText: _obscureText,
              decoration: InputDecoration(
                labelText: 'Password',
                labelStyle: TextStyle(
                  color: primary_blue,
                ),
                suffixIcon: IconButton(
                  icon: Icon(
                    Icons.visibility,
                    color: Colors.black, 
                  ),
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText; 
                    });
                  },
                ), 
              ),
            ),
          ),
        ],
      ),
    );
  }
}