import 'package:flutter/material.dart';
import 'package:talabatey/Screen2/HomeScreen.dart';
import 'package:talabatey/Screen4/loginScreen.dart';
class SplasshScreen extends StatefulWidget {
  const SplasshScreen({Key? key}) : super(key: key);

  @override
  State<SplasshScreen> createState() => _SplasshScreenState();
}

class _SplasshScreenState extends State<SplasshScreen> {
  Future Delay()async{
    await new Future.delayed(const Duration(seconds: 7));
    Navigator.push(context, MaterialPageRoute(builder: (context) => loginScreen()),
    );
  }
  @override
  void initState(){
    super.initState();
    Delay();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE93946),
      body: Center(
        child: Image.asset("assets/main images/talabatey.png"),

      ),

    );
  }
}
