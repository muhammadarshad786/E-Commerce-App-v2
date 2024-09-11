import 'package:flutter/material.dart';
import 'package:task_5/responsive.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  _EditProfileState createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  String? _selectedGender;

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
          'Information',
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
            
            Center(
              child: Container(
                  height: SizeConfig.getHeight(150),
                  width: SizeConfig.getWidth(128),
                  child: Image.asset(
                    'assets/images/extra/Group 10013.png',
                    fit: BoxFit.cover,
                  )),
            ),
             SizedBox(
              height: SizeConfig.getHeight(40),
            ),
            Center(
                child: _buildCustomTextFormField(
                    label: 'First Name',
                    ImagesPath: 'assets/images/extra/User.png',
                    hintgive: 'Ahmad')),
             SizedBox(
              height: SizeConfig.getHeight(20),
            ),
            Center(
                child: _buildCustomTextFormField(
                    label: 'Last Name',
                    ImagesPath: 'assets/images/extra/User.png',
                    hintgive: 'Hamdan')),
             SizedBox(
              height: SizeConfig.getHeight(20),
            ),
            Center(
                child: _buildCustomTextFormField(
                    label: 'Phone Number',
                    ImagesPath: 'assets/images/extra/Phone.png',
                    hintgive: '+974 1234 5678')),
             SizedBox(
              height: SizeConfig.getHeight(20),
            ),
            Center(
                child: _buildCustomTextFormField(
                    label: 'Email',
                    ImagesPath: 'assets/images/extra/Mail.png',
                    hintgive: 'Enter your email')),
             SizedBox(
              height: SizeConfig.getHeight(20),
            ),
            Center(
                child: _buildCustomTextFormField(
                    label: 'Password',
                    ImagesPath: 'assets/images/extra/Lock.png',
                    hintgive: 'Enter your password')),
             SizedBox(
              height: SizeConfig.getHeight(20),
            ),
            SizedBox(
              height: SizeConfig.getHeight(20),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Padding(
                    padding:  EdgeInsets.only(left: SizeConfig.getWidth(15)),
                    child: SizedBox(
                      height: SizeConfig.getHeight(59),
                      width: SizeConfig.getWidth(159),
                      child: DropdownButtonFormField<String>(
                        focusColor: Colors.white,
                        value: _selectedGender,
                        hint: const Text('Select Gender'),
                        decoration: InputDecoration(
                          labelText: 'Gender',
                          labelStyle:  TextStyle(
                            fontSize: SizeConfig.getFont(15),
                            fontWeight: FontWeight.bold,
                            color:const Color(0xff13548D),
                          ),
                          contentPadding:
                              const EdgeInsets.symmetric(horizontal: 20),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(28),
                          ),
                        ),
                        items: ['Male', 'Female', 'Other']
                            .map((gender) => DropdownMenuItem<String>(
                                  value: gender,
                                  child: Text(gender),
                                ))
                            .toList(),
                        onChanged: (value) {
                          setState(() {
                            _selectedGender = value;
                          });
                        },
                      ),
                    ),
                  ),
                ),
                Container(
                  height: SizeConfig.getHeight(59),
                  width: SizeConfig.getWidth(140),
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(100)),
                  child: TextFormField(
                    decoration: InputDecoration(
                      label: Text(
                        'City',
                        style: TextStyle(
                          fontSize: SizeConfig.getFont(14),
                          fontFamily: 'OPEN_SANS_semibold',
                          color:const Color(0xff13548D),
                        ),
                      ),
                      hintText: 'Doha , Qatar',
                      labelStyle:  TextStyle(
                        fontSize: SizeConfig.getFont(14),
                        fontFamily: 'OPEN_SANS_semibold',
                        color:const Color(0xff13548D),
                      ),
                      contentPadding:
                          const EdgeInsets.symmetric(horizontal: 40),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(28)),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: SizeConfig.getHeight(30),),
            Padding(
              padding:  EdgeInsets.only(top: SizeConfig.getHeight(20)),
              child: Center(
                child: Container(
                  decoration: const BoxDecoration(
                    color: Color(0xff13548D),
                    borderRadius: BorderRadius.all(Radius.circular(7)),
                  ),
                  height: SizeConfig.getHeight(43),
                  width: SizeConfig.getWidth(287),
                  child: TextButton(
                    onPressed: () {},
                    child:  Text(
                      'Save Changes',
                      style: TextStyle(
                        fontFamily: 'OPEN_SANS_Regular',
                        fontSize: SizeConfig.getFont(12),
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: SizeConfig.getHeight(20),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCustomTextFormField(
      {required String label,
      required String ImagesPath,
      required String hintgive}) {
    return Container(
      height: SizeConfig.getHeight(59),
      width: SizeConfig.getWidth(315),
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(100)),
      child: TextFormField(
        decoration: InputDecoration(
          label: Text('   ${label}    '),
          hintText: hintgive,
          suffixIcon: Image.asset(ImagesPath,height: 20,width: 30,),
          labelStyle:  TextStyle(
            fontSize: SizeConfig.getFont(14),
            fontFamily: 'OPEN_SANS_semibold',
            color:const Color(0xff13548D),
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 40),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(28)),
        ),
      ),
    );
  }
}
