import 'package:flutter/material.dart';
import 'package:task_5/account.dart';
import 'package:task_5/model.dart';
import 'package:flutter/cupertino.dart';
import 'package:task_5/responsive.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool _isWIFI=false;
  bool _isPermission=false;
  bool _isDarkMode=false;
  bool _isNotification=false;
  bool _isAlway=false;
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: PreferredSize(
        preferredSize:  Size.fromHeight(SizeConfig.getHeight(150)),
        child: SafeArea(
          child: Container(
            height: SizeConfig.getHeight(67),
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) => AccountDetailed()));
                  },
                  child: Image.asset('assets/images/icons/Group 2594.png'),
                ),
                 Padding(
                  padding: EdgeInsets.only(left: SizeConfig.getWidth(100), top: SizeConfig.getHeight(20)),
                  child: Text(
                    'Setting',
                    style: TextStyle(
                      fontFamily: 'OPEN_SANS_semibold',
                      fontSize: SizeConfig.getFont(20),
                      color: Color(0xffFD8F1F),
                    ),
                  ),
                ),
                Padding(
                  padding:  EdgeInsets.only(left: SizeConfig.getWidth(80)),
                  child: GestureDetector(
                    onTap: () {},
                    child: Image.asset('assets/images/icons/Group 2593.png'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
        bottomNavigationBar: SafeArea(
        child:  Container(
         height: SizeConfig.getHeight(100),
         width: SizeConfig.getWidth(370),
           
         child: Row(
           children: [
             SizedBox(
               width: MediaQuery.of(context).size.width * 0.1 / 2,
             ),
             SizedBox(
               height: SizeConfig.getHeight(50),
               width:SizeConfig.getWidth(210),
               child: TextButton(
                 style: IconButton.styleFrom(
                   backgroundColor: Color(0xff13548D),
                   foregroundColor: Colors.white,
                   shape: const RoundedRectangleBorder(
                       borderRadius:
                           BorderRadius.all(Radius.circular(5))),
                 ),
                 onPressed: () {},
                 child: Text('Save Changes',style:
                       TextStyle(fontFamily: 'OPEN_SANS_BOLD', fontSize: SizeConfig.getFont(14)))
               ),
             ),
             SizedBox(
               width: SizeConfig.getWidth(10),
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
                 child:  Text(
                   'Reset',style:
                       TextStyle(fontFamily: 'OPEN_SANS_BOLD', fontSize: SizeConfig.getFont(14)),
                 ),
               ),
             )
           ],
         ),
       ),
        ),
      
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.4),
                spreadRadius: 1,
                blurRadius: 3,
              ),
            ],
            borderRadius: const BorderRadius.all(Radius.circular(7)),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  final item = settingname[index];
                  Widget IsSwitch;
                  if(index==0)
                  {
                    IsSwitch= SizedBox(
                      child: CupertinoSwitch(
                        activeColor: Color(0xff13548D),
                        value: _isPermission,
                        
                        onChanged: (value){
                          setState(() {
                            _isPermission=value;
                          });
                        },)
                    );

                  }
                      else if(index==1)
                  {
                     
                   IsSwitch=  SizedBox(
                      child: CupertinoSwitch(
                        activeColor: Color(0xff13548D),
                        value: _isDarkMode,
                        
                        onChanged: (value){
                          setState(() {
                            _isDarkMode=value;
                          });
                        },)
                    );

                  }
                      else  if(index==2)
                  {
                    IsSwitch= SizedBox(
                      child: CupertinoSwitch(
                        activeColor: Color(0xff13548D),
                        value: _isWIFI,
                        
                        onChanged: (value){
                          setState(() {
                            _isWIFI=value;
                          });
                        },)
                    );
                  }
                           else if(index==3)
                  {
                  IsSwitch=   SizedBox(
                      child: CupertinoSwitch(
                        activeColor: const Color(0xff13548D),
                        value: _isNotification,
                        
                        onChanged: (value){
                          setState(() {
                            _isNotification=value;
                          });
                        },)
                    );

                  
                }
                else
                {
                  
                  IsSwitch=   SizedBox(
                      child: CupertinoSwitch(
                        activeColor: Color(0xff13548D),
                        value: _isAlway,
                        
                        onChanged: (value){
                          setState(() {
                            
                          });
                        },)
                    );
                }
                  return ListTile(
                    leading: Image.asset(item.settingImages, height: SizeConfig.getHeight(30), width: SizeConfig.getWidth(30)),
                    title: Text(
                      item.settingNames,
                      style:  TextStyle(
                        fontFamily: 'OPEN_SANS_semibold',
                        fontSize: SizeConfig.getFont(14),
                        color: Color(0xff626262),
                      ),
                    ),
                    trailing: IsSwitch,
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                    onTap: () {},
                  );
                },
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(endIndent: 10, indent: 10),
                itemCount: settingname.length,
              ),
              const Divider(endIndent: 10, indent: 10),
              ListView.separated(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (BuildContext context, int index) {
                  final item = settingextends[index];
                  Widget trailingWidget;

                  if (index == 2) {
                    trailingWidget = SizedBox(
                      width: SizeConfig.getWidth(150),
                      child:  Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text('English',style: TextStyle(fontFamily: 'OPEN_SANS_semibold',fontSize: SizeConfig.getFont(10),color: Color(0xff626262)),),
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
                    leading: Image.asset(item.settingextendsimages, height: SizeConfig.getHeight(30), width: SizeConfig.getWidth(30)),
                    title: Text(
                      item.settingextendsname,
                      style:  TextStyle(
                        fontFamily: 'OPEN_SANS_semibold',
                        fontSize: SizeConfig.getFont(14),
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
                itemCount: settingextends.length,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
