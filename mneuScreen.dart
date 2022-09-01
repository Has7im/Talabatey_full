import 'package:flutter/material.dart';
import 'package:talabatey/Screen2/HomeScreen.dart';
class mneuScreen extends StatefulWidget {
  const mneuScreen({Key? key}) : super(key: key);

  @override
  State<mneuScreen> createState() => _mneuScreenState();
}

class _mneuScreenState extends State<mneuScreen> {
  int _itemCount = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 140,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/meterail images/55.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(child: Container(
                height: 35,
                width:35,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
                child:Center(
                  child: GestureDetector(
                      child: Icon(Icons.arrow_forward,color: Colors.black,size: 20,),
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomeScreen()));
                      }
                  ),
                ),
              ), right: 20, top: 15,),
              Positioned(child: Container(
                height: 600,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
              ), top: 100,),
            ],
          ),
          Column(
            children: [
             Container(
               height:550,
               width: MediaQuery.of(context).size.width,
               margin: EdgeInsets.all(10),
               child: Column(
                 children: [
                   Padding(padding: EdgeInsets.only(left: 455),child: Text("فاير فاير",style: TextStyle(fontSize: 25,color: Colors.redAccent),),),
                   SizedBox(height:15 ,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.end,
                     children: [
                       Text("جيدا جدا",style: TextStyle(fontSize: 18,color: Colors.black),),
                       SizedBox(width: 3,),
                       Icon(Icons.tag_faces,color: Colors.black,size: 19,),
                       SizedBox(width: 40,),
                       Text("سعر التوصيل: 1,500 د.ع",style: TextStyle(fontSize: 18,color: Colors.black),),
                       SizedBox(width: 3,),
                       Icon(Icons.delivery_dining_outlined,color: Colors.black,size: 19,),
                     ],
                   ),
                   SizedBox(height:15 ,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.end,
                     children: [
                       Text("السعر الادنى للطلب: 5,000 د.ع",style: TextStyle(fontSize: 18,color: Colors.black),),
                       SizedBox(width: 1,),
                       Icon(Icons.text_format,color: Colors.black,size: 19,),
                       SizedBox(width: 70,),
                       Text("السيدية",style: TextStyle(fontSize: 18,color: Colors.black),),
                       SizedBox(width: 3,),
                       Icon(Icons.location_on_outlined,color: Colors.black,size: 19,),
                     ],
                   ),
                   SizedBox(height:20 ,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.end,
                     children: [
                       Text("وقت التوصيل المتوقع من ساعة الى نصف ساعة",style: TextStyle(fontSize: 18,color: Colors.black),),
                       SizedBox(width: 3,),
                       Icon(Icons.access_time,color: Colors.black,size: 19,),
                     ],
                   ),
                   SizedBox(height:25 ,),
                   Padding(padding: EdgeInsets.only(left: 350),child: Text("سندويش فيلية دجاج",style: TextStyle(fontSize: 24,color: Colors.redAccent),),),
                   SizedBox(height:10 ,),
                   Container(
                     margin: EdgeInsets.all(5),
                     height: 60,
                     width: 400,
                     decoration: BoxDecoration(
                       color: Colors.grey.withOpacity(0.2),
                       borderRadius: BorderRadius.circular(25),
                     ),
                     child: Row(
                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                       children: [
                         Icon(Icons.keyboard_arrow_up,color: Colors.black,size: 30,),
                         Column(
                           mainAxisAlignment: MainAxisAlignment.center,
                           crossAxisAlignment: CrossAxisAlignment.center,
                           children: [
                             Padding(padding: EdgeInsets.only(right: 10),child: Text("اضافات",style: TextStyle(fontSize: 24,color: Colors.redAccent),),),
                             Padding(padding: EdgeInsets.only(right: 7),child: Text("اختياري",style: TextStyle(fontSize: 18,color: Colors.black54),),),
                           ],
                         ),

                       ],
                     ),
                   ),
                   SizedBox(height:15 ,),
                   Padding(padding: EdgeInsets.only(left: 430),child: Text("تعليمات خاصة",style: TextStyle(fontSize: 20,color: Colors.black),),),
                   Container(
                     margin: EdgeInsets.all(5),
                     height: 50,
                     width: 400,
                     decoration: BoxDecoration(
                       color: Colors.grey.withOpacity(0.2),
                       borderRadius: BorderRadius.circular(25),
                     ),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Padding(padding: EdgeInsets.only(right: 7),child: Text("اذا لديك اي ملاحضات تخص الطلب يرجى التواصل معنا",style: TextStyle(fontSize: 18,color: Colors.black54),),),
                       ],
                     ),
                   ),
                   SizedBox(height:10 ,),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                     children: [
                       _itemCount!=0?
                       IconButton(icon:Icon(Icons.remove,size: 25,),onPressed: ()=>setState(()=>_itemCount-- ),): Container(),
                       Text(_itemCount.toString()),
                       IconButton(icon:Icon(Icons.add,size: 25,),onPressed: ()=>setState(()=>_itemCount++)),
                     ],
                   ),
                   SizedBox(height:10 ,),
                   Text("6,500",style: TextStyle(fontSize: 18,color: Colors.redAccent),),
                   SizedBox(height:10 ,),
                   Container(
                     margin: EdgeInsets.all(5),
                     height: 50,
                     width: 350,
                     decoration: BoxDecoration(
                       color: Color(0xFFE93946),
                       borderRadius: BorderRadius.circular(25),
                     ),
                     child: Column(
                       mainAxisAlignment: MainAxisAlignment.center,
                       crossAxisAlignment: CrossAxisAlignment.center,
                       children: [
                         Text("اضافة الى السلة",style: TextStyle(fontSize: 18,color: Colors.white),),
                       ],
                     ),
                   ),
                 ],
               ),
             ),
            ],
          ),
        ],
      ),
    );
  }
}


