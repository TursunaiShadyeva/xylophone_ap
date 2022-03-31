 import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
 
}

class MyApp extends StatelessWidget {

  const MyApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Xylophone App",
       home: HomePage(),
    ); 
  }
}
class HomePage extends StatefulWidget {
  const HomePage({ Key key }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 Widget soundTile({@required Color color,@required String soundNumber}){
   final player = new AudioCache();
    

   return FlatButton(
     height: MediaQuery.of(context).size.height/7.23,
      color: color,
      
      onPressed: (){
        player.play("note$soundNumber.wav");
      },
   );
    
 }




  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            soundTile(color: Colors.red,soundNumber: "1"),
             soundTile(color: Colors.orange,soundNumber:"2" ),
            soundTile(color: Colors.yellow,soundNumber:"3" ),
            soundTile(color: Colors.green,soundNumber: "4"),
             soundTile(color: Colors.teal,soundNumber: "5"),
             soundTile(color: Colors.blue,soundNumber: "6"),
             soundTile(color: Colors.purple,soundNumber:"7" ),
          ] ,
        ),
        
      ),
    );
  }
}