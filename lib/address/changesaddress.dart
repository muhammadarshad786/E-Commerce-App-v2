import 'package:flutter/material.dart';
import 'package:task_5/address/customwidget.dart';
import 'package:task_5/model.dart';
import 'package:task_5/responsive.dart';

class ChangesAddress extends StatelessWidget {
  const ChangesAddress({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Image.asset('assets/images/Back ICon.png'),
          onPressed: () => Navigator.pop(context),
        ),
        title:  Text(
          'Add New Address',
          style: TextStyle(
            fontFamily: 'OPEN_SANS_semibold',
            fontSize: SizeConfig.getFont(20),
            color: Color(0xffFD8F1F),
          ),
        ),
        centerTitle: true,
      ),
      
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          height: SizeConfig.getHeight(900),
          child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildAddressContainer('assets/images/icons/address 3.png'),
                  _buildAddressContainer('assets/images/icons/address 2.png'),
                  _buildAddressContainer('assets/images/icons/address 1.png'),
                ],
              ),
              SizedBox(height: SizeConfig.getHeight(20)),
              Expanded(
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemBuilder: (BuildContext context, int index) {
                    final item = iconsLabelHint[index];
                    return TEXTFIELDWIDGET(icons: item.images, label: item.name, hint: item.label);
                  },
                  itemCount: iconsLabelHint.length,
                ),
              ),
            
             Container(
         height: SizeConfig.getHeight(70),
         width: SizeConfig.getWidth(425),
    
           
         child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
           children: [
           
             SizedBox(
               width: SizeConfig.getWidth(10),
             ),
             SizedBox(
               height: SizeConfig.getHeight(50),
               width: SizeConfig.getWidth(210),
               child: TextButton(
                 style: IconButton.styleFrom(
                   backgroundColor: Color(0xff13548D),
                   foregroundColor: Colors.white,
                   shape: const RoundedRectangleBorder(
                       borderRadius:
                           BorderRadius.all(Radius.circular(5))),
                 ),
                 onPressed: () {},
                 child:const Text('Save Changes',style:
                       TextStyle(fontFamily: 'OPEN_SANS_BOLD', fontSize: 13))
               ),
             ),
             SizedBox(
               width: SizeConfig.getWidth(25),
              // height:  SizeConfig.getHeight(25),
             ),
             Container(
               decoration: BoxDecoration(
                 borderRadius: BorderRadius.all(Radius.circular(5)),
                 
                 border: Border.all(
                   color: Color(0xffFF3743)
                 )
               ),
               height: SizeConfig.getHeight(50),
               width: SizeConfig.getWidth(119),
               child: ElevatedButton(
                 style: ElevatedButton.styleFrom(
                 
                   foregroundColor: Color(0xffFF3743),
                   shape: const RoundedRectangleBorder(
                     borderRadius: BorderRadius.all(Radius.circular(5))
                     
                       
                           ),
                 ),
                 onPressed: () {},
                 child: const Text(
                   'Reset',style:
                       TextStyle(fontFamily: 'OPEN_SANS_BOLD', fontSize: 13),
                 ),
               ),
             )
           ],
         ),
       ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAddressContainer(String imagePath) {
    return Container(
      height: 84,
      width: 84,
      decoration: BoxDecoration(
        border: Border.all(color:const Color(0xff13548D)),
        borderRadius:const BorderRadius.all(Radius.circular(16))
      ),
      child: Image.asset(imagePath),
    );
  }
}