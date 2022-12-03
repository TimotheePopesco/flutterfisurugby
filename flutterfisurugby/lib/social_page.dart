import 'package:flutter/material.dart';
import 'package:flutterfisurugby/delayed_animation.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutterfisurugby/main.dart';
import 'package:flutterfisurugby/login_page.dart';

 class SocialPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: primary_blue,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white.withOpacity(0),
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: primary_red,
            size: 30,
          ),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ),
      body:SingleChildScrollView(
        child: Column(
          children: [
            DelayedAnimation(
              delay: 1000, 
              child: Container(
              margin: const EdgeInsets.symmetric(
                  vertical: 70,
                  horizontal: 0,
                ),
                height: 100,
                child: Image.asset('images/logo-no-background.png'),
              ),
            ),
            DelayedAnimation(
              delay: 1000, 
              child: Container(
                child: Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 40,
                    horizontal: 30,
                  ),
                  child: Column(
                    children: [
                      Text(
                        "Change starts here !",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.rufina(
                          color: primary_red,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 10,),
                      Text("Save your data to customise your application",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.rufina(
                          color: secondary_blue,
                          fontSize: 18,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            DelayedAnimation(
              delay: 3500, 
              child: Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 40,
                  horizontal: 30,
                ),
                child: Column(
                  children: [
                    ElevatedButton(
                      onPressed: (){
                        Navigator.push(
                          context, 
                          MaterialPageRoute(
                            builder:(
                              context) => LoginPage(),
                            ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        primary: primary_red,
                        padding: EdgeInsets.all(13)
                      ), 
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.mail_outline_outlined),
                          SizedBox(width: 10,),
                          Text('EMAIL',
                            style: GoogleFonts.rufina(
                            color: secondary_blue,
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: (){},
                      style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        primary: Color(0xFF576DFF),
                        padding: EdgeInsets.all(13)
                      ), 
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FaIcon(FontAwesomeIcons.facebook),
                          SizedBox(width: 10,),
                          Text('FACEBOOK',
                            style: GoogleFonts.rufina(
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: (){},
                      style: ElevatedButton.styleFrom(
                        shape: StadiumBorder(),
                        primary: Colors.white,
                        padding: EdgeInsets.all(13)
                      ), 
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset('images/google.png', height: 20,),
                          SizedBox(width: 10,),
                          Text('GOOGLE', 
                            style: GoogleFonts.rufina(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ],
                      ),
                    ),                    
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}