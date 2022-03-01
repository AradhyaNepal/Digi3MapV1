
import 'package:digi3map/common/constants.dart';
import 'package:digi3map/common/widgets/custom_snackbar.dart';
import 'package:digi3map/common/widgets/logo_widget.dart';
import 'package:digi3map/screens/homepage/provides/isLoggedValue.dart';
import 'package:digi3map/screens/homepage/views/splash_page.dart';
import 'package:digi3map/screens/homepage/widgets/play_sound_switch.dart';
import 'package:digi3map/screens/user_profile/view/user_self_profile.dart';
import 'package:digi3map/screens/user_profile/widgets/anonymous_widget.dart';
import 'package:digi3map/theme/colors.dart';
import 'package:digi3map/theme/styles.dart';
import 'package:flutter/material.dart';

class HomePageDrawer extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final height=MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        key: key,
        body: Container(
          height:height,
          padding: Constants.kPagePadding,
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                SizedBox(
                    width: double.infinity,
                    height: height*0.3,
                    child: FittedBox(
                        child: LogoWidget()
                    )
                ),

                Card(
                  elevation: 5,
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) =>  UserSelfProfile()));
                    },
                    child: ListTile(
                      leading: Icon(
                        Icons.person,
                        color: Colors.grey.withOpacity(0.4),
                      ),
                      title: Text("Profile"),
                    ),
                  ),
                ),
                Card(
                  elevation: 5,
                  child: InkWell(
                    onTap: (){
                    },
                    child: ListTile(
                      leading: Icon(
                        Icons.info,
                        color: Colors.grey.withOpacity(0.4),
                      ),
                      title: Text("About App"),
                    ),
                  ),
                ),
                Card(
                  elevation: 5,
                  child: InkWell(
                    onTap: (){
                    },
                    child: ListTile(
                      leading: Icon(
                        Icons.share,
                        color: Colors.grey.withOpacity(0.4),
                      ),
                      title: Text("Share App"),
                    ),
                  ),
                ),
                Card(
                  elevation: 5,
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) =>  UserSelfProfile()));
                    },
                    child: ListTile(
                      leading: Icon(
                        Icons.volume_up,
                        color: Colors.grey.withOpacity(0.4),
                      ),
                      title: Row(
                        children: [
                          Flexible(child: Text("Play Sound On Splash")),
                          SizedBox(width: 10,),
                          PlaySoundSwitch()
                        ],
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 5,
                  child: InkWell(
                    onTap: (){
                      showDialog(
                          context: context,
                          builder: (context){
                            return  AlertDialog(
                              title: Text(
                                  "Log Out",//,
                                  style:Styles.mediumHeading
                              ),
                              content: Text(
                                "Do You Really Want To Log Out",//,

                              ),
                              actions: [
                                TextButton(
                                    onPressed:(){
                                      Navigator.pop(context,true);//true is value
                                    },

                                    child: Text(
                                      'Yes',
                                      style: TextStyle(
                                          color: ColorConstant.kBlueColor,
                                          fontWeight: FontWeight.w600
                                      ),
                                    )
                                ),
                                TextButton(
                                    onPressed: (){
                                      Navigator.pop(context,false);//false is value
                                    },
                                    child: Text(
                                      'No',
                                      style: TextStyle(
                                        fontWeight:FontWeight.w600,
                                        color:Colors.grey.withOpacity(0.5),
                                      ),
                                    )
                                ),
                              ],
                            );
                          }
                      ).then((value) {
                        if (value==true) {
                          CustomSnackBar.showSnackBar(context, "Successfully Logged Out");
                          IsLoggedValue.loggedOut();
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) =>  SplashPage()));
                        }

                      }
                      );

                    },
                    child: ListTile(
                      leading: Icon(
                        Icons.logout,
                        color: Colors.grey.withOpacity(0.4),
                      ),
                      title: Text("Log Out"),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
