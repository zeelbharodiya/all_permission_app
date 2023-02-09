import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';


void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    ),
  );
}




class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  String? b;
  String? c;
  String? d;
  String? e;
  String? f;
  String? g;
  String? h;
  String? i;
  String? j;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {
            showDialog(
              context: context,
              builder: (ctx) => AlertDialog(
                content: Container(
                  height: 300,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("LOCATION : ${b}"),
                      Text("AUDIO    : ${c}"),
                      Text("SMS      : ${d}"),
                      Text("NOTI : ${e}"),
                      Text("BLTH      : ${f}"),
                      Text("CAMERA      : ${g}"),
                      Text("CONTACTS      : ${h}"),
                      Text("MICROPHONE      : ${i}"),
                      Text("CALENDAR      : ${j}"),
                    ],
                  ),
                ),
              ));

          }, icon: Icon(Icons.more_vert),),
          SizedBox(width: 15,),
        ],
        backgroundColor: Colors.blue,
      ),
      body: Container(
        child: Padding(
          padding: const EdgeInsets.only(left: 110,right: 110),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () async {
                PermissionStatus status = await Permission.location.request();

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("$status"),
                    backgroundColor: Colors.green,
                    behavior: SnackBarBehavior.floating,
                  ),
                );
                if(status == PermissionStatus.granted){
                   b = "$status";
                  print("allow");
                }else{
                   b = "Not Granted";
                  print("Not allow");
                }
              }, child: Text("Location Permission"),),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: () async {
                PermissionStatus audio = await Permission.audio.request();

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("$audio"),
                    backgroundColor: Colors.green,
                    behavior: SnackBarBehavior.floating,
                  ),
                );
                if(audio == PermissionStatus.granted){
                  c = "$audio";
                  print("allow");
                }else{
                  c = "Not Granted";
                  print("Not allow");
                }
              }, child: Text("Audio Permission"),),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: () async {
                PermissionStatus status3 = await Permission.sms.request();

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("$status3"),
                    backgroundColor: Colors.green,
                    behavior: SnackBarBehavior.floating,
                  ),
                );
                if(status3 == PermissionStatus.granted){
                  d = "$status3";
                  print("allow");
                }else{
                  d = "Not Granted";
                  print("Not allow");
                }
              }, child: Text("Sms Permission"),),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: () async {
                PermissionStatus status4 = await Permission.notification.request();

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("$status4"),
                    backgroundColor: Colors.green,
                    behavior: SnackBarBehavior.floating,
                  ),
                );
                if(status4 == PermissionStatus.granted){
                  e = "$status4";
                  print("allow");
                }else{
                  e = "Not Granted";
                  print("Not allow");
                }
              }, child: Text("Notification Permission"),),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: () async {
                PermissionStatus status6 = await Permission.bluetooth.request();

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("$status6"),
                    backgroundColor: Colors.green,
                    behavior: SnackBarBehavior.floating,
                  ),
                );
                if(status6 == PermissionStatus.granted){
                  f = "$status6";
                  print("allow");
                }else{
                  f = "Not Granted";
                  print("Not allow");
                }
              }, child: Text("Blootooth Permission"),),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: () async {
                PermissionStatus status7 = await Permission.camera.request();

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("$status7"),
                    backgroundColor: Colors.green,
                    behavior: SnackBarBehavior.floating,
                  ),
                );
                if(status7 == PermissionStatus.granted){
                  g = "$status7";
                  print("allow");
                }else{
                  g = "Not Granted";
                  print("Not allow");
                }
              }, child: Text("Camera Permission"),),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: () async {
                PermissionStatus status8 = await Permission.contacts.request();

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("$status8"),
                    backgroundColor: Colors.green,
                    behavior: SnackBarBehavior.floating,
                  ),
                );
                if(status8 == PermissionStatus.granted){
                  h = "$status8";
                  print("allow");
                }else{
                  h = "Not Granted";
                  print("Not allow");
                }
              }, child: Text("Contacts Permission"),),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: () async {
                PermissionStatus status9 = await Permission.microphone.request();

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("$status9"),
                    backgroundColor: Colors.green,
                    behavior: SnackBarBehavior.floating,
                  ),
                );
                if(status9 == PermissionStatus.granted){
                  i = "$status9";
                  print("allow");
                }else{
                  i = "Not Granted";
                  print("Not allow");
                }
              }, child: Text("Microphone Permission"),),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: () async {
                PermissionStatus status10 = await Permission.calendar.request();

                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("$status10"),
                    backgroundColor: Colors.green,
                    behavior: SnackBarBehavior.floating,
                  ),
                );
                if(status10 == PermissionStatus.granted){
                  j = "$status10";
                  print("allow");
                }else{
                  j = "Not Granted";
                  print("Not allow");
                }
              }, child: Text("Calander Permission"),),
              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
}
