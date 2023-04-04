
 import 'package:flutter/material.dart';
 import 'package:readmore/readmore.dart';
class  NewPage extends StatefulWidget {
 const NewPage({super.key});
 @override
 State<NewPage> createState() => _NewPageState();
}
class Actors {
  final String image;
  const Actors({required this.image});
}
 const  List<Actors>  actors = [
   Actors(
    image: "Images/act1.jpg"
  ),
   Actors(
      image: "Images/act2.jpg"
  ),
   Actors(
      image: "Images/act3.jpg"
  ),
   Actors(
      image: "Images/act4.jpg"
  ),
   Actors(
      image: "Images/act5.jpg"
  ),
   Actors(
      image: "Images/act6.jpg"
  ),
   Actors(
      image: "Images/act7.jpg"
  )
];
 class _NewPageState extends State<NewPage> {


   @override
   Widget build(BuildContext context) {
     double width = MediaQuery.of(context).size.width;
     return Scaffold(
         backgroundColor: Colors.black,
         appBar: AppBar(
           backgroundColor: Colors.white54,
           leading: IconButton(
             onPressed: () {},
             icon: const Icon(Icons.arrow_back),
           ),
         ),
         body: Container(


           child: Column(
             children: [

               Card(
                 child: Image.asset("Images/Angel.jpg", height: 350, width: 700,
                   alignment: Alignment.topCenter,
                   fit: BoxFit.cover,
                 ),
               ),

               Row(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   mainAxisSize: MainAxisSize.max,
                   crossAxisAlignment: CrossAxisAlignment.center,

                   children: [
                     Container(
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                         color: Colors.white,
                       ),

                       child: const Text("18+",
                         style: TextStyle(
                           color: Colors.black,
                           fontWeight: FontWeight.bold,
                           fontSize: 20,
                         ),
                         textAlign: TextAlign.center,
                       ),

                       height: 30,
                       width: 50,
                     ),
                     Container(
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(10),
                         color: Colors.white,
                       ),

                       child:  Text("Action",
                         style: TextStyle(
                           color: Colors.black,
                           fontWeight: FontWeight.bold,
                           fontSize: 20,
                         ),
                         textAlign: TextAlign.center,
                       ),
                       height: 30,
                       width: 80,
                     ),
                    
                     
                         Row(
                           
                              children:[
                                Container(
                                    height: 30,
                                    width: 60,

                                   decoration: BoxDecoration(
                                     color: Colors.white,
                                     borderRadius: BorderRadius.circular(10),
     ),
                                   child:const  Row(
                                     children:[


                                    Icon(Icons.star,color: Colors.amber,),
                                       Text("5.0",
                                         style: TextStyle(
                                           fontWeight: FontWeight.bold,
                                           color: Colors.black,
                                           fontSize: 18,
                                         ),
                                         textAlign: TextAlign.center,
                                       ),


                                    ]

                                )
                                )
     ]
                         ),

                     Row(
                         crossAxisAlignment: CrossAxisAlignment.center,
                         mainAxisSize: MainAxisSize.max,
                         mainAxisAlignment: MainAxisAlignment.end,
                         children: [
                           IconButton(
                               onPressed: () {},
                               icon: const Icon(Icons.add_box_outlined)),

                           IconButton(
                               onPressed: () {},
                               icon: const Icon(Icons.send)),
                         ]
                     )

                   ]

               ),

               const SizedBox(height: 12,),
               Container(
                 margin: const EdgeInsets.only(right: 250),
                height: 20,
                 child: const Text(
                   "Angel Has Fallen",
                   style: TextStyle(
                     color: Colors.white,
                     fontWeight: FontWeight.bold,
                   ),
                   //textAlign: TextAlign.center,
                 ),
               ),
               const SizedBox(height: 7,),
   Container(
       margin: EdgeInsets.all(5),
     child: const ReadMoreText(
           "Mike Banning is framed for the attempted assassination"
           "of the president and must evade this own agency and the FBI "
               "as he tries to uncover the real threat.After the events in "
           "the previous film,Secret Service agent Mike Banning is framed "
           "for the attempted assassination. ",
       trimLines: 4,
       colorClickableText: Colors.red,
       trimMode: TrimMode.Line,
       trimCollapsedText: 'More',
       trimExpandedText: 'Show less',

       style: TextStyle(

         color: Colors.white,
         decorationThickness: 1,
       ),
       textAlign: TextAlign.center,
     ),
   ),

              // SizedBox(height: 12,),
               Container(
                 margin: EdgeInsets.only(right: 300),
               child:  sectionTitleText("Actors"),
               ),
    SingleChildScrollView(
scrollDirection: Axis.horizontal,
         //  sectionTitleText("Actors"),

             // allFriends(width/5),
 child:Row(
  children: [
    allFriends(width/4),
    SizedBox(width: 12,),
    allFriends(width/4),
    SizedBox(width: 12,),
    allFriends(width/4),
    SizedBox(width: 12,),
    allFriends(width/4),
    SizedBox(width: 12,),
    allFriends(width/4),
    SizedBox(width: 12,),
    allFriends(width/4),
    SizedBox(width: 12,),
    allFriends(width/4),
    SizedBox(width: 12,),

  ],
)
     ),
           ],
         )






     )


     );

   }

   Column actorsImage( String imagepath,double width){
     return Column(
       children: [
         Container(
           margin:EdgeInsets.all(5),
           width: width,
           height: width,
           decoration: BoxDecoration(
             image: DecorationImage(image: AssetImage(imagepath),fit:BoxFit.cover),
             borderRadius: BorderRadius.circular(10),
             color: Colors.blue,
             boxShadow: [BoxShadow(color: Colors.grey)],
           ),
         ),

       ],
     );
   }


   Row allFriends(double width )

   {
     Map<String, String> friends = {

       "j":"Images/act5.jpg",
       "a":"Images/act2.jpg",
       "n":"Images/act3.jpg",
       "d":"Images/act4.jpg",


     };
     List<Widget> children =[];
     friends.forEach((name, imagepath) {
       children.add( actorsImage( imagepath, width));
     });
     return Row(children:
     children,
       mainAxisSize: MainAxisSize.max,
       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
     );
   }
   Widget sectionTitleText(String text) {
     return Padding(
       padding: EdgeInsets.all(5),

       child: Text(
         text,
         style: TextStyle(
           fontWeight: FontWeight.w600,
           color: Colors.white,
           fontSize: 18,
         ),
         //textAlign: TextAlign.left,

       ),

     );

   }
   }
 class ActorCard extends StatelessWidget {
   final String image;
   final double width;

   const ActorCard({
     required this.image,
     this.width = 100.0,
     Key? key}) :super(key: key);

   @override
   Widget build(BuildContext context) =>
       Container(
         width: width,
         margin: const EdgeInsets.symmetric(horizontal: 8.0),
         child: ClipRRect(
           borderRadius: BorderRadius.circular(16.0),
           child: Column(
             children: [
               Row(
                 children: [
                   Expanded(child: buildimage())
                 ],
               )
             ],
           ),
         ),
       );

   Widget buildimage() =>
       Image.asset(
         image,
         width: width,
         fit: BoxFit.cover,
       );


 }


