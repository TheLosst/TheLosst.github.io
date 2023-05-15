import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meet_me/Pages/Registration/choose_sex_page.dart';
import 'package:meet_me/Pages/Registration/what_is_your_purpose_of_dating.dart';

//import 'package:meet_me/Pages/Registration/what_is_your_purpose_of_dating.dart';
import 'package:meet_me/Utils/pink_button.dart';
import 'package:meet_me/Utils/globals.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import '../../Utils/Push.dart';
import '../../Utils/horizontal_divider.dart';

class WhoDoYouWantToMeet extends StatelessWidget {
  const WhoDoYouWantToMeet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MeetMe',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WhoDoYouWantToMeetPage(),
    );
  }
}

class WhoDoYouWantToMeetPage extends StatefulWidget {
  const WhoDoYouWantToMeetPage({Key? key}) : super(key: key);

  @override
  State<WhoDoYouWantToMeetPage> createState() => _WhoDoYouWantToMeetPageState();
}

class _WhoDoYouWantToMeetPageState extends State<WhoDoYouWantToMeetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: NewGradientAppBar(
        title: SizedBox(
            width: 267 / MediaQuery.of(context).devicePixelRatio,
            height: 105 / MediaQuery.of(context).devicePixelRatio,
            child: IconButton(
              icon: SvgPicture.asset("lib/Svg/MeetMe white.svg"),
              onPressed: () {},
            )),
        gradient: LinearGradient(colors: [
          Color.fromRGBO(255, 64, 144, 1),
          Color.fromRGBO(255, 64, 144, 1)
        ]),
        elevation: 0,
      ),
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Color.fromRGBO(255, 64, 144, 1), Colors.black])),
        child: Center(
          child: FittedBox(
            fit: BoxFit.contain,
            child: Container(
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(50)),
                  boxShadow: [
                    BoxShadow(
                        color: Color.fromRGBO(0, 0, 0, 0.25),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset: Offset(0, 3))
                  ]),
              width: 595 / MediaQuery.of(context).devicePixelRatio,
              height: 544 / MediaQuery.of(context).devicePixelRatio,
              child: Column(
                children: [
                  const HorizontalDivider(height: 40),
                  Center(
                    child: Text(
                      defaultText[1],
                      style: const TextStyle(
                        fontSize: 40,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const HorizontalDivider(height: 80),
                  ButtonPink(
                      text: withSex[0],
                      width: 373,
                      height: 59,
                      getSexed: () {
                        user.targetMeet = 0;
                        Push().PushTo(WhatIsYourPurposeOfDating(), context);
                      }),
                  const HorizontalDivider(height: 30),
                  ButtonPink(
                      text: withSex[1],
                      width: 373,
                      height: 59,
                      getSexed: () {
                        user.targetMeet = 1;
                        Push().PushTo(WhatIsYourPurposeOfDating(), context);
                      }),
                  const HorizontalDivider(height: 30),
                  ButtonPink(
                      text: withSex[2],
                      width: 373,
                      height: 59,
                      getSexed: () {
                        user.targetMeet = 2;
                        Push().PushTo(WhatIsYourPurposeOfDating(), context);
                      }),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
