import 'package:flutter/material.dart';
import 'package:task_5/account.dart';
import 'package:task_5/model.dart';
import 'package:task_5/responsive.dart';

class LogOutScreen extends StatelessWidget {
  const LogOutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(150),
          child: SafeArea(
            child: Container(
              height: SizeConfig.getHeight(75),
              color: Color(0xff13548D),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding:  EdgeInsets.only(left: SizeConfig.getWidth(15), top: SizeConfig.getHeight(15)),
                    child: Container(
                      width: SizeConfig.getWidth(345),
                      //color: Colors.white,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(15)),
                      ),
                      child: TextFormField(
                        decoration:  InputDecoration(
                            border: InputBorder.none,
                            hintText: 'Search product',
                            hintStyle:  TextStyle(fontFamily: 'OPEN_SANS_semibold',fontSize: SizeConfig.getFont(14)),
                            prefixIcon: Image.asset('assets/images/setting/Search Icon.png')),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: const EdgeInsets.all(20),
                height: SizeConfig.getHeight(90),
                width: SizeConfig.getWidth(600),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Image.asset(
                      'assets/images/setting/banner-327x90-(2) 2.jpg',
                      fit: BoxFit.cover,
                    )),
              ),
              Container(
                height: SizeConfig.getHeight(100),
                margin: EdgeInsets.all(10),
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
                    Center(
                        child:
                            Padding(
                              padding: EdgeInsets.only(top: SizeConfig.getHeight(15)),
                              child: Text('Login to your account or register a new one!',style: TextStyle(fontFamily: 'OPEN_SANS_semibold',fontSize: SizeConfig.getFont(12)),),
                            )),
                    Padding(
                      padding:  EdgeInsets.only(top: SizeConfig.getHeight(10)),
                      child: Center(
                        child: Container(
                          height: SizeConfig.getHeight(43),
                          width: SizeConfig.getWidth(314),
                          decoration: const BoxDecoration(
                              color: Color(0xff13548D),
                              borderRadius: BorderRadius.all(Radius.circular(5)),
                              shape: BoxShape.rectangle),
                          child: TextButton(
                              style: TextButton.styleFrom(
                                  backgroundColor:const Color(0xff13548D),
                                  foregroundColor: Colors.white),
                              onPressed: () {
                                                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => AccountDetailed()));
                              },
                              child:  Text(
                                'Login Or Register',
                                style: TextStyle(
                                    fontFamily: 'OPEN_SANS_BOLD', fontSize: SizeConfig.getFont(13)),
                              )),
                        ),
                      ),
                    )
                  ],
                ),
              ),
          
              SizedBox(height: SizeConfig.getHeight(10),),
              Container(
                height: SizeConfig.getHeight(360),
                             margin:const  EdgeInsets.all(10),
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
                      children:[ ListView.separated(
                                      shrinkWrap: true,
                                      physics: const NeverScrollableScrollPhysics(),
                                      itemBuilder: (BuildContext context, int index) {
                                        final item = logout[index];
                                        Widget trailingWidget;
                      
                                        if (index == 0) {
                      trailingWidget = SizedBox(
                        width: SizeConfig.getWidth(150),
                        child:  Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                           const Text('QATAR (English)',style: TextStyle(fontFamily: 'OPEN_SANS_semibold',fontSize: 10,color: Color(0xff626262)),),
                             SizedBox(width: SizeConfig.getWidth(8)), 
                            Image.asset(
                              'assets/images/chevron-left copy.png',
                            
                            ),
                          ],
                        ),
                      );
                                        } else {
                      trailingWidget = SizedBox(
                         
                        child: Image.asset(
                          'assets/images/chevron-left copy.png',
                         
                        ),
                      );
                                        }
                                        return ListTile(
                      leading: Image.asset(item.logoutimages, height: SizeConfig.getHeight(30), width: SizeConfig.getWidth(30)),
                      title: Text(
                        item.logoutname,
                        style:  TextStyle(
                          fontFamily: 'OPEN_SANS_semibold',
                          fontSize: SizeConfig.getFont(18),
                          color: Color(0xff626262),
                        ),
                      ),
                      trailing: trailingWidget,
                      contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                      onTap: () {},
                                        );
                                      },
                                      separatorBuilder: (BuildContext context, int index) =>
                      const Divider(endIndent: 10, indent: 10),
                                      itemCount: logoutname.length,
                                    ),
                                    const Divider(endIndent: 10, indent: 10),
                      ]
                    ),
              
        
          
              ),
             const SizedBox(height: 40,),
             Center(
               child: SizedBox(
                height: SizeConfig.getHeight(30),
                width: SizeConfig.getWidth(180),
               
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset('assets/images/Twitter.png'),
                    Image.asset('assets/images/Instagram.png'),
                    Image.asset('assets/images/Facebook.png'),
                    Image.asset('assets/images/LinkedIN.png'),
                  ],
                ),
               ),
             ),
               SizedBox(height: SizeConfig.getHeight(20),),
               Center(
               child: SizedBox(
                height: SizeConfig.getHeight(30),
                width: SizeConfig.getWidth(180),
                
                child: Image.asset('assets/images/Group 2792.png'),
               ),
             ),
              SizedBox(height: SizeConfig.getHeight(40),),

            ],
          ),
        ));
  }
}
