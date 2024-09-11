import 'package:flutter/material.dart';
import 'package:task_5/address/changesaddress.dart';
import 'package:task_5/responsive.dart';

class Addresss extends StatelessWidget {
  const Addresss({super.key});

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
          'Select Address',
          style: TextStyle(
            fontFamily: 'OPEN_SANS_semibold',
            fontSize: SizeConfig.getFont(20),
            color: Color(0xffFD8F1F),
          ),
        ),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Padding(
            padding: EdgeInsets.all(10.0),
            child: Text('Shipping Address'),
          ),
          Container(
            height: SizeConfig.getHeight(130),
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
                borderRadius: const BorderRadius.all(Radius.circular(7))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Image.asset('assets/images/Bitmap.png'),
                    ),
                     Padding(
                      padding: EdgeInsets.only(left: 5, top: 5),
                      child: Text(
                        'Person Name',
                        style: TextStyle(
                          fontFamily: 'OPEN_SANS_semibold',
                          fontSize: SizeConfig.getFont(16),
                          color: Color(0xffFD8F1F),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Padding(
                      padding:  EdgeInsets.only(left: SizeConfig.getWidth(5)),
                       child: Text(
                        '1226 najma street',
                        style: TextStyle(
                          fontFamily: 'OPEN_SANS_Regular',
                          fontSize: SizeConfig.getFont(10),
                          color: Color(0xff77838F),
                        ),
                                           ),
                     ),
                    Padding(
                      padding:  EdgeInsets.only(left: SizeConfig.getWidth(265)),
                      child: Image.asset('assets/images/smallhome.png'),
                    ),
                  ],
                ),
                 Padding(
                  padding:  EdgeInsets.only(left: SizeConfig.getWidth(5)),
                   child: Text(
                    'near to Aspire Park ,',
                    style: TextStyle(
                      fontFamily: 'OPEN_SANS_Regular',
                      fontSize: SizeConfig.getFont(10),
                      color: Color(0xff77838F),
                    ),
                                   ),
                 ),
                 Padding(
                   padding:  EdgeInsets.only(left: SizeConfig.getWidth(5)),
                   child: Text(
                    'Doha Qatar +974 1122 3344',
                    style: TextStyle(
                      fontFamily: 'OPEN_SANS_Regular',
                      fontSize: SizeConfig.getFont(10),
                      color: Color(0xff77838F),
                    ),
                                   ),
                 ),
              ],
            ),
          ),
           SizedBox(
            height: SizeConfig.getHeight(20),
          ),
          Container(
            height: SizeConfig.getHeight(130),
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
                borderRadius: const BorderRadius.all(Radius.circular(7))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Image.asset('assets/images/Bitmap.png'),
                    ),
                     Padding(
                      padding: EdgeInsets.only(top: SizeConfig.getHeight(5), left: SizeConfig.getWidth(5)),
                      child: Text(
                        'Person Name',
                        style: TextStyle(
                          fontFamily: 'OPEN_SANS_semibold',
                          fontSize: SizeConfig.getFont(16),
                          color: Color(0xffFD8F1F),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:  EdgeInsets.only(left: SizeConfig.getWidth(5)),
                      child:  Text(
                        '1226 najma street',
                        style: TextStyle(
                          fontFamily: 'OPEN_SANS_Regular',
                          fontSize: SizeConfig.getFont(10),
                          color: Color(0xff77838F),
                        ),
                      ),
                    ),
                    Padding(
                      padding:  EdgeInsets.only(left: SizeConfig.getWidth(265)),
                      child:
                          Image.asset('assets/images/icons/officeaddress.png'),
                    ),
                  ],
                ),
                 Padding(
                  padding:  EdgeInsets.only(left: SizeConfig.getWidth(5)),
                   child: Text(
                    'near to Aspire Park ,',
                    style: TextStyle(
                      fontFamily: 'OPEN_SANS_Regular',
                      fontSize: SizeConfig.getFont(10),
                      color: Color(0xff77838F),
                    ),
                                   ),
                 ),
                 Padding(
                   padding:  EdgeInsets.only(left: SizeConfig.getWidth(5)),
                   child: Text(
                    'Doha Qatar +974 1122 3344',
                    style: TextStyle(
                      fontFamily: 'OPEN_SANS_Regular',
                      fontSize: SizeConfig.getFont(10),
                      color: Color(0xff77838F),
                    ),
                                   ),
                 ),
              ],
            ),
          ),
           SizedBox(
            height: SizeConfig.getHeight(20),
          ),
          Container(
            height: SizeConfig.getHeight(130),
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
                borderRadius: const BorderRadius.all(Radius.circular(7))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Image.asset('assets/images/Bitmap.png'),
                    ),
                     Padding(
                      padding: EdgeInsets.only(top: SizeConfig.getHeight(5), left: SizeConfig.getWidth(5)),
                      child: Text(
                        'Person Name',
                        style: TextStyle(
                          fontFamily: 'OPEN_SANS_semibold',
                          fontSize: SizeConfig.getFont(16),
                          color: Color(0xffFD8F1F),
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                     Padding(
                       padding:  EdgeInsets.only(left: SizeConfig.getWidth(5)),
                       child: Text(
                        '1226 najma street',
                        style: TextStyle(
                          fontFamily: 'OPEN_SANS_Regular',
                          fontSize: SizeConfig.getFont(10),
                          color: Color(0xff77838F),
                        ),
                                           ),
                     ),
                    Padding(
                      padding:  EdgeInsets.only(left: SizeConfig.getWidth(265)),
                      child:
                          Image.asset('assets/images/icons/otheraddress.png'),
                    ),
                  ],
                ),
                 Padding(
                   padding:  EdgeInsets.only(left: SizeConfig.getWidth(5)),
                   child: Text(
                    'near to Aspire Park ,',
                    style: TextStyle(
                      fontFamily: 'OPEN_SANS_Regular',
                      fontSize: SizeConfig.getFont(10),
                      color: Color(0xff77838F),
                    ),
                                   ),
                 ),
                 Padding(
                   padding:  EdgeInsets.only(left: SizeConfig.getWidth(5)),
                   child: Text(
                    'Doha Qatar +974 1122 3344',
                    style: TextStyle(
                      fontFamily: 'OPEN_SANS_Regular',
                      fontSize: SizeConfig.getFont(10),
                      color: Color(0xff77838F),
                    ),
                                   ),
                 ),
              ],
            ),
          ),
           SizedBox(
            height: SizeConfig.getHeight(70),
          ),
          Center(
            child: Container(
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
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => ChangesAddress()));
                  },
                  child:  Text(
                    'Add New Address',
                    style:
                        TextStyle(fontFamily: 'OPEN_SANS_BOLD', fontSize: SizeConfig.getFont(13)),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
