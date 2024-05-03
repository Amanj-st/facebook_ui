
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';



  class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}
List<Map<String, String>> data = [
    {"name": "amanj","time":"10:36","image": "7.jpeg"},
    {"name": "zhela","time":"08:01","image": "2.jpg"},
    {"name": "zhanw","time":"12:45","image": "3.jpeg"},
    {"name": "shene","time":"09:36","image": "4.jpg"},
    {"name": "laz"  ,"time":"06:30","image": "5.jpeg"},
    {"name": "banw" ,"time":"11:12","image": "6.jpeg"},
    {"name": "ahmad","time":"01:25","image": "7.jpeg"},
  ];
  List<Map<String, String>> post = [
    {"title": "you asked for comments on the new proposals","name": "amanj", "image": "1.png","person":"1.jpeg"},
    {"title": "the company would not comment on the venture", "name": "zhanw","image": "2.jpg","person":"2.jpg"},
    {"title": "I'll make a note in my diary ok lets go to best place ", "name": "zhela","image": "3.jpeg","person":"3.jpeg"},
    {"title": "he noted down her address on a piece of paper","name": "laz", "image": "4.jpeg","person":"4.jpg"},
    {"titlw": " a record or outline of a speech, statement, testimony,","name": "ahmad", "image": "5.jpeg","person":"5.jpeg"},

  ];
class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Icon(Icons.add_circle),
                const Icon(Icons.search),
                 SizedBox(
                      height: 25,width: 25,
                      child: SvgPicture.asset("assets/svg/messenger.svg"),
                    ),
            ],),
            Row(children: [
                SizedBox(
                    height: 80,width: 100,
                    child: SvgPicture.asset("assets/svg/logo.svg",color: const Color.fromARGB(255, 7, 132, 235),),
                  ),
            ],),
          ],),
        ),
          SizedBox(
            height: 40,
            width: 400,
            child:  Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 35,width: 35,
                    child: SvgPicture.asset("assets/svg/person.svg"),
                  ),
                  SizedBox(
                    height: 35,width: 35,
                    child: SvgPicture.asset("assets/svg/notification.svg"),
                  ),
                  SizedBox(
                    height: 35,width: 35,
                    child: SvgPicture.asset("assets/svg/shop.svg"),
                  ),
                  SizedBox(
                    height: 35,width: 35,
                    child: SvgPicture.asset("assets/svg/users.svg"),
                  ),
                  SizedBox(
                    height: 35,width: 35,
                    child: SvgPicture.asset("assets/svg/tv.svg"),
                  ),
                 
                      Container(
                        height: 35,width: 35,
                        decoration: const BoxDecoration(
                          border:Border(bottom: BorderSide(width: 4,
                          color: Color.fromARGB(255, 2, 62, 153)))
                          ),
                        child: SvgPicture.asset("assets/svg/home.svg",
                        
                        )
                        ),
                      
                    
                  
              
                ],),
            ),

          ),
          
          
          const Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              const CircleAvatar(backgroundImage: AssetImage("assets/1.jpeg"),),
            Container(height: 35,width: 250,
              decoration: BoxDecoration(border: Border.all(color: Colors.black38
              
              ),borderRadius: BorderRadius.circular(15)
              ),
              child: const Text("   post in here",style: TextStyle(height: 2.1),),
              ),
                const Icon(Icons.image)
            
            ],),
          ),
const Divider(height: 10,color: Color.fromARGB(255, 113, 113, 116),),
SizedBox(height: 250,
  child: ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: post.length,
    itemBuilder: (context,i){
    return Stack(
      children: [
        Container(
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white),
          ),
         child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
           child: Image.asset("assets/post/${post[i]['image']}",
           width: 100,height: 200,
           fit: BoxFit.fill,
           ),
         ),),
         Positioned(top: 10,right: 10,
          child: CircleAvatar(child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
           child: Image.asset("assets/${post[i]['person']}",)))
         ),
         Positioned(bottom: 50,
          child: Center(child: Text("   ${data[i]['name']} ",style: const TextStyle(color: Colors.white),)))
      ],
    );
  }
  ),
),
Container(height: 5,width: 400,color: const Color.fromARGB(255, 212, 211, 211)),

    SizedBox(height: 400,
      child: ListView.builder(
        itemBuilder:(context,i){
      
        
      
         return  SizedBox(height: 400,width: 400,
       child:
        Column(
         children: [
           ListTile(
            title: Text("${data[i]['name']}"),
            subtitle: Text("${data[i]['time']}"),
            leading:   CircleAvatar(backgroundImage: 
            AssetImage("assets/${data[i]['image']}"),),
            trailing:const Icon(Icons.close,)
           ),
           Container(child: Image.asset("assets/${post[i]['person']}",
           fit: BoxFit.fill,
           ),),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
               Row(children: [
            SizedBox(height: 35,width: 35,
            child: SvgPicture.asset("assets/svg/like.svg"),)
            ,const Text("Like")
             ],),
             Row(children: [
            SizedBox(height: 35,width: 35,
            child: SvgPicture.asset("assets/svg/comment.svg"),)
            ,const Text("Comment")
             ],),
             Row(children: [
            SizedBox(height: 35,width: 35,
            child: SvgPicture.asset("assets/svg/messenger.svg"),)
            ,const Text("Send")
             ],),
             Row(children: [
            SizedBox(height: 35,width: 35,
            child: SvgPicture.asset("assets/svg/share.svg"),)
            ,const Text("Share")
             ],),
            ],),
          )
         ],
       )
       );
      
         }),
    ) ],
      ),
    );
  }
}