import 'package:flutter/material.dart';
import 'package:musicplayer/search.dart';
import 'package:musicplayer/tracks.dart';
import 'package:musicplayer/playlist.dart';
import 'package:flutter/services.dart';
import 'package:audio_service/audio_service.dart';
void main() {

   
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      initialRoute: '/',
      routes: {
        
    // When navigating to the "/" route, build the FirstScreen widget.
    '/': (context) => Tracks(),
    // When navigating to the "/second" route, build the SecondScreen widget.
    '/second': (context) => Search(),
    '/third':(context)=> Playlist(),
  },

      title: 'Music Player',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'SFPro',
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      //home: AudioServiceWidget(child: Tracks()) ,
    );
  }
  
}


