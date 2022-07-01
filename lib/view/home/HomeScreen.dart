import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:tranxporta/view/auth/LoginScreen.dart';
import 'package:tranxporta/view/home/CreatePickupScreen.dart';
import 'package:tranxporta/view/home/DeliveriesScreeen.dart';
import 'package:tranxporta/view/home/HelpScreen.dart';

import '../../common_widget/button_widget.dart';
import '../../common_widget/head_text_small_widget.dart';
import '../../common_widget/head_text_widget.dart';
import '../../utils/color_utils.dart';
import '../../utils/style_utils.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState  extends State<HomeScreen>{
  final _formKey = GlobalKey<FormState>();
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey();
  void valfn() async {
    if (_formKey.currentState!.validate()) {

        Get.to(const CreatePickupScreen());
      //   AppWidget.showDialogLoading();
      //   var params = {
      //     'unameORemail': _useridController.text,
      //     'pwd': _passwordController.text
      //   };
      //   Map map = await service.login(params);
      //   if (map['statusCode'] == 200) {
      //     AppWidget.hideDialog();
      //     SharedPref.getInstance()!.addStringToSF(AppKeys.loginId, map['data']['_id']);
      //     SharedPref.getInstance()!.addStringToSF(AppKeys.name, map['data']['uname']);
      //     SharedPref.getInstance()!.addStringToSF(AppKeys.email, map['data']['email']);
      //     SharedPref.getInstance()!.addStringToSF(AppKeys.profile, map['data']['profileImage']);
      //     SharedPref.getInstance()!.addToken(AppKeys.token, map['data']['token']);
      //     //Get.(MainScreen(currentIndex: 0));
      //
      //     Navigator.of(context).pushAndRemoveUntil(
      //         MaterialPageRoute(
      //             builder: (context) => MainScreen(
      //               currentIndex: 0,
      //
      //             )),
      //             (Route<dynamic> route) => false);
      //     // Navigator.of(context).pushReplacementNamed('/home');
      //   }else{
      //     AppWidget.hideDialog();
      //     showDialog(
      //         context: context,
      //         builder: (context) {
      //           return AlertDialog(
      //             content: Text(map['message']),
      //             actions: <Widget>[
      //               // ignore: deprecated_member_use
      //               FlatButton(
      //                   onPressed: () {
      //                     Navigator.of(context).pop();
      //                   },
      //                   child: Text('Ok'))
      //             ],
      //           );
      //         });
      //   }
    }
  }

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     key: _scaffoldKey,
     backgroundColor: SlicingColors.colorwhite,

     appBar: AppBar(
       elevation: 0.0,
       automaticallyImplyLeading: false,
       backgroundColor: SlicingColors.colorwhite,
       flexibleSpace: Container(
         padding: const EdgeInsets.only(top: 20,left: 7,right: 7),

         child: Row(

           crossAxisAlignment: CrossAxisAlignment.start,
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             IconButton(
               alignment: Alignment.topCenter,
               icon: Padding(
                   padding: const EdgeInsets.only(left: 10,top: 10),
                   child: SvgPicture.asset("assets/icons/menu.svg",width: 33,height: 33,)
               ),
               onPressed: () {
                 _scaffoldKey.currentState?.openDrawer();

               //  print("your menu action here");
               },
             ),


             IconButton(
               alignment: Alignment.center,
               icon: Padding(
                   padding: const EdgeInsets.only(left: 10,top: 10),
                   child: SvgPicture.asset("assets/icons/notification.svg",width: 33,height: 33,)
               ),
               onPressed: () {
                 _scaffoldKey.currentState?.openDrawer();
               },
             ),


           ],
         ),
       ),
     ),
     drawer: Container(
       width: 270,
     child: Drawer(
       child: ListView(
         // Important: Remove any padding from the ListView.
         padding: EdgeInsets.zero,
         children: [

           Container(
             height: 200,
             color: SlicingColors.colorPrimary,
         child: SizedBox(


           child: Stack(
            alignment: Alignment.center,
             children: [

               CircleAvatar(

                 radius: 50,
                   child: SvgPicture.asset("assets/icons/profile.svg",width: 70,height: 70,)

               ),

               Positioned(

                   right: 80,

                   top: 120,

                   child: IconButton(
                     alignment: Alignment.center,
                     icon: Padding(
                         padding: const EdgeInsets.only(),
                         child: SvgPicture.asset("assets/icons/camera.svg",width: 29,height: 29,)
                     ),
                     onPressed: () {
                     },
                   ),
               ),

               Container(
                 alignment: Alignment.bottomCenter,
                 child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Padding(
                       padding: const EdgeInsets.only(bottom: 10, top: 15),
                       child: Text(
                         "Zack Bomer",
                         style: TextStyleConstants.commonStylewhite,
                         textAlign: TextAlign.center,
                       ),
                     ),

                     Padding(
                         padding: const EdgeInsets.only(left: 10,top: 10,bottom: 5),
                         child: SvgPicture.asset("assets/icons/edit.svg",width: 12,height: 12,)
                     ),



                   ],
                 ),
               )

             ],
           ),

         ),

       ),




           //.................deliveries........................
           ListTile(
             leading: IconButton(
               alignment: Alignment.center,
               icon: Padding(
                   padding: const EdgeInsets.only(),
                   child: SvgPicture.asset("assets/icons/orders.svg",width: 35,height: 35,)
               ),
               onPressed: () {
                 Get.to(DeliveriesScreen());
               },
             ),
             title: Text(
               "Deliveries",
               style: TextStyleConstants.commonStyle,
             ),
             onTap: () {
               Get.to(DeliveriesScreen());
             },
           ),

           //....................help............................./
           ListTile(
             leading: IconButton(
               alignment: Alignment.center,
               icon: Padding(
                   padding: const EdgeInsets.only(),
                   child: SvgPicture.asset("assets/icons/faq.svg",width: 35,height: 35,)
               ),
               onPressed: () {
                 Get.to(HelpScreen());
               },
             ),
             title: Text(
               "Help",
               style: TextStyleConstants.commonStyle,
             ),
             onTap: () {
               Get.to(HelpScreen());
             },
           ),

          //......................terms&conditions .........................
           ListTile(
             leading: IconButton(
               alignment: Alignment.center,
               icon: Padding(
                   padding: const EdgeInsets.only(),
                   child: SvgPicture.asset("assets/icons/terms.svg",width: 35,height: 35,)
               ),
               onPressed: () {
                 //_scaffoldKey.currentState?.openDrawer();
               },
             ),
             title: Text(
               "Terms & conditions",
               style: TextStyleConstants.commonStyle,
             ),
             onTap: () {
               Navigator.pop(context);
             },
           ),

           //........................privacy_policy>...........................

           ListTile(
             leading: IconButton(
               alignment: Alignment.center,
               icon: Padding(
                   padding: const EdgeInsets.only(),
                   child: SvgPicture.asset("assets/icons/privacy.svg",width: 35,height: 35,)
               ),
               onPressed: () {
              //   _scaffoldKey.currentState?.openDrawer();
               },
             ),
             title: Text(
               "Privacy Policy",
               style: TextStyleConstants.commonStyle,
             ),
             onTap: () {
               Navigator.pop(context);
             },
           ),
         //...............................logout.............................

           ListTile(
             leading: IconButton(
               icon: Padding(
                   padding: const EdgeInsets.only(),
                   child: SvgPicture.asset("assets/icons/logout.svg",width: 35,height: 35,)
               ),
               onPressed: () {
                 Navigator.pushAndRemoveUntil(
                     context,
                     MaterialPageRoute(
                         builder: (context) => LoginScreen()
                     ),
                     ModalRoute.withName("/Home")
                 );
               },
             ),
             title: Text(
               "Logout",
               style: TextStyleConstants.commonStyle,
             ),
             onTap: () {
               Navigator.pushAndRemoveUntil(
                   context,
                   MaterialPageRoute(
                       builder: (context) => LoginScreen()
                   ),
                   ModalRoute.withName("/Home")
               );
             },
           ),
         ],
       ),
     ),
     ),
     body: SafeArea(
       child: Stack(
         children: [
           Container(
             margin: const EdgeInsets.only(right: 10,left: 10),
             height: MediaQuery.of(context).size.height,
               child: Form(
                 key: _formKey,
                 child: Column(
                 crossAxisAlignment: CrossAxisAlignment.center ,
                   children: [

                     Padding(
                         padding: const EdgeInsets.only(top: 20),
                         child: SvgPicture.asset("assets/icons/delivery.svg",width: 200,height: 200,)
                     ),


                           Padding(
                             padding: const EdgeInsets.only(bottom: 10, top: 15),
                             child: Text(
                               "Do you want to send a parcel?",
                               style: TextStyleConstants.commonStylebold,
                               textAlign: TextAlign.center
                             ),
                           ),


                     Padding(
                       padding: const EdgeInsets.only(bottom: 20, top: 15,left: 10,right: 10),
                       child: Text(
                         "Want to send something to someone. Don’t worry! We are here at your service.",
                         style: TextStyleConstants.commonStyle,
                         textAlign: TextAlign.center,
                       ),
                     ),


                     SizedBox(
                       height: 30,
                     ),

                     ButtonWidget(
                       buttonName: 'Create pickup request',
                       onpressed: valfn,
                     ),









                   ],
               ),
               ),

           )
         ],

       ),
     ),

   );
  }
}

