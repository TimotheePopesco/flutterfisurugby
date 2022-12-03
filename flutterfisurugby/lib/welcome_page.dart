import 'package:flutter/material.dart';
import 'package:flutterfisurugby/delayed_animation.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutterfisurugby/main.dart';
import 'package:flutterfisurugby/social_page.dart';


class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary_blue,
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(
            vertical: 60,
            horizontal: 30,
          ),
          child: Column(
            children: [
              DelayedAnimation(
                delay: 1500, 
                child: Container(
                  height: 225,
                  child: Image.asset('images/logo-color.png'),
                ),
              ),
              DelayedAnimation(
                delay: 2500, 
                child: Container(
                  height: 300,
                  child: Image.asset('images/rugbyplayers.png'),
                ),
              ),
              DelayedAnimation(
                delay: 3500, 
                child: Container(
                  margin: EdgeInsets.only(
                    top: 30,
                    bottom: 40,
                  ),
                  child: Text(
                    "Get faster, smarter, and live your life to the fullest",
                    textAlign: TextAlign.center ,
                    style: GoogleFonts.rufina(
                      color: secondary_blue,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              DelayedAnimation(
                delay: 4500, 
                child: Container(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: primary_red,
                      shape: StadiumBorder(),
                      padding: EdgeInsets.all(13)
                    ),
                    child: Text('GET STARTED'),
                    onPressed: (){
                      Navigator.push(
                        context, 
                        MaterialPageRoute( 
                          builder: (context)=> SocialPage(),
                        ),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}