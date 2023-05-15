import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:meet_me/Pages/Registration/what_is_your_name.dart';
import 'package:meet_me/Utils/pink_button.dart';
import 'package:meet_me/Utils/globals.dart';
import 'package:new_gradient_app_bar/new_gradient_app_bar.dart';
import '../../Utils/Push.dart';
import '../../Utils/horizontal_divider.dart';

class WhatWeightAreYouLookingFor extends StatelessWidget {
  const WhatWeightAreYouLookingFor({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MeetMe',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WhatWeightAreYouLookingForPage(),
    );
  }
}

class WhatWeightAreYouLookingForPage extends StatefulWidget {
  const WhatWeightAreYouLookingForPage({Key? key}) : super(key: key);

  @override
  State<WhatWeightAreYouLookingForPage> createState() =>
      _WhatIsYourPurposeOfDatingState();
}

class _WhatIsYourPurposeOfDatingState
    extends State<WhatWeightAreYouLookingForPage> {
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
                      chooseSex + defaultText[4],
                      style: const TextStyle(
                        fontSize: 40,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const HorizontalDivider(height: 45),
                  ButtonPink(
                    text: peopleFat[0],
                    width: 373,
                    height: 59,
                    getSexed: () {
                      user.targetFat = 60;
                      Push().PushTo(WhatIsYourName(), context);
                    },
                  ),
                  const HorizontalDivider(height: 30),
                  ButtonPink(
                    text: peopleFat[1],
                    width: 373,
                    height: 59,
                    getSexed: () {
                      user.targetFat = 80;
                      Push().PushTo(WhatIsYourName(), context);
                    },
                  ),
                  const HorizontalDivider(height: 30),
                  ButtonPink(
                    text: peopleFat[2],
                    width: 373,
                    height: 59,
                    getSexed: () {
                      user.targetFat = 100;
                      Push().PushTo(WhatIsYourName(), context);
                    },
                  ),
                  const HorizontalDivider(height: 30),
                  ButtonPink(
                    text: peopleFat[3],
                    width: 373,
                    height: 59,
                    getSexed: () {
                      user.targetFat = 0;
                      Push().PushTo(WhatIsYourName(), context);
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
