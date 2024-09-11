
final coffeess = List.generate(
  _name.length,
  (index) => ImagesAndName(
    images: _images[index],
    name: _name[index],
  ),
);

class ImagesAndName
{
final String name;
final String images;

ImagesAndName({required this.name,required this.images});




}

final _name=[

'Orders',
'Addresses',
'Notifications',
'cart',
'Whishlist',
'Virtual Store',
'Settings',




];

final _images=[

  'assets/images/cart.png',
  'assets/images/Map.png',
  'assets/images/Vector.png',
  'assets/images/Vector (1).png',
  'assets/images/Vector (2).png',
  'assets/images/virtual store.png',
  'assets/images/settings.png',

];




final iconsLabelHint = List.generate(
  images.length,
  (index) => IconsName(
    images: images[index],
    name: name[index],
     label: label[index],
    
  ),
);


class IconsName
{
final String name;
final String images;
final String label;

IconsName({required this.images,required this.name,required this.label});

}
final images=[

'assets/images/extra/User.png',
'assets/images/smallhome.png',
'assets/images/icons/maps.png',
'assets/images/icons/officeaddress.png',
'assets/images/icons/maps.png',
'assets/images/icons/maps.png',
'assets/images/icons/maps.png',
'assets/images/icons/flag.png',
'assets/images/icons/maps.png'

];

final name=[

'Full Name',
'Apartment Number',
' Floor Number',
'Building Number',
'Street Number',
'Zone Number',
'Select City',
'Select Country',
'Complete Address'
];

final label=[
  'Ahmad',
  '122 B',
  '10th Floor',
  '36 PIAM Building',
  'najma street',
  '55',
  'Doha',
  'Qatar',
  '123 najma street ,  near PIAM Park',
];


final settingname = List.generate(
  settingNames.length,
  (index) => SettingNameImages(
    settingNames: settingNames[index],
    settingImages: settingImages[index],
    
    
  ),
);
class SettingNameImages
{
  final String settingNames;
  final String settingImages;
  SettingNameImages({required this.settingNames,required this.settingImages});
}

final settingNames=[
  'Permissions',
  'Dark Mode',
  'Only Wi-Fi',
  'Notification'
];

final settingImages=[
  'assets/images/extra/Lock.png',
  'assets/images/setting/Icon (1).png',
  'assets/images/setting/Icon.png',
  'assets/images/Vector.png'

];



final settingextends = List.generate(
  settingextendsname.length,
  (index) => SettingNameImagesExtends(
    settingextendsname: settingextendsname[index],
    settingextendsimages: settingextendsimages[index],
    
    
  ),
);

class SettingNameImagesExtends
{
final String settingextendsname;
final String settingextendsimages;

SettingNameImagesExtends({required this.settingextendsimages,required this.settingextendsname});
}


final settingextendsname=[
  'About Application',
  'Help',
  'Languages',
  'Privacy policy',
  'Send Feedback',

];

final settingextendsimages=[
  'assets/images/setting/about.png',
  'assets/images/setting/help.png',
  'assets/images/setting/Icon (2).png',
  'assets/images/extra/Lock.png',
  'assets/images/setting/Icon (3).png',

];

final logout=List.generate(logoutname.length,
 (index)=> LogOutContent(
  logoutimages: logoutimages[index],logoutname: logoutname[index]));

class LogOutContent
{
  final String logoutname;
  final String logoutimages;

  LogOutContent({required this.logoutimages,required this.logoutname});
}

final logoutname=[
  'Country',
  'Contact Us',
  'About Us',
  'Terms & Condition',
  'Privacy Policy'
];

final logoutimages=[

  'assets/images/setting/Vector (1).png',
  'assets/images/extra/Phone.png',
  'assets/images/setting/about.png',
  'assets/images/setting/Vector.png',
  'assets/images/extra/Lock.png'
];