import 'package:flutter/material.dart';
import 'package:instagramclone/View/home_page.dart';
// import 'package:instagramclone/theme/colors.dart';

class RootApp extends StatefulWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: Colors.white,

      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(40.0),
        child:getAppBar(),
      ),
      body: getBody(),
      bottomNavigationBar: getFooter(),
    );
  }
  Widget getBody(){
    List<Widget> pages = [
      const HomePage(),
      const Center(child: Text("Search Page",style: TextStyle(
          fontSize: 20,fontWeight: FontWeight.bold
      ),)),
      const Center(child: Text("Video Page",style: TextStyle(
          fontSize: 20,fontWeight: FontWeight.bold
      ),)),
      const Center(child: Text("Shopping Page",style: TextStyle(
          fontSize: 20,fontWeight: FontWeight.bold
      ),)),
      const Center(child: Text("Profile Page",style: TextStyle(
          fontSize: 20,fontWeight: FontWeight.bold
      ),))
    ];
    return IndexedStack(
      index: pageIndex,
      children: pages,
    );
  }
  Widget getAppBar() {
    if (pageIndex == 0) {
      return PreferredSize(preferredSize: const Size.fromHeight(40.0),
          child: AppBar(
            backgroundColor: Colors.white,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                const Text("Instagram",style: TextStyle(
                    fontFamily:"",
                    fontSize: 20,
                    color: Colors.black87
                ),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: [
                    const Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Icon( Icons.add_box_outlined,size:25,color: Colors.black87),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Icon( Icons.favorite_border_outlined,size:25,color: Colors.black87),
                    ),
                    Transform.rotate(
                      angle: -45 * 3.14 / 180,
                      child: const Icon( Icons.send,size:25,color: Colors.black87),
                    ),
                  ],
                ),

              ],
            ),
       ));
    }
    else if (pageIndex == 1) {
      return PreferredSize(preferredSize: const Size.fromHeight(40.0),
          child: AppBar(
            backgroundColor: Colors.white,
            title: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  const [
                TextField(),
                Icon( Icons.map,size:20,color: Colors.black87),
              ],
            ),
          ));
    }
    else if (pageIndex == 2) {
      return PreferredSize(preferredSize: const Size.fromHeight(40.0),
          child: AppBar(
            backgroundColor: Colors.white,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children:  const [
                Icon( Icons.photo_camera,size:20,color: Colors.black87),

              ],
            ),
          ));
    }
    else if (pageIndex == 3) {
      return PreferredSize(preferredSize: const Size.fromHeight(40.0),
          child: AppBar(
            backgroundColor: Colors.white,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                const Text("Shoping",style: TextStyle(
                    fontFamily:"",
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: const [
                    Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Icon( Icons.list_alt_outlined,size:25,color: Colors.black87),
                    ),
                    Icon( Icons.menu,size:25,color: Colors.black87)
                  ],
                ),

              ],
            ),
          ));
    }
    else {
      return PreferredSize(preferredSize: const Size.fromHeight(40.0),
          child: AppBar(
            backgroundColor: Colors.white,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children:  [
                const Text("yabuki_shodai",style: TextStyle(
                    fontFamily:"",
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                ),),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                  children: const [
                    Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Icon( Icons.add_box_outlined,size:25,color: Colors.black87),
                    ),
                    Icon( Icons.menu,size:25,color: Colors.black87)
                  ],
                ),

              ],
            ),
          ));
    }

  }

  Widget getFooter(){
    List<Icon> bottomIconItems = [
      pageIndex == 0 ? const Icon( Icons.home,size:30,color: Colors.black87) :  const Icon( Icons.home,size:30,color: Colors.black26),
      pageIndex == 1 ? const Icon( Icons.search,size:30,color: Colors.black87) :  const Icon( Icons.search,size:30,color: Colors.black26),
      pageIndex == 2 ? const Icon( Icons.smart_display,size:30,color: Colors.black87) :  const Icon( Icons.smart_display,size:30,color: Colors.black26),
      pageIndex == 3 ? const Icon( Icons.shopping_bag,size:30,color: Colors.black87) :  const Icon( Icons.shopping_bag,size:30,color: Colors.black26),
      pageIndex == 4 ? const Icon( Icons.account_circle,size:30,color: Colors.black87) :  const Icon( Icons.account_circle,size:30,color: Colors.black26),
    ];
    return Container(
      height: 60,
      width: double.infinity,
      decoration: const BoxDecoration(
        color:  Colors.white
      ),
      child: Padding(
        padding: const EdgeInsets.only(left:20,right: 20,bottom: 20,top: 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:List.generate(bottomIconItems.length, (index){
            return  InkWell(
                onTap: (){
                  selectTab(index);
                },
                child: bottomIconItems[index]
            );
          })
        ),
      ),
    );
  }
  selectTab(index){
    setState((){
      pageIndex = index;
    });

  }
}