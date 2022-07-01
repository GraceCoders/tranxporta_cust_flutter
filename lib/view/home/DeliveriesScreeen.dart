import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:tranxporta/view/home/DeliveryDetailsScreen.dart';
import 'package:tranxporta/view/home/DeliveryTrackScreen.dart';

import '../../common_widget/button_widget.dart';
import '../../common_widget/button_widget_flat.dart';
import '../../common_widget/title_with_back.dart';
import '../../utils/color_utils.dart';
import '../../utils/style_utils.dart';

class DeliveriesScreen extends StatefulWidget {
  const DeliveriesScreen({Key? key}) : super(key: key);

  @override
  _DeliveriesState  createState() => _DeliveriesState();
}

class _DeliveriesState extends State<DeliveriesScreen> {
  final _formKey = GlobalKey<FormState>();
  void valfn() async {
    if (_formKey.currentState!.validate()) {

         Get.to(const DeliveryTrackScreen());
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
      backgroundColor: SlicingColors.colorwhite,
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          padding: const EdgeInsets.all(10),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  headerwithback(context, 'Deliveries'),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 203,
                    padding: const EdgeInsets.only(top: 10,),
                    decoration: BoxDecoration(
                        color: SlicingColors.colorgray,
                        borderRadius: BorderRadius.circular(12.0)
                    ),
                    child: Column(

                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Flexible(
                          child: Row(

                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                               children: [
                               Padding(
                                padding: const EdgeInsets.only(top: 10,left: 15),
                                child: Text("Order ID: #26832",
                                style: TextStyleConstants.commonStyleTweleve,
                                textAlign: TextAlign.start,
                          ),
                        ),

                        Spacer(),

                        Padding(
                              padding: const EdgeInsets.only(top: 10,right: 15),
                               child:  Text(
                               "Pending",
                                style: TextStyle(color: SlicingColors.coloryellow,fontSize: 12,fontWeight:FontWeight.w500 ),
                                textAlign: TextAlign.center,
                          ),
                        ),

                      ],
                    ),
                  ),

                        Container(
                          margin: const EdgeInsets.only(top: 10,left: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                  padding: const EdgeInsets.only(left: 5,top: 8),
                                  child: SvgPicture.asset("assets/icons/logo.svg",width: 43,height: 43,)
                              ),
                              Align(
                                child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 10,top: 10),
                                            child: Text(
                                              "Delivery location",
                                              style: TextStyleConstants.commonStyletwelevebold,
                                              textAlign: TextAlign.start,
                                            ),
                                          ),

                                          Align(

                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                    padding: const EdgeInsets.only(left: 10,top: 7),
                                                    child: SvgPicture.asset("assets/icons/loc.svg",width: 13.5,height: 13.5,)
                                                ),

                                                Padding(
                                                    padding: const EdgeInsets.only(left: 5,top: 5),
                                                    child:  Text(
                                                        "1966 Heron Way,United States",
                                                        style: TextStyleConstants.commonStyleFour,
                                                        textAlign: TextAlign.start,

                                                        softWrap: true
                                                    ),
                                                ),



                                              ],),
                                          ),

                                          Padding(
                                            padding: const EdgeInsets.only(left: 10,top: 10),
                                            child: Text(
                                              "Delivery on:",
                                              style: TextStyleConstants.commonStyletwelevebold,
                                              textAlign: TextAlign.start,
                                            ),
                                          ),

                                          Align(

                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                    padding: const EdgeInsets.only(left: 10,top: 7),
                                                    child: SvgPicture.asset("assets/icons/calendar.svg",width: 13.5,height: 13.5,)
                                                ),

                                                Padding(
                                                  padding: const EdgeInsets.only(left: 5,top: 5),
                                                  child:  Text(
                                                      "1st June. 2022 at 2:00 PM",
                                                      style: TextStyleConstants.commonStyleFour,
                                                      textAlign: TextAlign.start,

                                                      softWrap: true
                                                  ),
                                                ),



                                              ],),
                                          ),


                                  ],
                                ),
                              ),

                            ],
                          ),
                        ),

                        Padding(
                            padding: const EdgeInsets.only(top: 25),
                            child:   ButtonWidgetFlat(buttonName: 'Track',onpressed: valfn),
                        ),
                      ],
                    ),
                  ),
              SizedBox(height: 20,),


              Container(
                padding: const EdgeInsets.only(top: 10,),
                  child:ListView.separated(
                    primary: false,
                    shrinkWrap: true,
                    itemCount: 10,
                    itemBuilder: (context, index) {


                     return GestureDetector(
                       onTap: ()
                       {
                         Get.to(const DeliveriesDetailsScreen());
                       },
                       child: Container(
                            padding: const EdgeInsets.only(top: 10,bottom: 10),
                            decoration: BoxDecoration(
                                color: SlicingColors.colorgray,
                                borderRadius: BorderRadius.circular(12.0)
                            ),
                            child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Align(
                                child: Row(

                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.only(top: 10,left: 15),
                                      child: Text("Order ID: #26832",
                                        style: TextStyleConstants.commonStyleTweleve,
                                        textAlign: TextAlign.start,
                                      ),
                                    ),

                                    Spacer(),

                                    Padding(
                                      padding: const EdgeInsets.only(top: 10,right: 15),
                                      child:  Text(
                                        "Completed",
                                        style: TextStyle(color: SlicingColors.colorgreen,fontSize: 12,fontWeight:FontWeight.w500 ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),

                                  ],
                                ),
                              ),

                              Container(
                                margin: const EdgeInsets.only(top: 10,left: 10),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: const EdgeInsets.only(left: 5,top: 8),
                                        child: SvgPicture.asset("assets/icons/logo.svg",width: 43,height: 43,)
                                    ),
                                    Align(
                                      child: Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 10,top: 10),
                                            child: Text(
                                              "Delivery location",
                                              style: TextStyleConstants.commonStyletwelevebold,
                                              textAlign: TextAlign.start,
                                            ),
                                          ),

                                          Align(

                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                    padding: const EdgeInsets.only(left: 10,top: 7),
                                                    child: SvgPicture.asset("assets/icons/loc.svg",width: 13.5,height: 13.5,)
                                                ),

                                                Padding(
                                                  padding: const EdgeInsets.only(left: 5,top: 5),
                                                  child:  Text(
                                                      "1966 Heron Way,United States",
                                                      style: TextStyleConstants.commonStyleFour,
                                                      textAlign: TextAlign.start,

                                                      softWrap: true
                                                  ),
                                                ),



                                              ],),
                                          ),

                                          Padding(
                                            padding: const EdgeInsets.only(left: 10,top: 10),
                                            child: Text(
                                              "Delivered on:",
                                              style: TextStyleConstants.commonStyletwelevebold,
                                              textAlign: TextAlign.start,
                                            ),
                                          ),

                                          Align(

                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                    padding: const EdgeInsets.only(left: 10,top: 7),
                                                    child: SvgPicture.asset("assets/icons/calendar.svg",width: 13.5,height: 13.5,)
                                                ),

                                                Padding(
                                                  padding: const EdgeInsets.only(left: 5,top: 5),
                                                  child:  Text(
                                                      "10th  June. 2022 at 2:00 PM",
                                                      style: TextStyleConstants.commonStyleFour,
                                                      textAlign: TextAlign.start,

                                                      softWrap: true
                                                  ),
                                                ),



                                              ],),
                                          ),




                                        ],
                                      ),
                                    ),

                                  ],
                                ),

                              ),


                            ],
                          ),
                      ),
                     );


                    }, separatorBuilder: (BuildContext context, int index)
                  {
                   return Divider(
                     height: 12,
                     color: SlicingColors.colorwhite,
                   );

                  },

                  ),),





                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}