import 'package:flutter/material.dart';
import 'package:talabatey/Screen2/HomeScreen.dart';
import 'package:talabatey/Screen4/loginScreen.dart';
class loginScreen2 extends StatefulWidget {
  const loginScreen2({Key? key}) : super(key: key);

  @override
  State<loginScreen2> createState() => _loginScreen2State();
}

class _loginScreen2State extends State<loginScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.1),
      body: Padding(
        padding: const EdgeInsets.all(45),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                height: 140,
                width: 260,
                decoration: BoxDecoration(
                    color: Colors.redAccent,
                    image: DecorationImage(image: AssetImage("assets/main images/logooooo.jpg"),
                        fit: BoxFit.fill
                    )
                ),
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              textAlign: TextAlign.end,
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),),
                hintText: 'الاسم',
                fillColor: Colors.white,
                prefixText: '0/15',prefixStyle: TextStyle(fontSize: 10,color: Colors.redAccent),
              ),
            ),
            SizedBox(height: 35,),
            TextField(
              textAlign: TextAlign.end,
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),),
                hintText: 'رقم الهاتف',
                fillColor: Colors.white,
                prefixText: '0/11',prefixStyle: TextStyle(fontSize: 10,color: Colors.redAccent),
              ),
            ),
            SizedBox(height: 35,),
            GestureDetector(
                child: Text("اذا كان لديك رمز المشاركة , اضغط هنا",style: TextStyle(color: Colors.red,fontSize: 22,),),
                onTap: () {
                  Navigator.of(context).pop(MaterialPageRoute(builder: (context) => loginScreen()));
                }
            ),
            SizedBox(height: 30,),
            TextField(
              textAlign: TextAlign.end,
              decoration: InputDecoration(
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20),),
                hintText: 'رمز المشاركة',
                fillColor: Colors.white,
              ),
            ),
            SizedBox(height: 35,),
            GestureDetector(
                child: Container(
                  height: 45,
                  width: 320,
                  decoration: BoxDecoration(
                    color: Colors.redAccent,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text("التالي",style: TextStyle(fontSize: 16,color: Colors.white),),
                  ),
                ),
                onTap: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen()));
                }
            ),

          ],
        ),
      ),
    );
  }
}
