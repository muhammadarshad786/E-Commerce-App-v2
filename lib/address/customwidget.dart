import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:task_5/responsive.dart';

class TEXTFIELDWIDGET extends StatefulWidget {
  String icons;
  String hint;
  String label;
   TEXTFIELDWIDGET({super.key,required this.icons,required this.label,required this.hint});

  @override
  State<TEXTFIELDWIDGET> createState() => _TEXTFIELDWIDGETState();
}

class _TEXTFIELDWIDGETState extends State<TEXTFIELDWIDGET> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
        height: SizeConfig.getHeight(55),
        width: SizeConfig.getWidth(349),
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: TextFormField(
          decoration: InputDecoration(
            hintText: widget.hint,
            hintStyle:const TextStyle(fontFamily: 'OPEN_SANS_Regular',fontSize: 14,color: Color(0xff757575)),
            label: Text('   ${widget.label}   '),
            suffixIcon: Image.asset(widget.icons),
            labelStyle: const TextStyle(
              fontFamily: 'OPEN_SANS_semibold',
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Color(0xff13548D),
            ),
            contentPadding: const EdgeInsets.symmetric(horizontal: 30),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(28)),
          ),
        ),
      );
  }
}