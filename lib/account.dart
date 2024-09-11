import 'package:flutter/material.dart';
import 'package:task_5/History/historydelivery.dart';
import 'package:task_5/Logout/logout.dart';
import 'package:task_5/MyOrder.dart/order.dart';
import 'package:task_5/Setting/setting.dart';
import 'package:task_5/WhishList/wish.dart';
import 'package:task_5/address/addresses.dart';
import 'package:task_5/editprofile.dart';
import 'package:task_5/model.dart';
import 'package:task_5/responsive.dart';

class AccountDetailed extends StatelessWidget {
  const AccountDetailed({super.key});

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
          'Profile',
          style: TextStyle(
            fontFamily: 'OPEN_SANS_semibold',
            fontSize: SizeConfig.getFont(20),
            color: Color(0xffFD8F1F),
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              
              margin:  EdgeInsets.symmetric(horizontal: SizeConfig.getWidth(20), vertical: SizeConfig.getWidth(10),),
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
              height: SizeConfig.getHeight(160),
              child: Padding(
                padding:  EdgeInsets.all(SizeConfig.getWidth(8)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Image.asset('assets/images/Group 4.png',
                            height: SizeConfig.getHeight(80), width: SizeConfig.getWidth(80)),
                         SizedBox(width: SizeConfig.getWidth(12)),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                               Text(
                                'Jhon Doe',
                                style: TextStyle(
                                  fontFamily: 'OPEN_SANS_semibold',
                                  fontSize: SizeConfig.getFont(18),
                                  fontWeight: FontWeight.w900,
                                  color: Color(0xff13548D),
                                ),
                              ),
                               Text(
                                'jhon.doe@gmail.com',
                                style: TextStyle(
                                    fontFamily: 'OPEN_SANS_Regular',
                                    fontSize: SizeConfig.getFont(10),
                                    color: Color(0xff757575)),
                              ),
                              const SizedBox(height: 10),
                              ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xff2DA78B)),
                                onPressed: () {},
                                child: const Text('Verified',
                                    style: TextStyle(
                                        fontFamily: 'OPEN_SANS_Regular',
                                        fontSize: 12,
                                        color: Colors.white)),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding:  EdgeInsets.only(top: SizeConfig.getHeight(10), left: SizeConfig.getWidth(5)),
                      child: Container(
                        
                          decoration: const BoxDecoration(
                              color: Color(0xff13548D),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(7))),
                          height: SizeConfig.getHeight(43),
                          width: SizeConfig.getHeight(310),
                          child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => EditProfile()));
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                
                                children: [
                                   Text('Edit Account  ',
                                      style: TextStyle(
                                          fontFamily: 'OPEN_SANS_Regular',
                                          fontSize: SizeConfig.getFont(15),
                                          color: Colors.white)),
                                  Image.asset(
                                    'assets/images/icons/Vector (1).png',
                                    height: SizeConfig.getHeight(20),
                                    width: SizeConfig.getWidth(20),
                                  )
                                ],
                              ))),
                    ),
                  ],
                ),
              ),
            ),
             SizedBox(height: SizeConfig.getHeight(10)),
            Container(
              height: SizeConfig.getHeight(550),
              margin:  EdgeInsets.only(left: SizeConfig.getWidth(5), right: SizeConfig.getHeight(5)),
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
                children:[
                  Expanded(
                    child: ListView.separated(
                    physics:const NeverScrollableScrollPhysics(),
                    
                    itemBuilder: (BuildContext context, int index) {
                      final item = coffeess[index];
                      return ListTile(
                        leading: Image.asset(item.images, height: SizeConfig.getHeight(30), width: SizeConfig.getWidth(30)),
                        title: Text(
                          item.name,
                          style:  TextStyle(
                            fontFamily: 'OPEN_SANS_semibold',
                            fontSize: SizeConfig.getFont(14),
                            color:const Color(0xff626262),
                          ),
                        ),
                        trailing: Image.asset('assets/images/chevron-left copy.png',
                            height: SizeConfig.getHeight(30), width: SizeConfig.getWidth(30)),
                        contentPadding:const EdgeInsets.symmetric(horizontal: 16),
                        onTap: () {
                          if (index == 0) {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => MYORDER()));
                          }
                          if(index==1)
                          {
                             Navigator.push(context,
                                MaterialPageRoute(builder: (context) => Addresss()));
                            
                          }   
                            if(index==2)
                          {
                             Navigator.push(context,
                                MaterialPageRoute(builder: (context) => OrderHistory()));
                            
                          }  
                                    
                            if(index==4)
                          {
                             Navigator.push(context,
                                MaterialPageRoute(builder: (context) => WishList()));
                            
                          } 
                            if(index==6)
                          {
                             Navigator.push(context,
                                MaterialPageRoute(builder: (context) => Settings()));
                            
                          }
                         
                        },
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(
                      endIndent: 15,
                      indent: 15,
                    ),
                    itemCount: coffeess.length,
                                    ),
                  ),
                    const Divider(
                      endIndent: 15,
                      indent: 15,
                    ),
                    SizedBox(height: 30,),
                  ListTile(
                        leading: Image.asset('assets/images/off.png', height: SizeConfig.getHeight(30), width: SizeConfig.getWidth(30)),
                        title: Text(
                          'Logout',
                          style:  TextStyle(
                            fontFamily: 'OPEN_SANS_semibold',
                            fontSize: SizeConfig.getFont(14),
                            color:const Color(0xff626262),
                          ),
                        ),
                        trailing: Image.asset('assets/images/chevron-left copy.png',
                            height: SizeConfig.getHeight(30), width: SizeConfig.getWidth(30)),
                        contentPadding:const EdgeInsets.symmetric(horizontal: 16),
                        onTap: () {
                          Navigator.push(context,
                                MaterialPageRoute(builder: (context) => LogOutScreen()));
                   
                        },
                      ),
                        const Divider(
                      endIndent: 15,
                      indent: 15,
                    ),
                ]
              ),
            ),
            SizedBox(
              height: SizeConfig.getHeight(15),
            )
          ],
        ),
      ),
    );
  }
}
