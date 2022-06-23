import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return getBody();
  }
  Widget getBody(){
    return Column(

      children: <Widget> [
       SingleChildScrollView(
         scrollDirection: Axis.horizontal,
         child: Row(
           children: List.generate(stories.length, (index){
             return storyitem(index);
           }),
         ),
       )

      ],
    );
  }

  Padding storyitem(int index) {
    return Padding(
             padding: const EdgeInsets.only(right: 10,bottom: 10,top: 5),
             child: Column(
               children: [
                 Container(
                   width: 68,
                   height: 68,
                   decoration: const BoxDecoration(
                       shape: BoxShape.circle,
                       gradient: LinearGradient(
                         begin: Alignment.topCenter,
                         end: Alignment.bottomCenter,
                         colors: [Colors.red,Colors.yellowAccent],
                       )

                   ),
                   child: Padding(
                     padding: const EdgeInsets.all(3.0),
                     child: Container(
                       height: 65,
                       width: 65,
                       decoration: BoxDecoration(
                           border: Border.all(
                               width: 1,
                               color: Colors.black12
                           ),
                           shape: BoxShape.circle,
                           image: DecorationImage(image:NetworkImage(stories[index]["image"]),fit: BoxFit.cover )
                       ),
                     ),
                   ),
                 ),
                 SizedBox(
                   width: 70,
                   child: Center(
                       child: Text(
                         stories[0]["name"],
                         overflow: TextOverflow.ellipsis,

                       )),
                 ),
               ],
             )
           );
  }




}


List stories = [
  {
    "id":1,
    "image":"https://pbs.twimg.com/media/FVFwZBcaIAAeXf3?format=jpg&name=small",
    "name":"HololiveJP",
  },
  {
    "id":2,
    "image":"https://pbs.twimg.com/media/FVQDt54aUAA5czt?format=jpg&name=small",
    "name":"HololiveJP",
  },
  {
    "id":3,
    "image":"https://pbs.twimg.com/media/FVvftvuaQAAshav?format=jpg&name=small",
    "name":"HololiveEN",
  },
  {
    "id":4,
    "image":"https://pbs.twimg.com/media/FVK59v8aIAAvwcF?format=jpg&name=small",
    "name":"HololiveJP",
  },
  {
    "id":5,
    "image":"https://pbs.twimg.com/media/FU2TsAmakAA1xIp?format=jpg&name=small",
    "name":"HololiveJP",
  },
  {
    "id":1,
    "image":"https://pbs.twimg.com/media/FVFwZBcaIAAeXf3?format=jpg&name=small",
    "name":"HololiveJP",
  },
  {
    "id":2,
    "image":"https://pbs.twimg.com/media/FVQDt54aUAA5czt?format=jpg&name=small",
    "name":"HololiveJP",
  },
];

//https://pbs.twimg.com/media/FUxNv26akAAA8dA?format=jpg&name=small