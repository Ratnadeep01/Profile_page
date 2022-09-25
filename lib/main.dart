import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return const mycard();
}
}
class mycard extends StatefulWidget {
  const mycard({Key? key}) : super(key: key);

  @override
  State<mycard> createState() => _mycardState();
}

class _mycardState extends State<mycard> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.blue,
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(width: double.infinity),
              const CircleAvatar(
                maxRadius: 70,
                minRadius: 50,
                backgroundImage: AssetImage("image/abc.jpg"),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text('RATNADEEP SAHA', style: TextStyle(fontWeight: FontWeight.w600, fontSize: 24,
                  color: Colors.white),),
              const SizedBox(
                height: 10,
              ),
              const Text('(Flutter developer)', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600, color: Colors.white,
              fontStyle: FontStyle.italic),),
              const SizedBox(
                height: 40,
              ),
              Container(
                height: 2,
                width: 350,
                color: Colors.white,
              ),
              const SizedBox(
                height: 60,
              ),
              InkWell(
                child: Ink(
                  height: 60,
                  width: 350,
                  color: Colors.lightBlueAccent,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Icon(Icons.call, color: Colors.white, size: 30,),
                      SizedBox(
                        width: 40,
                      ),
                      Text('+91 9007034095', style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500,
                        color: Colors.white
                      ),)
                    ],
                  )
                ),
                splashColor: Colors.white70,
                onTap: (){
                  FlutterPhoneDirectCaller.callNumber('+91 9007034095');
                },
              ),
              const SizedBox(
                height: 40,
              ),
              InkWell(
                child: Ink(
                  height: 60,
                  width: 350,
                  color: Colors.lightBlueAccent,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Icon(Icons.email, color: Colors.white, size: 30,),
                        SizedBox(
                          width: 40,
                        ),
                        Text('E-Mail', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500,
                            color: Colors.white
                        ),)
                      ],
                    )
                ),
                splashColor: Colors.white70,
                onTap: () async {
                  var url = Uri.parse("mailto:ratnadeepsaha2013@gmail.com");
                  if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                  }
                  else {
                  throw 'Could not launch $url';
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
