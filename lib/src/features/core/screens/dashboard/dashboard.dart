import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tiket/src/constants/colors.dart';
import 'package:tiket/src/constants/image_string.dart';
import 'package:tiket/src/constants/sizes.dart';
import 'package:tiket/src/constants/text_strings.dart';
class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    appBar: AppBar(
      backgroundColor: Colors.transparent,
       elevation: 0,
       actions: [
         Container(
           margin: EdgeInsets.symmetric(horizontal: 20, vertical: 7),
           decoration:BoxDecoration(
             borderRadius:BorderRadius.circular(10),color: tCardBgColor
           ),
           child:

           IconButton(
             onPressed: (){},icon: Image(image: AssetImage(userIcon),),
           ),
         )
       ],
       leading: Icon(Icons.menu,color: Colors.black,),
        title: Text(tAppName,style: GoogleFonts.poppins(
           fontSize: 15,
          fontWeight: FontWeight.bold,
          color: Colors.black87
      ),), centerTitle: true,

    ),
      body:SingleChildScrollView(
        child: Container(
              padding: EdgeInsets.all(tDashboardCardPadding),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 //header
                 Text(tDashoardTitle,style: GoogleFonts.montserrat( fontSize: 16),),
                 Text(tDashoardHeading,style: GoogleFonts.montserrat( fontSize: 20,fontWeight: FontWeight.bold),),
                    SizedBox(height: tDashboardPadding,),
                 //search box
                 Container(
                   padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
                   decoration: BoxDecoration(
                     border: Border(left:  BorderSide(width: 4)),

                   ),

                   child:Row(
                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
                     children: [
                       Text(tDashboardSearch,style: GoogleFonts.montserrat(
                           fontSize: 20,
                           fontWeight: FontWeight.bold,
                           color:Colors.grey
                       ),
                         ),
                        Icon(Icons.mic, size: 25,)
                     ],
                   ),
                 ),
                 SizedBox(height: tDashboardPadding,),
                 //Categorie,
                 SizedBox(
                   height: 45,
                   child: ListView(
                     shrinkWrap:true,
                     scrollDirection: Axis.horizontal,
                     children: [
                       SizedBox(
                         width: 170,
                         height: 50,
                         child: Row(
                           children: [
                             Container(
                               width: 45,
                               height: 45,
                               decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: tDarkColor),
                               child: Center(
                                  child: Text("js",style: GoogleFonts.montserrat( fontSize: 16,color: Colors.white),),
                               ),
                             ),
                             SizedBox(width:8,),
                             Flexible(
                               child: Column(

                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 mainAxisAlignment:MainAxisAlignment.center ,
                                 children: [
                                   Text("java script developement " ,style: GoogleFonts.montserrat( fontSize: 15 ,fontWeight: FontWeight.bold),overflow: TextOverflow.ellipsis, ),
                                   Text("10 lesson",style: GoogleFonts.montserrat( fontSize: 14),overflow: TextOverflow.ellipsis, )
                                 ],
                               ),
                             )

                           ],
                         ),

                       ),
                       SizedBox(
                         width: 170,
                         height: 50,
                         child: Row(
                           children: [
                             Container(
                               width: 45,
                               height: 45,
                               decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: tDarkColor),
                               child: Center(
                                  child: Text("js",style: GoogleFonts.montserrat( fontSize: 16,color: Colors.white),),
                               ),
                             ),
                             SizedBox(width:8,),
                             Flexible(
                               child: Column(

                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 mainAxisAlignment:MainAxisAlignment.center ,
                                 children: [
                                   Text("java script developement " ,style: GoogleFonts.montserrat( fontSize: 15 ,fontWeight: FontWeight.bold),overflow: TextOverflow.ellipsis, ),
                                   Text("10 lesson",style: GoogleFonts.montserrat( fontSize: 14),overflow: TextOverflow.ellipsis, )
                                 ],
                               ),
                             )

                           ],
                         ),

                       ),
                       SizedBox(
                         width: 170,
                         height: 50,
                         child: Row(
                           children: [
                             Container(
                               width: 45,
                               height: 45,
                               decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: tDarkColor),
                               child: Center(
                                  child: Text("js",style: GoogleFonts.montserrat( fontSize: 16,color: Colors.white),),
                               ),
                             ),
                             SizedBox(width:8,),
                             Flexible(
                               child: Column(

                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 mainAxisAlignment:MainAxisAlignment.center ,
                                 children: [
                                   Text("java script developement " ,style: GoogleFonts.montserrat( fontSize: 15 ,fontWeight: FontWeight.bold),overflow: TextOverflow.ellipsis, ),
                                   Text("10 lesson",style: GoogleFonts.montserrat( fontSize: 14),overflow: TextOverflow.ellipsis, )
                                 ],
                               ),
                             )

                           ],
                         ),

                       ),

                     ],
                   ),
                 ),

                 //banner
                 SizedBox(height: tDashboardPadding,),
                 Row(
                   crossAxisAlignment:CrossAxisAlignment.start ,
                   children: [
                     Expanded(
                       child: Container(
                         decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: tCardBgColor),
                         padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                         child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Row(
                               crossAxisAlignment: CrossAxisAlignment.start,
                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                               children: const [

                                 Flexible(child: Image(image:AssetImage(bookmark),)),
                                 Flexible(child: Image(image:AssetImage(welcomeImage),)),

                               ],

                             ),
                             SizedBox(height: tDashboardPadding,),
                             Text("$tDashboardBannerTitle1" ,style:
                             GoogleFonts.montserrat(
                                 fontSize: 15 ,
                                 fontWeight: FontWeight.bold),
                               overflow: TextOverflow.ellipsis,maxLines: 2,),
                             Text("$tDashboardBannersubTitle",style: GoogleFonts.montserrat( fontSize: 14),overflow: TextOverflow.ellipsis, maxLines: 2, )

                           ],
                         ),
                       ),
                     ),
                     SizedBox(height: tDashboardPadding,),
                     Expanded(child: Column(
                        children: [
                          Container(
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: tCardBgColor),
                            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: const [

                                    Flexible(child: Image(image:AssetImage(bookmark),)),
                                    Flexible(child: Image(image:AssetImage(tOnboardingImagePage3),)),

                                  ],

                                ),
                                SizedBox(height: tDashboardPadding,),
                                Text("java" ,style:
                                GoogleFonts.montserrat(
                                    fontSize: 15 ,
                                    fontWeight: FontWeight.bold),
                                  overflow: TextOverflow.ellipsis,maxLines: 2,),
                                Text("10 lessons",style: GoogleFonts.montserrat( fontSize: 14),overflow: TextOverflow.ellipsis, maxLines: 2, )

                              ],
                            ),
                          ),
                          SizedBox(
                            width: double.infinity,
                            child: OutlinedButton(onPressed: (){

                            },

                                style: OutlinedButton.styleFrom(
                                    foregroundColor: btnBorder,
                                    side: BorderSide(color: btnBorder)
                                ),
                                child: Text(tDashboardBannerButton,style: GoogleFonts.poppins(fontSize: 15),)
                            ),
                          ),
                        ],
                     ))

                   ],
                 ),
                 SizedBox(height: tDashboardPadding,),
                 Text(tDashboardTopCourses,style: GoogleFonts.montserrat( fontSize: 18 ,fontWeight: FontWeight.bold)),
                 SizedBox(
                   height: 200,
                   child:
                     ListView(
                       shrinkWrap: true,
                       scrollDirection: Axis.horizontal,
                       children: [
                         SizedBox(
                           height:320 ,
                           width: 250,
                           child: Container(
                             decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: tCardBgColor),
                             padding:EdgeInsets.all(10),
                             child: Column(
                               crossAxisAlignment:CrossAxisAlignment.start,
                               children: [
                                  Row(
                                    mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                                    children: [
                                      Flexible(
                                        child: Text("flutter developpin" ,style: GoogleFonts.montserrat( fontSize: 18 ,
                                            fontWeight: FontWeight.bold),overflow: TextOverflow.ellipsis,maxLines: 2, ),
                                      ),
                                Flexible(child: Image(image: AssetImage(loginimage),width: 110,))

                                    ],
                                  ),
                                 Row(
                                   children: [
                                     ElevatedButton(onPressed: (){},
                                       style: ElevatedButton.styleFrom(
                                         backgroundColor: btnBorder,
                                         shape: CircleBorder()
                                       ),
                                       child:Icon(Icons.play_arrow) ,

                                     ),
                                     SizedBox(width: tDashboardCardPadding,),
                                     Column(
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("3 sections" ,style: GoogleFonts.montserrat( fontSize: 18, fontWeight: FontWeight.bold),overflow: TextOverflow.ellipsis,),
                                        Text("programming Languages" ,style: GoogleFonts.montserrat( fontSize: 10 ,),overflow: TextOverflow.ellipsis ),
                                      ],
                                     )
                                   ],
                                 )
                               ],
                             ),

                           ),
                         ),
                         SizedBox(
                           height:320 ,
                           width: 250,
                           child: Container(
                             decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: tCardBgColor),
                             padding:EdgeInsets.all(10),
                             child: Column(
                               crossAxisAlignment:CrossAxisAlignment.start,
                               children: [
                                  Row(
                                    mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                                    children: [
                                      Flexible(
                                        child: Text("flutter developpin" ,style: GoogleFonts.montserrat( fontSize: 18 ,
                                            fontWeight: FontWeight.bold),overflow: TextOverflow.ellipsis,maxLines: 2, ),
                                      ),
                                Flexible(child: Image(image: AssetImage(loginimage),width: 110,))

                                    ],
                                  ),
                                 Row(
                                   children: [
                                     ElevatedButton(onPressed: (){},
                                       style: ElevatedButton.styleFrom(
                                         backgroundColor: btnBorder,
                                         shape: CircleBorder()
                                       ),
                                       child:Icon(Icons.play_arrow) ,

                                     ),
                                     SizedBox(width: tDashboardCardPadding,),
                                     Column(
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("3 sections" ,style: GoogleFonts.montserrat( fontSize: 18, fontWeight: FontWeight.bold),overflow: TextOverflow.ellipsis,),
                                        Text("programming Languages" ,style: GoogleFonts.montserrat( fontSize: 10 ,),overflow: TextOverflow.ellipsis ),
                                      ],
                                     )
                                   ],
                                 )
                               ],
                             ),

                           ),
                         ),
                         SizedBox(
                           height:320 ,
                           width: 250,
                           child: Container(
                             decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: tCardBgColor),
                             padding:EdgeInsets.all(10),
                             child: Column(
                               crossAxisAlignment:CrossAxisAlignment.start,
                               children: [
                                  Row(
                                    mainAxisAlignment:MainAxisAlignment.spaceBetween ,
                                    children: [
                                      Flexible(
                                        child: Text("flutter developpin" ,style: GoogleFonts.poppins( fontSize: 18 ,
                                            fontWeight: FontWeight.bold),overflow: TextOverflow.ellipsis,maxLines: 2, ),
                                      ),
                                Flexible(child: Image(image: AssetImage(tOnboardingImagePage1),width: 110,))

                                    ],
                                  ),
                                 Row(
                                   children: [
                                     ElevatedButton(onPressed: (){},
                                       style: ElevatedButton.styleFrom(
                                         backgroundColor: btnBorder,
                                         shape: CircleBorder()
                                       ),
                                       child:Icon(Icons.play_arrow) ,

                                     ),
                                     SizedBox(width: tDashboardCardPadding,),
                                     Column(
                                       crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text("3 sections" ,style: GoogleFonts.montserrat( fontSize: 18, fontWeight: FontWeight.bold),overflow: TextOverflow.ellipsis,),
                                        Text("programming Languages" ,style: GoogleFonts.montserrat( fontSize: 10 ,),overflow: TextOverflow.ellipsis ),
                                      ],
                                     )
                                   ],
                                 )
                               ],
                             ),

                           ),
                         ),
                       ],
                     ),

                 )
               ],
             ),
        ),
      ),
    );
  }
}
