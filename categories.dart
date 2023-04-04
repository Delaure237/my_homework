import 'package:flutter/material.dart';
import 'package:flutter_point_tab_bar/pointTabBar.dart';
import 'package:flutter_point_tab_bar/pointTabIndicator.dart';
class FilmCategories  extends StatefulWidget {
  const FilmCategories({Key? key}) : super(key: key);

  @override
  State<FilmCategories> createState() => _FilmCategories();
}

class _FilmCategories extends State<FilmCategories>

    with TickerProviderStateMixin{
  Color toolcolor = Colors.white;
  int _currentTabIndex = 0;
  late TabController _tabController;

  @override

  void initState() {
    super.initState();
    _tabController=TabController(length: 3, vsync: this);
  }
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 10,
        // title: const Text("tabBar"),
        backgroundColor: Colors.black,
       // bottom: TabBar(
        //  indicatorColor: Colors.black,

          /*controller: _tabController,
          tabs:<Widget> [
            Tab(
              child:TextButton(
                onPressed: (){},
                child: Text("Series",style: TextStyle(color:toolcolor),),
              ),
            ),
            Tab(
              child:TextButton(
                onPressed: (){},
                child: Text("Film",style: TextStyle(color:toolcolor),),
              ),
            ),
            Tab(
              child:TextButton(
                onPressed: (){},
                child: Text("My List",style: TextStyle(color:toolcolor),),
              ),
            ),
          ],
        ),
      ),*/
      ),
      body: Container(
        color: Colors.black,
         height: MediaQuery.of(context).size.height,
         width: MediaQuery.of(context).size.width,
         child: Column(
           children: [
             Flexible(
                 child:Column(
                   children: [
                     Padding(padding: const EdgeInsets.symmetric(vertical: 10.0),
                     child: TabBar(
                       controller: _tabController,
                       labelPadding:const EdgeInsets.symmetric(horizontal: 30),
                       indicatorColor: const Color(0xfff3f4f9),
                       indicator:PointTabIndicator(
                         position:PointTabIndicatorPosition.bottom,
                         insets:EdgeInsets.only(bottom: 3),
                         color:Colors.white30,

                       ),
indicatorWeight: 1.0,
                       isScrollable:true ,
                       unselectedLabelColor: Colors.white,
                       tabs: <Widget>[
                         Tab(
                           child: Text(
                             "Series",
                             style: TextStyle(
                               fontFamily: 'Ubuntu-Regular'
                             ),
                           ),
                         ),
                         Tab(
                           child: Text(
                             "Film",
                             style: TextStyle(
                                 fontFamily: 'Ubuntu-Regular'
                             ),
                           ),
                         ),
                         Tab(
                           child: Text(
                             "My List",
                             style: TextStyle(
                                 fontFamily: 'Ubuntu-Regular'
                             ),
                           ),
                         )
                       ],
                     ),
                     ),

                     Container(
                       margin: const EdgeInsets.only(right: 250),
                       child: sectionTitleText("Coming Soon"),
                     ),
                     Stack(
                       children: [
                         Padding(padding: EdgeInsets.all(0.01),
                           child:Container(
                               margin: EdgeInsets.all(10),
                               height: 200,
                               width: 350,
                               decoration:BoxDecoration(
                                 borderRadius: BorderRadius.circular(25),
                               ),

                               child:Card(
                                 child:ClipRRect(
                                   borderRadius: BorderRadius.circular(25),

                                   child: Image.asset("Images/Dora.jpg",fit: BoxFit.cover,alignment: Alignment(1,-0.75),),),

                                 shape: const RoundedRectangleBorder(
                                     borderRadius: BorderRadius.all(Radius.circular(30))
                                 ),
                               )

                           ) ,
                         ),

                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           mainAxisSize: MainAxisSize.max,
                           children: [
                             Text("Dora and The Lost City of God",style: TextStyle(color: Colors.white,fontSize: 18),),
                             TextButton(onPressed: (){}, child:Icon(Icons.send,color: Colors.white,))
                           ],
                         )

                       ],
                       
                     ),


                     SingleChildScrollView(
                       scrollDirection: Axis.horizontal,


                          child: Padding(padding: const EdgeInsets.all(20),
                               child: Row(

                                   children: [

                                     buildCard(TextButton(onPressed: () {
                                       setState(() {
                                          toolcolor = (toolcolor == Colors.white)
                                          ? Colors.red
                                          : Colors.white;
                                             });
                                     },
                                    child: const Text("All",),
                                     ),"All",),
                                 const     SizedBox(width: 12,),
                                     buildCard(TextButton(onPressed: () {
                                        Navigator.of(context).pop();
                                       setState(() {
                                         toolcolor = (toolcolor == Colors.white)
                                             ? Colors.red
                                             : Colors.white;
                                       });
                                     },
                                       child: const Text("Action",),
                                     ),"Action",),
                                const      SizedBox(width: 12,),
                                     buildCard(TextButton(onPressed: () {
                                       setState(() {
                                         toolcolor = (toolcolor == Colors.white)
                                             ? Colors.red
                                             : Colors.white;
                                       });
                                     },
                                       child:const  Text("Comedy",),
                                     ),"Comedy",),
                                   const   SizedBox(width: 12,),
                                     buildCard(TextButton(onPressed: () {
                                       setState(() {
                                         toolcolor = (toolcolor == Colors.white)
                                             ? Colors.red
                                             : Colors.white;
                                       });
                                     },
                                       child: const  Text("Romance",),
                                     ),"Romance",),
                                  const    SizedBox(width: 12,),
                                     buildCard(TextButton(onPressed: () {
                                       setState(() {
                                         toolcolor = (toolcolor == Colors.white)
                                             ? Colors.red
                                             : Colors.white;
                                       });
                                     },
                                       child: const Text("Fantasme",),
                                     ),"Fantasme",),
                                   const   SizedBox(width: 12,),
                                     buildCard(TextButton(onPressed: () {
                                       setState(() {
                                         toolcolor = (toolcolor == Colors.white)
                                             ? Colors.red
                                             : Colors.white;
                                       });
                                     },
                                       child:const  Text("Western",),
                                     ),"Western",),
                                     const SizedBox(width: 12,),
                                     buildCard(TextButton(onPressed: () {
                                       setState(() {
                                         toolcolor = (toolcolor == Colors.white)
                                             ? Colors.red
                                             : Colors.white;
                                       });
                                     },
                                       child: const  Text("Porno",),
                                     ),"Porno",),
                                   const   SizedBox(width: 12,),
  ]


                       ),
                     ),
    ),
                     Container(
                       margin: const EdgeInsets.only(right: 250),
                       child: sectionTitleText("Trending Now"),
                     ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          //  sectionTitleText("Actors"),

          // allFriends(width/5),
          child:Row(
            children: [
              allFriends(width/3),
             const SizedBox(width: 12,),
              allFriends(width/3),
              const SizedBox(width: 12,),
              allFriends(width/3),
              const SizedBox(width: 12,),
              allFriends(width/3),
              const SizedBox(width: 12,),
              allFriends(width/3),
              const SizedBox(width: 12,),
              allFriends(width/3),
              const  SizedBox(width: 12,),
              allFriends(width/3),
              const SizedBox(width: 12,),

            ],
          )
        )
                   ],
                 )
             )
           ],

         ),





      )



    );



  }
  Widget buildCard(Widget Textbutton ,String text) => Container(
    height: 35,
    width: 80,
    child: TextButton(
      onPressed: (){},

      child: Text(
        text,
      style: TextStyle(
        fontWeight: FontWeight.w600,
        color: Colors.white,
        fontSize: 15,
      ),
      textAlign: TextAlign.center,
    ),
    ),
    decoration: BoxDecoration(
      borderRadius:BorderRadius.circular(10),
      color:toolcolor.withOpacity(0.1)    ),

  );
}
Widget sectionTitleText(String text) {
  return Padding(
      padding: const EdgeInsets.symmetric(vertical: 25),

  child: Text(
  text,
  style: const TextStyle(
  fontWeight: FontWeight.w600,
  color: Colors.white,
  fontSize: 18,
  ),
  )
  );
}
Column actorsImage( String imagepath,double width){
  return Column(
    children: [
      Container(
        margin:const EdgeInsets.all(5),
        width: width,
        height: width,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(imagepath),fit:BoxFit.cover),
          borderRadius: BorderRadius.circular(10),
          color: Colors.blue,
          boxShadow: const [BoxShadow(color: Colors.grey)],
        ),
      ),

    ],
  );
}


Row allFriends(double width )

{
  Map<String, String> friends = {

    "j":"Images/Angel.jpg",
    "a":"Images/Dora.jpg",
    "n":"Images/Angel.jpg",
    "d":"Images/Dora.jpg",
672314970a

  };
  List<Widget> children =[];
  friends.forEach((name, imagepath) {
    children.add( actorsImage( imagepath, width));
  });
  return Row(
    children:
  children,
    mainAxisSize: MainAxisSize.max,
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  );
}