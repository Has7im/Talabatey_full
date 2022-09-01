import 'package:flutter/material.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';
import 'package:talabatey/Screen3/mneuScreen.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
          elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Icon(Icons.search,size: 26,color: Colors.black87,),
            SizedBox(width:140 ,),
            Icon(Icons.keyboard_arrow_down_rounded,size: 26,color: Colors.black87,),
            Text("السيدية",style: TextStyle(fontSize: 18,color: Colors.black87),),
            SizedBox(width:140 ,),
            Icon(Icons.notifications_none_outlined,size: 26,color: Colors.black87,),
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 130,
                  width: 500,
                  color: Colors.white,
                  child: GridView.count(
                    crossAxisCount: 1,
                    reverse: true,
                    scrollDirection: Axis.horizontal,
                    children: [
                      Column(
                        children: [
                          Container(
                            height: 100,
                            width: 90,
                            decoration: BoxDecoration(
                                color: Colors.redAccent,
                                borderRadius: BorderRadius.circular(20)
                            ),
                            child: Center(
                              child: Container(
                                height: 80,
                                width: 80,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(40),
                                  image: DecorationImage(image: AssetImage("assets/meterail images/23.jpg"),
                                      fit: BoxFit.cover),
                                ),
                              ),
                            ),
                          ),
                          Text("المطاعم",style: TextStyle(fontSize: 16,color: Colors.red),),
                        ],
                      ),
                      Myopshins(
                        "assets/meterail images/13des.jpg",
                        " الحلويات ومعجنات",
                      ),
                      Myopshins(
                        "assets/meterail images/12vg.jpg",
                        "الخضراوات والفواكه",
                      ),
                      Myopshins(
                        "assets/meterail images/11f.jpg",
                        "اللحوم بانواعها",
                      ),
                      Myopshins(
                        "assets/meterail images/11f.jpg",
                        "الاسماك",
                      ),
                      Myopshins(
                        "assets/meterail images/coffee 14.jpg",
                        "القهوة و البن",
                      ),
                      Myopshins(
                        "assets/meterail images/cart15.jpg",
                        "التسوق",
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text("المحلات القريبة",style: TextStyle(fontSize: 20,color: Colors.red,fontWeight: FontWeight.bold),),
                  ],
                ),
                Padding(padding: EdgeInsets.only(left: 380),child: Container(
                  height: 2,
                  width: 120,
                  child: Divider(thickness: 2,height: 2,color: Colors.red),
                ),),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  reverse: true,
                  child: Row(
                    children: [
                      MYresttenut2(
                        "assets/meterail images/11f.jpg",
                        "بوابة الشام",
                      ),
                      MYresttenut2(
                        "assets/meterail images/23.jpg",
                        "بوتو",
                      ),
                      MYresttenut2(
                        "assets/meterail images/55.jpg",
                        "ورق العنب",
                      ),
                    ],
                  ),
                ),

              ],
            ),
            Row(
              children: [
                Container(
                  height: 50,
                  width: 500,
                  color: Colors.white,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    reverse: true,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          height: 25,
                          width: 65,
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisAlignment:  MainAxisAlignment.center,
                            children: [
                              Text("جديد",style: TextStyle(fontSize: 15,color: Colors.black54),),
                              SizedBox(width: 3,),
                              Icon(Icons.add_shopping_cart_outlined,size: 15,color: Colors.black54,),
                            ],
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          height: 25,
                          width: 75,
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisAlignment:  MainAxisAlignment.center,
                            children: [
                              Text("حصري",style: TextStyle(fontSize: 15,color: Colors.black54),),
                              SizedBox(width: 3,),
                              Icon(Icons.star,size: 15,color: Colors.black54,),
                            ],
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          height: 25,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisAlignment:  MainAxisAlignment.center,
                            children: [
                              Text("توصيل مجاني",style: TextStyle(fontSize: 15,color: Colors.black54),),
                              SizedBox(width: 3,),
                              Icon(Icons.card_giftcard_outlined,size: 15,color: Colors.black54,),
                            ],
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          height: 25,
                          width: 120,
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisAlignment:  MainAxisAlignment.center,
                            children: [
                              Text("توصيل طلباتي",style: TextStyle(fontSize: 15,color: Colors.black54),),
                              SizedBox(width: 3,),
                              Icon(Icons.delivery_dining,size: 15,color: Colors.black54,),
                            ],
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          height: 25,
                          width: 110,
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisAlignment:  MainAxisAlignment.center,
                            children: [
                              Text("يدعم المحفظة",style: TextStyle(fontSize: 15,color: Colors.black54),),
                              SizedBox(width: 3,),
                              Icon(Icons.wallet,size: 15,color: Colors.black54,),
                            ],
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          height: 25,
                          width: 90,
                          decoration: BoxDecoration(
                            color: Colors.black12,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisAlignment:  MainAxisAlignment.center,
                            children: [
                              Text("خصومات",style: TextStyle(fontSize: 15,color: Colors.black54),),
                              SizedBox(width: 3,),
                              Icon(Icons.padding_sharp,size: 15,color: Colors.black54,),
                            ],
                          ),
                        ),
                        SizedBox(width: 10,),
                        Container(
                          height: 25,
                          width: 65,
                          decoration: BoxDecoration(
                            color: Colors.red,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisAlignment:  MainAxisAlignment.center,
                            children: [
                              Text("الكل",style: TextStyle(fontSize: 15,color: Colors.white),),
                              SizedBox(width: 3,),
                              Icon(Icons.home,size: 15,color: Colors.white,),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            MYrestrenut(
              "assets/meterail images/p06skw9l.jpg",
              "فاير فاير",
              "السيدية",
            ),
            MYrestrenut(
              "assets/meterail images/55.jpg",
              "اوركانك روتس",
              "الدورة",
            ),
            MYrestrenut(
              "assets/meterail images/23.jpg",
              "موندو",
              "العامرية",
            ),
            MYrestrenut(
              "assets/meterail images/88.jpg",
              "الغنام",
              "المنصور",
            ),
          ],
        ),
      ),
      bottomNavigationBar: SalomonBottomBar(
        items: [
          SalomonBottomBarItem(
            icon: Icon(Icons.person),
            title: Text("الحساب"),
            selectedColor: Colors.pink,
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.padding_outlined),
            title: Text("الطلبات"),
            selectedColor: Colors.orange,
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.wallet),
            title: Text("المحفظة"),
            selectedColor: Colors.teal,
          ),
          SalomonBottomBarItem(
            icon: Icon(Icons.home),
            title: Text("الحساب"),
            selectedColor: Colors.purple,

          ),
        ],
      ),

    );
  }
  Column Myopshins(imgastyap,restname,){
    return Column(
      children: [
        Container(
          height: 100,
          width: 90,
          decoration: BoxDecoration(
              color: Color(0xFFE93946),
            borderRadius: BorderRadius.circular(20)
          ),
          child: Center(
            child: Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40),
                image: DecorationImage(image: AssetImage(imgastyap),
                    fit: BoxFit.cover),
              ),
            ),
          ),
        ),
        Text(restname,style: TextStyle(fontSize: 16,color: Colors.black),),
      ],
    );
  }
  Container MYresttenut2(MainImage,FirstRestName){
    return Container(
      height: 133,
      width: 300,
      margin: EdgeInsets.all(5),
      child: Column(
        children: [
          Container(
            height: 100,
            width: 300,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              image: DecorationImage(image:NetworkImage(MainImage),
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                Positioned(
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),

                    child:Center(
                      child:  Icon(Icons.delivery_dining_outlined,size: 20,color: Colors.red,),
                    ),
                  ),
                  left: 250,top: 11,
                ),
              ],
            ),
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text(FirstRestName,style: TextStyle(fontSize: 16,color: Colors.red,fontWeight: FontWeight.bold),),
            ],
          ),


        ],
      ),
    );
  }
  Container MYrestrenut(restImage,restName,restLoc){
    return Container(
      height: 250,
      width: 480,
      margin: EdgeInsets.all(5),
      child: Column(
        children: [
          GestureDetector(
            child: Container(
              height: 160,
              width: 460,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25),
                image: DecorationImage(image:NetworkImage(restImage),
                  fit: BoxFit.cover,
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    child: Container(
                      height: 38,
                      width: 40,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                      ),

                      child:Center(
                        child:  Icon(Icons.delivery_dining_outlined,size: 25,color: Colors.red,),
                      ),
                    ),
                    left: 405,top: 11,
                  ),
                  Positioned(
                    child: Container(
                      height: 38,
                      width: 68,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                      ),

                      child:Center(
                        child:Text("بروموكود",style: TextStyle(fontSize: 16,color: Colors.red,fontWeight: FontWeight.bold),),

                      ),
                    ),
                    left: 320,top: 11,
                  ),
                ],
              ),
            ),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(builder: (context) => mneuScreen()));
              }
          ),
          SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("الحد الادنى للطلب: 5,000 د.ع",style: TextStyle(fontSize: 15,color: Colors.black87),),
              Text(restName,style: TextStyle(fontSize: 16,color: Colors.red,fontWeight: FontWeight.bold),),
            ],
          ),
          SizedBox(height: 10,),
          Row(
            children: [
              Text("الحد الادنى للطلب: 4,000 د.ع",style: TextStyle(fontSize: 15,color: Colors.black87),),
              SizedBox(width: 2,),
              Icon(Icons.delivery_dining_outlined,size: 23,color: Colors.black87,),
              SizedBox(width: 90,),
              Text("جيد جدا",style: TextStyle(fontSize: 16,color: Colors.black87),),
              SizedBox(width: 2,),
              Image.asset("assets/meterail images/grin-alt.png",height: 18,width: 18,color:Colors.black87,),
              SizedBox(width: 54,),
              Text(restLoc,style: TextStyle(fontSize: 16,color: Colors.black87),),
              SizedBox(width: 2,),
              Image.asset("assets/meterail images/marker.png",height: 18,width: 18,color:Colors.black87,),

            ],
          ),
        ],
      ),
    );
  }

}
