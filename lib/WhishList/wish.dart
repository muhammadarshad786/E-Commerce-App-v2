import 'package:flutter/material.dart';
import 'package:task_5/responsive.dart';

class WishList extends StatefulWidget {
  const WishList({super.key});

  @override
  State<WishList> createState() => _WishListState();
}

class _WishListState extends State<WishList> {
  bool _selectAll = false;
  List<bool> _selectedItems = [false, false, false];

  void _toggleSelectAll(bool? value) {
    setState(() {
      _selectAll = value ?? false;
      _selectedItems = List.generate(_selectedItems.length, (_) => _selectAll);
    });
  }

  void _toggleItem(int index, bool? value) {
    setState(() {
      _selectedItems[index] = value ?? false;
      _selectAll = _selectedItems.every((selected) => selected);
    });
  }

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
        title: Text(
          'Wishlist',
          style: TextStyle(
            fontFamily: 'OPEN_SANS_semibold',
            fontSize: SizeConfig.getFont(20),
            color: Color(0xffFD8F1F),
          ),
        ),
        centerTitle: true,
      ),
      bottomNavigationBar: SafeArea(
        child: Container(
          height: SizeConfig.getHeight(100),
          width: SizeConfig.getWidth(370),
          child: Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.1 / 2,
              ),
              SizedBox(
                height: SizeConfig.getHeight(50),
                width: SizeConfig.getWidth(210),
                child: TextButton(
                  style: IconButton.styleFrom(
                    backgroundColor: Color(0xff13548D),
                    foregroundColor: Colors.white,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Add To Cart',
                    style: TextStyle(
                      fontFamily: 'OPEN_SANS_BOLD',
                      fontSize: SizeConfig.getFont(14),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.1 / 5 + 3,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(5)),
                  border: Border.all(color: Color(0xffFF3743)),
                ),
                height: SizeConfig.getHeight(50),
                width: SizeConfig.getWidth(119),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Color(0xffFF3743),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    'Remove All',
                    style: TextStyle(
                      fontFamily: 'OPEN_SANS_BOLD',
                      fontSize: SizeConfig.getFont(14),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Radio<bool>(
                  value: true,
                  groupValue: _selectAll,
                  activeColor: Colors.blue,
                  onChanged: _toggleSelectAll,
                ),
                Text(
                  'Select All',
                  style: TextStyle(
                    fontFamily: 'OPEN_SANS_semibold',
                    fontSize: SizeConfig.getFont(15),
                    color: Color(0xff1E2022),
                  ),
                ),
              ],
            ),
            for (int i = 0; i < 3; i++)
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Radio<bool>(
                    value: true,
                    groupValue: _selectedItems[i],
                    activeColor: Colors.blue,
                    onChanged: (value) => _toggleItem(i, value),
                  ),
                  Container(
                    height: SizeConfig.getHeight(110),
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
                      border: Border.all(color: const Color(0xff757575)),
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(10),
                          child: Image.asset('assets/images/Rectangle 836.png'),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: SizeConfig.getWidth(1), top: SizeConfig.getHeight(10)),
                                  child: Text(
                                    'Store Name / SKU',
                                    style: TextStyle(
                                      fontFamily: 'OPEN_SANS_semibold',
                                      fontSize: SizeConfig.getFont(10),
                                      color: Color(0xff13548D),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: SizeConfig.getWidth(115), top: SizeConfig.getHeight(4)),
                                  child: Text(
                                    'QAR 300',
                                    style: TextStyle(
                                      fontFamily: 'OPEN_SANS_semibold',
                                      fontSize: SizeConfig.getFont(16),
                                      color: Color(0xffFD8F1F),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              'Product Name',
                              style: TextStyle(
                                fontFamily: 'OPEN_SANS_semibold',
                                fontSize: SizeConfig.getFont(16),
                                color: Color(0xff626262),
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  'Product Description lorum',
                                  style: TextStyle(
                                    fontFamily: 'OPEN_SANS_semibold',
                                    fontSize: SizeConfig.getFont(10),
                                    color: Color(0xff626262),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: SizeConfig.getWidth(115)),
                                  child: Image.asset('assets/images/icons/Vector (2).png'),
                                ),
                              ],
                            ),
                            Text(
                              'ipsum lorum ipsumlorum ipsum ...',
                              style: TextStyle(
                                fontFamily: 'OPEN_SANS_semibold',
                                fontSize: SizeConfig.getFont(10),
                                color: Color(0xff626262),
                              ),
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset('assets/images/icons/Group 2687.png'),
                                Padding(
                                  padding: EdgeInsets.only(left: SizeConfig.getWidth(190)),
                                  child: Image.asset('assets/images/icons/Group 2759.png'),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
          ],
        ),
      ),
    );
  }
}