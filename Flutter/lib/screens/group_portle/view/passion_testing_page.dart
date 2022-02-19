import 'package:digi3map/common/constants.dart';
import 'package:digi3map/screens/group_portle/widget/basic_effect.dart';
import 'package:digi3map/screens/group_portle/widget/lighting_effect.dart';
import 'package:digi3map/screens/group_portle/widget/passion_effect.dart';
import 'package:flutter/material.dart';

class PassionTestingPage extends StatefulWidget {

  const PassionTestingPage({Key? key}) : super(key: key);

  @override
  State<PassionTestingPage> createState() => _PassionTestingPageState();
}

class _PassionTestingPageState extends State<PassionTestingPage> {
  List<Widget> _messageWidget=[];
  final TextEditingController _controller=TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size=MediaQuery.of(context).size;
    return SafeArea(
        child: Scaffold(
          body: Container(
            padding: Constants.kPagePaddingNoDown,
            height: size.height,
            width: size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  flex: 5,
                  child: ListView(
                    physics: const BouncingScrollPhysics(),
                    children: _messageWidget,
                  ),
                ),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                          child: TextField(
                            keyboardType: TextInputType.multiline,
                            maxLines: 100,
                            maxLength: 254,
                            decoration: InputDecoration(
                              counterText: "",
                            ),
                            controller: _controller,
                          )
                      ),
                      IconButton(
                          onPressed: (){
                            _messageWidget=[..._messageWidget,PassionEffect(
                              message: _controller.text,
                              sender: "Aradhya Nepal",
                              time: DateTime.now().toIso8601String(),
                              leftAlign: true,
                            ),
                              BasicEffect(message: _controller.text, sender: "Aradhya Nepal", time: "",leftAlign: true,),
                              BasicEffect(message: _controller.text, sender: "Aradhya Nepal", time: "",leftAlign: false),
                              PassionEffect(
                                message: _controller.text,
                                sender: "Aradhya Nepal",
                                time: DateTime.now().toIso8601String(),
                                leftAlign: false,
                              )
                            ];

                            _controller.text="";
                            setState(() {

                            });
                          },
                          icon: Icon(Icons.send)
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        )
    );
  }
}