import 'package:flutter/material.dart';
import 'package:task_5/responsive.dart';


class ControlledUI extends StatelessWidget {
  const ControlledUI({super.key});

  @override
  Widget build(BuildContext context) {
  
    SizeConfig().init(context);

    double containerHeight = SizeConfig.getHeight(812);
    double containerWidth = SizeConfig.getWidth(375);
    double innerContainerHeight = SizeConfig.getHeight(184);
    double innerContainerWidth = SizeConfig.getWidth(327);
   
    

    return Scaffold(
      body: Container(
        height: containerHeight,
        width: containerWidth,
        color: Colors.red,
        child: Column(
          children: [
            Container(
              height: innerContainerHeight,
              width: innerContainerWidth,
              color: Colors.blue,
              child:  Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:  EdgeInsets.only(left:SizeConfig.getWidth(200) ),
                    child: Text('hello',style:TextStyle(fontSize: SizeConfig.getFont(20.0) )),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
