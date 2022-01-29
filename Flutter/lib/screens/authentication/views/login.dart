import 'package:digi3map/common/constants.dart';
import 'package:digi3map/common/widgets/custom_big_blue_button.dart';
import 'package:digi3map/common/widgets/logo_widget.dart';
import 'package:digi3map/data/services/assets_location.dart';
import 'package:digi3map/screens/authentication/widgets/LoginFormWidget.dart';
import 'package:digi3map/screens/authentication/widgets/SocialWidget.dart';
import 'package:digi3map/testing_all_navigation.dart';
import 'package:digi3map/theme/colors.dart';
import 'package:digi3map/theme/styles.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: size.height,
          width: size.width,
          padding: Constants.kPagePaddingNoDown,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Constants.kBigBox,
                LogoWidget(),
                Constants.kBigBox,
                LoginFormWidget(),
                Constants.kSmallBox,
                Row(
                  children: [
                    Spacer(),
                    TextButton(
                        onPressed: (){
                          TestingAllNavigation.goToTestingPage(context);
                        },
                        child: Text(
                          'Forgot Password?',
                            style:Styles.forgotPasswordStyle
                        )
                    ),

                  ],
                ),

                Row(
                  children: [
                    Spacer(),
                    Expanded(
                      flex: 8,
                      child: FittedBox(
                        child: Row(
                          children: [
                            Text(
                              "Don't Have An Account?",
                              style: GoogleFonts.openSans(
                                  fontSize: 13
                              ),
                            ),
                            TextButton(
                                onPressed: (){
                                  TestingAllNavigation.goToTestingPage(context);
                                },
                                child: Text(
                                  'Sign Up',
                                  style: GoogleFonts.openSans(
                                      fontSize: 13,
                                      color: ColorConstant.kBlueColor,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            )
                          ],
                        ),
                      ),
                    ),
                    Spacer(),
                  ],
                ),
                SocialWidget(),

                Constants.kMediumBox
              ],
            ),
          ),
        ),
      ),
    );
  }


}
