
import 'package:digi3map/common/constants.dart';
import 'package:digi3map/data/services/assets_location.dart';
import 'package:digi3map/screens/milestone/view/milestone_page.dart';
import 'package:digi3map/screens/milestone/widgets/coin_value_widget.dart';
import 'package:digi3map/theme/colors.dart';
import 'package:digi3map/theme/styles.dart';
import 'package:flutter/material.dart';

class MileStoneWidget extends StatelessWidget {
  final int progressValue;
  const MileStoneWidget({
    required this.progressValue,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int progress=progressValue;
    int maxLimit=100;
    if(progress>100) progress=100;
    return Container(
      height: 125,
      margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 0),
      child: Card(
        elevation: 5,
        margin: const EdgeInsets.all(0),
        color:ColorConstant.kGreyCardColor,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Row(
            children: [
              Expanded(
                  child: Image.asset(
                      AssetsLocation.mileStoneDummyLocation
                  )
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                  flex: 3,
                  child: Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Workout",
                          style: Styles.mediumHeading,
                        ),
                        Spacer(flex: 2,),
                        Text(
                            "Spend total 10 hour",
                            style:Styles.smallHeading
                        ),
                        Constants.kVerySmallBox,
                        Row(
                          children: [
                            Expanded(
                                flex: progress,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(topLeft: Radius.circular(3),bottomLeft: Radius.circular(3)),
                                    color: ColorConstant.kBlueColor,
                                  ),
                                  height: 10,
                                )
                            ),
                            Expanded(
                                flex: maxLimit-progress,
                                child: Container(
                                  height: 10,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(topRight: Radius.circular(3),bottomRight: Radius.circular(3)),
                                    color: ColorConstant.kBlueColor.withOpacity(0.3),
                                  ),
                                )
                            )
                          ],
                        ),
                        Spacer(flex: 4,),


                      ],
                    ),
                  )
              ),
              SizedBox(width: 10,),
              Expanded(
                  child: FittedBox(
                      child: Column(
                        children: [
                          CoinValueWidget(
                            value: 10,
                          ),
                          if(progress==100)
                            TextButton(
                                onPressed: (){},
                                child: Text(
                                  "Collect",
                                  style: Styles.blueHighlight,
                                )
                            )
                        ],
                      )
                  )
              )

            ],
          ),
        ),
      ),
    );
  }
}
