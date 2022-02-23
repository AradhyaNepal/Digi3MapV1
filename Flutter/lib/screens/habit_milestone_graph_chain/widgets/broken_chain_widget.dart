
import 'package:digi3map/common/constants.dart';
import 'package:digi3map/screens/habit_milestone_graph_chain/widgets/multiple_chain_widget.dart';
import 'package:digi3map/theme/styles.dart';
import 'package:flutter/material.dart';

class BrokenChainWidget extends StatelessWidget {
  const BrokenChainWidget({
    Key? key,
    required this.brokenChainDays,
  }) : super(key: key);

  final List<int> brokenChainDays;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Broken Chain",
          style: Styles.smallHeading,
        ),
        Constants.kSmallBox,
        for(int i=0;i<brokenChainDays.length;i++)
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    "Chain ${i+1}: ",
                    style: TextStyle(
                        fontWeight: FontWeight.bold
                    ),
                  ),
                  Text(
                      "${brokenChainDays[i]} days"
                  )
                ],
              ),
              Constants.kVerySmallBox,
              MultipleChainWidget(chainNumber: brokenChainDays[i]),
              Constants.kSmallBox
            ],
          )
      ],
    );
  }
}
