import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:tranxporta/view/home/PickupScreenThree.dart';

import '../../common_widget/button_widget.dart';
import '../../common_widget/textfield_widget.dart';
import '../../common_widget/title_with_back.dart';
import '../../utils/color_utils.dart';
import '../../utils/style_utils.dart';

class PickupScreenTwo extends StatefulWidget {
  const PickupScreenTwo({Key? key}) : super(key: key);

  @override
  _PickupScreenTwoState createState() => _PickupScreenTwoState();
}
class _PickupScreenTwoState extends State<PickupScreenTwo>{
  final TextEditingController _SenderName = TextEditingController();
  final TextEditingController _SenderNumber = TextEditingController();
  final TextEditingController _SenderAddress = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  void valfn() async {
    if (_formKey.currentState!.validate()) {

        Get.to(const PickupScreenThree());
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
              margin: const EdgeInsets.only(right: 20,left: 20),
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
                          child: SvgPicture.asset("assets/icons/box2.svg",width: 73,height: 72,)
                      ),

                      Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: SvgPicture.asset("assets/icons/step2.svg",width: 100,height: 20,)
                      ),
                      const SizedBox(
                        height: 20,
                      ),

                      Padding(
                        padding: const EdgeInsets.only(bottom: 10, top: 15),
                        child: Text(
                          "Pickup Details",
                          style: TextStyleConstants.commonStylebold,
                          textAlign: TextAlign.start,
                        ),
                      ),

                      TextFieldWidget(
                        hint: 'Sender Name',
                        controller:_SenderName,
                        secure: false,
                        errMsg: "Please Enter Sender Name",
                      ),

                      TextFieldWidget(
                        hint: 'Contact Number',
                        controller:_SenderNumber,
                        secure: false,
                        errMsg: "Please Enter Sender Contact Number",
                      ),
                      TextFieldWidget(
                        hint: 'Address',
                        controller:_SenderAddress,
                        secure: false,
                        errMsg: "Please Enter Sender Address",
                      ),

                      //........................parcel weight.........................


                      Container(
                        margin: const EdgeInsets.only(top: 30),
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