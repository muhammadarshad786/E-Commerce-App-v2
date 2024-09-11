import 'package:flutter/material.dart';
import 'package:task_5/responsive.dart';

class MYORDER extends StatefulWidget {
  const MYORDER({super.key});

  @override
  State<MYORDER> createState() => _MYORDERState();
}

class _MYORDERState extends State<MYORDER> {

  bool _isCurrent=false;
  bool _isComplete=true;
  bool _isPending=true;
  bool _isCancell=true;
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
          'My Orders ',
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
          children: [
            SizedBox(
              height: SizeConfig.getHeight(30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(
                          backgroundColor:_isCurrent? Colors.white:Color(0xff13548D)),
                    onPressed: () {
                      setState(() {
                        _isCurrent=!_isCurrent;
                      });
                  
                    },
                    child:  Text('Current',
                        style: TextStyle(
                            fontFamily: 'OPEN_SANS_semibold',
                            fontSize: SizeConfig.getFont(12),
                            color:_isCurrent? Color(0xff13548D):Colors.white)),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor:_isComplete? Colors.white:Color(0xff13548D),
                      shadowColor: Colors.grey.withOpacity(0.7),
                    ),
                    onPressed: () {
                      setState(() {
                        _isComplete=!_isComplete;
                      });
                    },
                    child:  Text('Complete',
                        style: TextStyle(
                            fontFamily: 'OPEN_SANS_semibold',
                            fontSize: SizeConfig.getFont(12),
                            color: _isComplete? Color(0xff13548D):Colors.white)),
                  ),
                  ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: _isPending? Colors.white:Color(0xff13548D)),
                    onPressed: () {
                      setState(() {
                        _isPending=!_isPending;
                      });
                    },
                    child:  Text('Pending',
                        style: TextStyle(
                            fontFamily: 'OPEN_SANS_semibold',
                            fontSize: SizeConfig.getFont(12),
                            color:  _isPending? Color(0xff13548D):Colors.white)),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor:
                            _isCancell? Colors.white:Color(0xff13548D)
                        ),
                    onPressed: () {
                      setState(() {
                        _isCancell=!_isCancell;
                      });
                    },
                    child:  Text('Cancel',
                        style: TextStyle(
                            fontFamily: 'OPEN_SANS_semibold',
                            fontSize: SizeConfig.getFont(12),
                            color:  _isCancell? Color(0xff13548D):Colors.white)),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10),
              height: SizeConfig.getHeight(240),
              width: SizeConfig.getWidth(363),
               decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      spreadRadius: 1,
                      blurRadius: 3,
                    ),
                  ],
                  borderRadius: const BorderRadius.all(Radius.circular(7))),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        child:  Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: SizeConfig.getWidth(10)),
                                  child: Text(
                                    'Order # ',
                                    style: TextStyle(
                                        color:const Color(0xff757575),
                                        fontFamily: 'OPEN_SANS_BOLD',
                                        fontSize: SizeConfig.getFont(15)),
                                  ),
                                ),
                                Text('24089794727000824',
                                    style: TextStyle(
                                        color: Color(0xff13548D),
                                        fontFamily: 'OPEN_SANS_BOLD',
                                        fontSize: SizeConfig.getFont(15)))
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: SizeConfig.getWidth(10)),
                                  child: Text(
                                    'Placed On : Oct15, 2021 10:00:00 PM',
                                    style: TextStyle(
                                        color: Color(0xff757575),
                                        fontFamily: 'OPEN_SANS_semibold',
                                        fontSize: SizeConfig.getFont(10)),
                                  ),
                                ),

                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(left: SizeConfig.getWidth(110),top: SizeConfig.getHeight(10)),
                        child: Image.asset('assets/images/Order/Group 3123 (1).png')
                      )
                    ],
                  ),
                const  Divider(
                    indent: 10,
                    endIndent: 10,
                  ),
 Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: SizeConfig.getHeight(68),
                       // width: SizeConfig.getWidth(65),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(left: SizeConfig.getWidth(10)),
                              child: Image.asset('assets/images/Order/placeholder.png'),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: SizeConfig.getWidth(5)),
                                  child: Text(
                                    'LED Monitor With High Quality\nIn The World',
                                    style: TextStyle(
                                        fontFamily: 'OPEN_SANS_semibold',
                                        fontSize: SizeConfig.getFont(12),fontWeight: FontWeight.w900),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: SizeConfig.getWidth(5)),
                                      child: Text('Order Amount :',
                                          style: TextStyle(
                                              fontFamily: 'OPEN_SANS_BOLD',
                                              fontSize: SizeConfig.getFont(12),
                                              color: Color(0xff757575))),
                                    ),
                                    Text(
                                      'QAR 976',
                                      style: TextStyle(
                                          color: Color(0xff13548D),
                                          fontFamily: 'OPEN_SANS_BOLD',
                                          fontSize: SizeConfig.getFont(11)),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: SizeConfig.getWidth(5)),
                                      child: Text('1 x',
                                          style: TextStyle(
                                              fontFamily: 'OPEN_SANS_BOLD',
                                              fontSize: SizeConfig.getFont(12),color: Color(0xff13548D))),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: SizeConfig.getWidth(205)),
                                      child: Text(
                                        'Cancelled',
                                        style: TextStyle(
                                            color: Color(0xffD93C65),
                                            fontFamily: 'OPEN_SANS_semibold',
                                            fontSize: SizeConfig.getFont(10)),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const Divider(
                    endIndent: 10,
                    indent: 10,
                  ),
 Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: SizeConfig.getHeight(68),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(left: SizeConfig.getWidth(10)),
                              child: Image.asset('assets/images/Order/Rectangle 833.png'),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: SizeConfig.getWidth(5)),
                                  child: Text(
                                    'LED Monitor With High Quality\nIn The World',
                                    style: TextStyle(
                                        fontFamily: 'OPEN_SANS_semibold',
                                        fontSize: SizeConfig.getFont(12),fontWeight: FontWeight.w900),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: SizeConfig.getWidth(5)),
                                      child: Text('Order Amount :',
                                          style: TextStyle(
                                              fontFamily: 'OPEN_SANS_BOLD',
                                              fontSize: SizeConfig.getFont(12),
                                              color: Color(0xff757575))),
                                    ),
                                    Text(
                                      'QAR 976',
                                      style: TextStyle(
                                          color: Color(0xff13548D),
                                          fontFamily: 'OPEN_SANS_BOLD',
                                          fontSize: SizeConfig.getFont(11)),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: SizeConfig.getWidth(5)),
                                      child: Text('1 x',
                                          style: TextStyle(
                                              fontFamily: 'OPEN_SANS_BOLD',
                                              fontSize: SizeConfig.getFont(12),color: Color(0xff13548D))),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: SizeConfig.getWidth(205)),
                                      child: Text(
                                        'Cancelled',
                                        style: TextStyle(
                                            color: Color(0xffD93C65),
                                            fontFamily: 'OPEN_SANS_semibold',
                                            fontSize: SizeConfig.getFont(10)),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                   Padding(
                     padding:  EdgeInsets.only(left: SizeConfig.getWidth(10),top: SizeConfig.getHeight(10)),
                     child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: SizeConfig.getHeight(27),
                          width: SizeConfig.getWidth(110),
                         
                          decoration: BoxDecoration(
                             border: Border.all(
                              color:const Color(0xff13548D)
                             ),
                            borderRadius: const BorderRadius.all(Radius.circular(5))
                          ),
                          child: TextButton(onPressed: (){},child:  Text('Write a Review',style: TextStyle(color: Color(0xff13548D),fontFamily: 'POPINS_MEDIUM',fontSize: SizeConfig.getFont(10),fontWeight: FontWeight.w400),),),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(left: SizeConfig.getWidth(70),top: SizeConfig.getHeight(5)),
                          child:  Text('1 Item, Total Amount : ',style: TextStyle(color: Color(0xff757575),fontFamily: 'OPEN_SANS_BOLD',fontSize: SizeConfig.getFont(10))),
                        ),
                        Text(' QAR 976',style: TextStyle(color: Color(0xff13548D),fontFamily: 'OPEN_SANS_BOLD',fontSize: SizeConfig.getFont(15),fontWeight: FontWeight.w900)), //13548D
                      ],
),
                   )
                ],
              ),
             
            ),
 Container(
              margin:const EdgeInsets.all(10),
              height: SizeConfig.getHeight(160),
                            decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      spreadRadius: 1,
                      blurRadius: 3,
                    ),
                  ],
                  borderRadius: const BorderRadius.all(Radius.circular(7))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        child:  Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: SizeConfig.getWidth(10)),
                                  child: Text(
                                    'Order # ',
                                    style: TextStyle(
                                        color: Color(0xff757575),
                                        fontFamily: 'OPEN_SANS_BOLD',
                                        fontSize: SizeConfig.getFont(15)),
                                  ),
                                ),
                                Text('24089794727000824',
                                    style: TextStyle(
                                        color: Color(0xff13548D),
                                        fontFamily: 'OPEN_SANS_BOLD',
                                        fontSize: SizeConfig.getFont(15)))
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: SizeConfig.getWidth(10)),
                                  child: Text(
                                    'Placed On : Oct15, 2021 10:00:00 PM',
                                    style: TextStyle(
                                        color: Color(0xff757575),
                                        fontFamily: 'OPEN_SANS_semibold',
                                        fontSize: SizeConfig.getFont(10)),
                                  ),
                                ),
                             
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(left: SizeConfig.getWidth(120)),
                        child: Image.asset('assets/images/Order/Group 3123.png'),
                      )
                    ],
                  ),
                 const Divider(
                    indent: 10,
                    endIndent: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: SizeConfig.getHeight(68),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(left: SizeConfig.getWidth(10)),
                              child: Image.asset('assets/images/Order/Rectangle 833.png'),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: SizeConfig.getWidth(5)),
                                  child: Text(
                                    'LED Monitor With High Quality\nIn The World',
                                    style: TextStyle(
                                        fontFamily: 'OPEN_SANS_semibold',
                                        fontSize: SizeConfig.getFont(12),fontWeight: FontWeight.w900),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: SizeConfig.getWidth(5)),
                                      child: Text('Order Amount :',
                                          style: TextStyle(
                                              fontFamily: 'OPEN_SANS_BOLD',
                                              fontSize: SizeConfig.getFont(12),
                                              color: Color(0xff757575))),
                                    ),
                                    Text(
                                      'QAR 976',
                                      style: TextStyle(
                                          color: Color(0xff13548D),
                                          fontFamily: 'OPEN_SANS_BOLD',
                                          fontSize: SizeConfig.getFont(11)),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: SizeConfig.getWidth(5)),
                                      child: Text('1 x',
                                          style: TextStyle(
                                              fontFamily: 'OPEN_SANS_BOLD',
                                              fontSize: SizeConfig.getFont(12),color: Color(0xff13548D))),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: SizeConfig.getWidth(205)),
                                      child: Text(
                                        'Delivered',
                                        style: TextStyle(
                                            color: Color(0xff23B198),
                                            fontFamily: 'OPEN_SANS_semibold',
                                            fontSize: SizeConfig.getFont(10)),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                 Padding(
                     padding:  EdgeInsets.only(left: SizeConfig.getWidth(10),top: SizeConfig.getHeight(10)),
                     child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                      height: SizeConfig.getHeight(27),
                          width: SizeConfig.getWidth(110),
                         
                          decoration: BoxDecoration(
                             border: Border.all(
                              color:const Color(0xff13548D)
                             ),
                            borderRadius: const BorderRadius.all(Radius.circular(5))
                          ),
                          child: TextButton(onPressed: (){},child:  Text('Write a Review',style: TextStyle(color: Color(0xff13548D),fontFamily: 'POPINS_MEDIUM',fontSize: SizeConfig.getFont(10),fontWeight: FontWeight.w400),),),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(left:SizeConfig.getWidth(70),top: SizeConfig.getHeight(5)),
                          child:  Text('1 Item, Total Amount : ',style: TextStyle(color: Color(0xff757575),fontFamily: 'OPEN_SANS_BOLD',fontSize: SizeConfig.getFont(10))),
                        ),
                        Text(' QAR 976',style: TextStyle(color: Color(0xff13548D),fontFamily: 'OPEN_SANS_BOLD',fontSize: SizeConfig.getFont(15),fontWeight: FontWeight.w900)), //13548D
                      ],
),
                   )
                  
                ],
              ),

            ),
            Container(
              margin: EdgeInsets.all(10),
              height: SizeConfig.getHeight(40),
                      decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      spreadRadius: 1,
                      blurRadius: 3,
                    ),
                  ],
                  borderRadius: const BorderRadius.all(Radius.circular(7))),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        child: Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: SizeConfig.getWidth(10)),
                                  child: Text(
                                    'Order # ',
                                    style: TextStyle(
                                        color: Color(0xff757575),
                                        fontFamily: 'OPEN_SANS_BOLD',
                                        fontSize: SizeConfig.getFont(15)),
                                  ),
                                ),
                                Text('24089794727000824',
                                    style: TextStyle(
                                        color: Color(0xff13548D),
                                        fontFamily: 'OPEN_SANS_BOLD',
                                        fontSize: SizeConfig.getFont(15)))
                              ],
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                               Padding(
                                  padding: EdgeInsets.only(left: SizeConfig.getWidth(10)),
                                  child: Text(
                                    'Placed On : Oct15, 2021 10:00:00 PM',
                                    style: TextStyle(
                                        color: Color(0xff757575),
                                        fontFamily: 'OPEN_SANS_semibold',
                                        fontSize: SizeConfig.getFont(10)),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(left: SizeConfig.getWidth(110)),
                        child: Image.asset('assets/images/Order/Group 3123 (1).png'),
                      )
                    ],
                  ),
                ],
              ),
      
            ),
           Container(
              margin:const EdgeInsets.all(10),
              height: SizeConfig.getHeight(160),
                            decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.4),
                      spreadRadius: 1,
                      blurRadius: 3,
                    ),
                  ],
                  borderRadius: const BorderRadius.all(Radius.circular(7))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Container(
                        child:  Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: SizeConfig.getWidth(10)),
                                  child: Text(
                                    'Order # ',
                                    style: TextStyle(
                                        color: Color(0xff757575),
                                        fontFamily: 'OPEN_SANS_BOLD',
                                        fontSize: SizeConfig.getFont(15)),
                                  ),
                                ),
                                Text('24089794727000824',
                                    style: TextStyle(
                                        color: Color(0xff13548D),
                                        fontFamily: 'OPEN_SANS_BOLD',
                                        fontSize: SizeConfig.getFont(15)))
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: SizeConfig.getWidth(10)),
                                  child: Text(
                                    'Placed On : Oct15, 2021 10:00:00 PM',
                                    style: TextStyle(
                                        color: Color(0xff757575),
                                        fontFamily: 'OPEN_SANS_semibold',
                                        fontSize: SizeConfig.getFont(10)),
                                  ),
                                ),
                             
                              ],
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding:  EdgeInsets.only(left: SizeConfig.getWidth(120)),
                        child: Image.asset('assets/images/Order/Group 3123.png'),
                      )
                    ],
                  ),
                 const Divider(
                    indent: 10,
                    endIndent: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: SizeConfig.getHeight(68),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding:  EdgeInsets.only(left: SizeConfig.getWidth(10)),
                              child: Image.asset('assets/images/Order/Rectangle 833.png'),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: SizeConfig.getWidth(5)),
                                  child: Text(
                                    'LED Monitor With High Quality\nIn The World',
                                    style: TextStyle(
                                        fontFamily: 'OPEN_SANS_semibold',
                                        fontSize: SizeConfig.getFont(12),fontWeight: FontWeight.w900),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: SizeConfig.getWidth(5)),
                                      child: Text('Order Amount :',
                                          style: TextStyle(
                                              fontFamily: 'OPEN_SANS_BOLD',
                                              fontSize: SizeConfig.getFont(12),
                                              color: Color(0xff757575))),
                                    ),
                                    Text(
                                      'QAR 976',
                                      style: TextStyle(
                                          color: Color(0xff13548D),
                                          fontFamily: 'OPEN_SANS_BOLD',
                                          fontSize: SizeConfig.getFont(11)),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.only(left: SizeConfig.getWidth(5)),
                                      child: Text('1 x',
                                          style: TextStyle(
                                              fontFamily: 'OPEN_SANS_BOLD',
                                              fontSize: SizeConfig.getFont(12),color: Color(0xff13548D))),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: SizeConfig.getWidth(205)),
                                      child: Text(
                                        'Delivered',
                                        style: TextStyle(
                                            color: Color(0xff23B198),
                                            fontFamily: 'OPEN_SANS_semibold',
                                            fontSize: SizeConfig.getFont(10)),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                 Padding(
                     padding:  EdgeInsets.only(left: SizeConfig.getWidth(10),top: SizeConfig.getHeight(10)),
                     child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                      height: SizeConfig.getHeight(27),
                          width: SizeConfig.getWidth(110),
                         
                          decoration: BoxDecoration(
                             border: Border.all(
                              color:const Color(0xff13548D)
                             ),
                            borderRadius: const BorderRadius.all(Radius.circular(5))
                          ),
                          child: TextButton(onPressed: (){},child:  Text('Write a Review',style: TextStyle(color: Color(0xff13548D),fontFamily: 'POPINS_MEDIUM',fontSize: SizeConfig.getFont(10),fontWeight: FontWeight.w400),),),
                        ),
                        Padding(
                          padding:  EdgeInsets.only(left:SizeConfig.getWidth(70),top: SizeConfig.getHeight(5)),
                          child:  Text('1 Item, Total Amount : ',style: TextStyle(color: Color(0xff757575),fontFamily: 'OPEN_SANS_BOLD',fontSize: SizeConfig.getFont(10))),
                        ),
                        Text(' QAR 976',style: TextStyle(color: Color(0xff13548D),fontFamily: 'OPEN_SANS_BOLD',fontSize: SizeConfig.getFont(15),fontWeight: FontWeight.w900)), //13548D
                      ],
),
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
