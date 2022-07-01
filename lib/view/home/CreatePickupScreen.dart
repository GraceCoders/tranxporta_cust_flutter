import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:tranxporta/common_widget/button_widget.dart';
import 'package:tranxporta/utils/color_utils.dart';
import 'package:tranxporta/view/home/PickupScreenTwo.dart';

import '../../common_widget/title_with_back.dart';
import '../../utils/style_utils.dart';

class CreatePickupScreen extends StatefulWidget {
  const CreatePickupScreen({Key? key}) : super(key: key);

  @override
  _CreatePickupScreenState createState() => _CreatePickupScreenState();
}

class _CreatePickupScreenState extends State<CreatePickupScreen>{
  final TextEditingController _descriptipncontroller = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  var _dropDownWeight;
  var _dropDownCategory;
  var _dropDownVehicle;
  void valfn() async {
    if (_formKey.currentState!.validate()) {

        Get.to(const PickupScreenTwo());
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
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(right: 10,left: 10),
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  headerwithback(context, 'Create pickup request'),
                  Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: SvgPicture.asset("assets/icons/box.svg",width: 73,height: 72,)
                  ),

                  Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: SvgPicture.asset("assets/icons/step1.svg",width: 100,height: 20,)
                  ),
                   const SizedBox(
                     height: 20,
                   ),

                  Padding(
                    padding: const EdgeInsets.only(bottom: 10, top: 15),
                    child: Text(
                      "Basic Details",
                      style: TextStyleConstants.commonStylebold,
                      textAlign: TextAlign.start,
                    ),
                  ),

                  //........................parcel weight.........................

                  Container(
                    margin: const EdgeInsets.only(right: 10,left: 10,top: 10),
                    padding: EdgeInsets.only(right: 10,left: 10),
                    decoration: BoxDecoration(
                      border: Border.all(color: SlicingColors.boarderColor),
                      borderRadius: const BorderRadius.all(Radius.circular(12)),),
                    child: Column(
                      children: [
                        DropdownButton(

                          elevation: 10,
                          underline: Container(
                            color: SlicingColors.colorwhite,
                          ),
                          hint: _dropDownWeight == null
                              ? Text('Parcel weight')
                              : Text(
                            _dropDownWeight,
                            style: TextStyle(color: SlicingColors.textColor),

                          ),

                          isExpanded: true,

                          iconSize: 30.0,

                          items: ['10kg', '50kg', '100kg','120kg', '150kg', '160kg'].map(
                                (val) {
                              return DropdownMenuItem<String>(
                                value: val,
                                child: Text(val),
                              );
                            },
                          ).toList(),
                          onChanged: (valuu) {
                            setState(
                                  () {
                                    _dropDownWeight = valuu;
                              },
                            );
                          },
                        ),

                      ],
                    ),



                  ),


                  //........................parcel category.........................

                  Container(
                    margin: const EdgeInsets.only(right: 10,left: 10,top: 10),
                    padding: EdgeInsets.only(right: 10,left: 10),
                    decoration: BoxDecoration(
                      border: Border.all(color: SlicingColors.boarderColor),
                      borderRadius: const BorderRadius.all(Radius.circular(12)),),
                    child: Column(
                      children: [
                        DropdownButton(

                          elevation: 10,
                          underline: Container(
                            color: SlicingColors.colorwhite,
                          ),
                          hint: _dropDownCategory == null
                              ? Text('Parcel Category')
                              : Text(
                            _dropDownCategory,
                            style: TextStyle(color: SlicingColors.textColor),

                          ),

                          isExpanded: true,

                          iconSize: 30.0,

                          items: ['small', 'medium', 'large',].map(
                                (val) {
                              return DropdownMenuItem<String>(
                                value: val,
                                child: Text(val),
                              );
                            },
                          ).toList(),
                          onChanged: (valuu) {
                            setState(
                                  () {
                                    _dropDownCategory = valuu;
                              },
                            );
                          },
                        ),

                      ],
                    ),



                  ),


                  //........................parcel category.........................

                  Container(
                    margin: const EdgeInsets.only(right: 10,left: 10,top: 10),
                    padding: EdgeInsets.only(right: 10,left: 10),
                    decoration: BoxDecoration(
                      border: Border.all(color: SlicingColors.boarderColor),
                      borderRadius: const BorderRadius.all(Radius.circular(12)),),
                    child: Column(
                      children: [
                        DropdownButton(

                          elevation: 10,
                          underline: Container(
                            color: SlicingColors.colorwhite,
                          ),
                          hint: _dropDownVehicle == null
                              ? Text('Preferred pickup vehicle')
                              : Text(
                            _dropDownVehicle,
                            style: TextStyle(color: SlicingColors.textColor),

                          ),

                          isExpanded: true,

                          iconSize: 30.0,

                          items: ['Test truck 1', 'Test truck 2 ', 'test truck 3',].map(
                                (val) {
                              return DropdownMenuItem<String>(
                                value: val,
                                child: Text(val),
                              );
                            },
                          ).toList(),
                          onChanged: (valuu) {
                            setState(
                                  () {
                                    _dropDownVehicle = valuu;
                              },
                            );
                          },
                        ),

                      ],
                    ),



                  ),

                  Container(
                    margin: const EdgeInsets.only(right: 10,left: 10,top: 10),
                    height: 100,
                    decoration: BoxDecoration(
                      border: Border.all(color: SlicingColors.boarderColor),
                      borderRadius: const BorderRadius.all(Radius.circular(12)),),
                    child: Column(
                      children:[

                        TextField (
                          controller:_descriptipncontroller,
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.multiline,
                          minLines: 1,//Normal textInputField will be displayed
                          maxLines: 5,
                          style: TextStyle(fontSize: 14,color: Colors.black),
                          decoration:const InputDecoration(
                              border: InputBorder.none,

                              focusedBorder: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              errorBorder: InputBorder.none,
                              disabledBorder: InputBorder.none,
                              contentPadding:
                              EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
                              hintText: "Description"),

                        ),


                      ],
                    ),



                  ),
                  Container(
                    margin: const EdgeInsets.only(top: 30,bottom: 30,right: 10,left: 10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ButtonWidget(buttonName: 'Save & next',onpressed: valfn),

                      ],
                    ),
                  ),

                ],
              ),
            ),
            ),

          )
        ],

      ),
    ),
  );
  }
}