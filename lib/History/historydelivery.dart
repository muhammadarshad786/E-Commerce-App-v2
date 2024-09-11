import 'package:flutter/material.dart';
import 'package:task_5/responsive.dart';


class OrderHistory extends StatelessWidget {
  const OrderHistory({super.key});

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
          'Delivery History',
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.all(10),
              height: SizeConfig.getHeight(80),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      spreadRadius: 1,
                      blurRadius: 3,
                    ),
                  ],
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              child:  Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: SizeConfig.getHeight(17),
                  ),
                  Center(
                      child: Text(
                    '16 April 2021',
                    style: TextStyle(
                        fontFamily: 'OPEN_SANS_semibold',
                        fontSize: SizeConfig.getFont(16),
                        color: Color(0xff1E2022)),
                  )),
                  Center(
                      child: Text('Estimated delivery date',
                          style: TextStyle(
                              fontFamily: 'OPEN_SANS_Regular',
                              fontSize: SizeConfig.getFont(14),
                              color: Color(0xff77838F)))) 
                ],
              ),
            ),
            Container(
              height: SizeConfig.getHeight(400),
              margin: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      spreadRadius: 1,
                      blurRadius: 3,
                    ),
                  ],
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
                  child:  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Text('Shipment Number',style: TextStyle(fontFamily: 'OPEN_SANS_semibold',fontSize: SizeConfig.getFont(14),color: Color(0xff1E2022)),),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: SizeConfig.getWidth(130)),
                            child: Text('AT6875975',style: TextStyle(fontFamily: 'OPEN_SANS_Regular',fontSize: SizeConfig.getFont(14),color: Color(0xff757575))),
                          )
                        ],
                      ),
                      Stack(
                        
                        children: [
                          Padding(
                            padding:  EdgeInsets.only(left: SizeConfig.getWidth(20),top: SizeConfig.getHeight(10)),
                            child: Image.asset('assets/images/Line.png'),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(left: SizeConfig.getWidth(70)),
                            child: Text('Shipping received',style: TextStyle(fontFamily: 'OPEN_SANS_semibold',fontSize: SizeConfig.getFont(14),color: Color(0xff1E2022))),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(left: SizeConfig.getWidth(70),top: SizeConfig.getHeight(30)),
                            child: Text('14 April 2021, 09:45 am',style: TextStyle(fontFamily: 'OPEN_SANS_semibold',fontSize:  SizeConfig.getFont(14),color: Color(0xff757575))),
                          ),
                            Padding(
                            padding:  EdgeInsets.only(left: SizeConfig.getWidth(70),top: SizeConfig.getHeight(70)),
                            child: Text('In case of transport',style: TextStyle(fontFamily: 'OPEN_SANS_semibold',fontSize:  SizeConfig.getFont(14),color: Color(0xff1E2022))),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(left: SizeConfig.getWidth(70),top: SizeConfig.getHeight(110)),
                            child: Text('14 April 2021, 09:45 am',style: TextStyle(fontFamily: 'OPEN_SANS_semibold',fontSize:  SizeConfig.getFont(14),color:Color(0xff757575))),
                          ),
                            Padding(
                            padding:  EdgeInsets.only(left: SizeConfig.getWidth(70),top: SizeConfig.getHeight(140)),
                            child: Text('Vehicle change & transfer',style: TextStyle(fontFamily: 'OPEN_SANS_semibold',fontSize:  SizeConfig.getFont(14),color: Color(0xff1E2022))),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(left: SizeConfig.getWidth(70),top: SizeConfig.getHeight(180)),
                            child: Text('14 April 2021, 09:45 am',style: TextStyle(fontFamily: 'OPEN_SANS_semibold',fontSize:  SizeConfig.getFont(14),color: Color(0xff757575))),
                          ),
                              Padding(
                            padding:  EdgeInsets.only(left: SizeConfig.getWidth(70),top: SizeConfig.getHeight(210)),
                            child: Text('On delivery',style: TextStyle(fontFamily: 'OPEN_SANS_semibold',fontSize:  SizeConfig.getFont(14),color: Color(0xff1E2022))),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(left: SizeConfig.getWidth(70),top: SizeConfig.getHeight(250)),
                            child: Text('14 April 2021, 09:45 am',style: TextStyle(fontFamily: 'OPEN_SANS_semibold',fontSize:  SizeConfig.getFont(14),color: Color(0xff757575))),
                          ),
                               Padding(
                            padding:  EdgeInsets.only(left: SizeConfig.getWidth(70),top: SizeConfig.getHeight(280)),
                            child: Text('Was delivered',style: TextStyle(fontFamily: 'OPEN_SANS_semibold',fontSize:  SizeConfig.getFont(14),color: Color(0xff1E2022))),
                          ),
                          Padding(
                            padding:  EdgeInsets.only(left: SizeConfig.getWidth(70),top: SizeConfig.getHeight(310)),
                            child: Text('14 April 2021, 09:45 am',style: TextStyle(fontFamily: 'OPEN_SANS_semibold',fontSize:  SizeConfig.getFont(14),color: Color(0xff757575))),
                          ),
                          


                        ],
                      )

            

                    ],
                  ),
            ),
            Container(
              height: SizeConfig.getHeight(96),
              margin: EdgeInsets.all(10),
              width: double.maxFinite,
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      spreadRadius: 1,
                      blurRadius: 3,
                    ),
                  ],
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              child: Column(
                children: [
                   SizedBox(
                    height: SizeConfig.getHeight(10),
                  ),
                   Text('I want fast delivery with + QAR20',
                      style: TextStyle(
                          fontFamily: 'OPEN_SANS_semibold', fontSize: SizeConfig.getFont(14))),
                   SizedBox(
                    height: SizeConfig.getHeight(10),
                  ),
                  Container(
                    height: SizeConfig.getHeight(43),
                    width: SizeConfig.getWidth(314),
                    decoration: const BoxDecoration(
                        color: Color(0xff13548D),
                        borderRadius: BorderRadius.all(Radius.circular(5)),
                        shape: BoxShape.rectangle),
                    child: TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: Color(0xff13548D),
                            foregroundColor: Colors.white),
                        onPressed: () {},
                        child:  Text(
                          'Apply',
                          style: TextStyle(
                              fontFamily: 'OPEN_SANS_BOLD', fontSize: SizeConfig.getFont(15)),
                        )),
                  )
                ],
              ),
            ),
             SizedBox(
              height: SizeConfig.getHeight(10),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: SizeConfig.getHeight(96),
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.4),
                        spreadRadius: 1,
                        blurRadius: 3,
                      ),
                    ],
                    borderRadius: const BorderRadius.all(Radius.circular(10))),
                child: Row(
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left: SizeConfig.getWidth(10)),
                      child: Container(
                        height: SizeConfig.getHeight(50),
                        width: SizeConfig.getWidth(210),
                        decoration: const BoxDecoration(
                            color: Color(0xffFD8F1F),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            shape: BoxShape.rectangle),
                        child:  Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: SizeConfig.getWidth(10)),
                              child: Center(
                                  child:Image.asset('assets/images/icons/Vector.png')
                              
                              ),
                            ),
                            SizedBox(
                              width: SizeConfig.getWidth(10),
                            ),
                            Center(
                                child: Text(
                              'Call the Courier',
                              style: TextStyle(color: Colors.white,fontFamily: 'OPEN_SANS_BOLD',fontSize: SizeConfig.getFont(14)),
                            ))
                          ],
                        ),
                      ),
                    ),
                                        Padding(
                      padding:  EdgeInsets.only(left: SizeConfig.getWidth(10)),
                      child: Container(
                        height: SizeConfig.getHeight(50),
                        width: SizeConfig.getWidth(135),
                        decoration:  BoxDecoration(
                          color: Colors.white,
                           
                            border: Border.all(
                              color: Color(0xffFD8F1F),
                              width: 1.0

                            ),
                            borderRadius: BorderRadius.all(Radius.circular(5)),
                            shape: BoxShape.rectangle),
                        child:  Row(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: SizeConfig.getWidth(10)),
                              child: Center(
                                  child: Image.asset('assets/images/icons/Group.png')
                              
                              ),
                            ),
                           const SizedBox(
                              width: 4,
                            ),
                           const Center(
                                child: Text(
                              'Live Support',
                              style: TextStyle(color:Color(0xffFD8F1F),fontFamily: 'OPEN_SANS_BOLD',fontSize: 14),
                            ))
                          ],
                        ),
                      )
                                        )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
