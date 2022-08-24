import 'package:flutter/material.dart';
import 'package:odev3/renkler.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'odev3',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
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
      ),
      home: const Anasayfa(title: 'SNEAKERLAND'),
    );
  }
}

class Anasayfa extends StatefulWidget {
  const Anasayfa({Key? key, title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".



  @override
  State<Anasayfa> createState() => _AnasayfaState();
}

class _AnasayfaState extends State<Anasayfa> {


  @override
  Widget build(BuildContext context) {

    var ekranBilgisi=MediaQuery.of(context);
    final double ekranYuksekligi = ekranBilgisi.size.height;
    final double ekranGenisligi = ekranBilgisi.size.width;

    return Scaffold(
      appBar: AppBar(
        title: Text("SNEAKERLAND", style: TextStyle(fontFamily: "Gochi Hand", fontSize: ekranGenisligi/10),),
        backgroundColor: anaRenk,
        centerTitle: true,
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.only(bottom:30.0),
                  child: TextButton(onPressed: (){},
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.red,

                    ),
                    child: Text("SALE!", style: TextStyle(fontSize: 25,color: yaziRenk),),
                  ),
                ),
              ],

            ),
           Row(
             children: [


               Padding(
                 padding: EdgeInsets.only(left: 10.0, bottom: 40.0),
                 child: Text("Sneakers> Basketball Shoes> Air Jordan 1 Mid", textAlign: TextAlign.left ,style: TextStyle(fontSize: 15, color: anaRenk, decoration: TextDecoration.underline),),
                   ),
             ],
           ),

            Image.asset("images/jordan.png"),
            Text("Air Jordan 1 Mid (Red,White & Black)", textAlign: TextAlign.left , style: TextStyle(fontSize: 20, color: anaRenk,fontWeight: FontWeight.bold), ),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [

                TextButton(

                    onPressed: (){print("tıklandı");},
                  style: TextButton.styleFrom(
                    backgroundColor: tukenmisRenk,
                    shape: const CircleBorder(),
                  ),
                    child: Text("40", style: TextStyle(color: yaziRenk, decoration: TextDecoration.lineThrough),),

                ),
                TextButton(
                  onPressed: (){print("tıklandı");},
                  style: TextButton.styleFrom(
                    backgroundColor: anaRenk,
                    shape: const CircleBorder(),
                  ),
                  child: Text("41", style: TextStyle(color: yaziRenk),),

                ),
                TextButton(
                  onPressed: (){print("tıklandı");},
                  style: TextButton.styleFrom(
                    backgroundColor: tukenmisRenk,
                    shape: const CircleBorder(),
                  ),
                  child: Text("42", style: TextStyle(color: yaziRenk, decoration: TextDecoration.lineThrough), ) ,

                ),
                TextButton(
                  onPressed: (){print("tıklandı");},
                  style: TextButton.styleFrom(
                    backgroundColor: anaRenk,
                    shape: const CircleBorder(),
                  ),
                  child: Text("43", style: TextStyle(color: yaziRenk),),

                ),
                TextButton(
                  onPressed: (){print("tıklandı");},
                  style: TextButton.styleFrom(
                    backgroundColor: anaRenk,
                    shape: const CircleBorder(),
                  ),
                  child: Text("44", style: TextStyle(color: yaziRenk, decoration: TextDecoration.lineThrough,),),

                ),
                TextButton(
                  onPressed: (){print("tıklandı");},
                  style: TextButton.styleFrom(
                    backgroundColor: anaRenk,
                    shape: const CircleBorder(),
                  ),
                  child: Text("45", style: TextStyle(color: yaziRenk),),

                ),
              ],
            ),
            Column(crossAxisAlignment: CrossAxisAlignment.start, mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("★4.3", textAlign: TextAlign.left, style: TextStyle(fontSize: 20),),
                Text("-Free shipping over \$100 purchase.- ", style: TextStyle(fontSize: 22, color: yaziRenk2, ),textAlign: TextAlign.center ,),
              ],
            ),
            Padding(
                padding:EdgeInsets.only(top:20),
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text("\$130", style: TextStyle(fontSize: 33, color: anaRenk, fontWeight: FontWeight.bold), ),
                TextButton(onPressed: (){},
                  style: TextButton.styleFrom(backgroundColor: anaRenk), child: Text("ADD TO CART", style: TextStyle(color: yaziRenk, fontSize: 18),),),
                TextButton(onPressed: (){},
                  style: TextButton.styleFrom(backgroundColor: anaRenk), child: Text("Favorite ♡", style: TextStyle(color: yaziRenk, fontSize: 18),),),
              ],
            ),),
          ],
        ),
      ),

    );
  }
}