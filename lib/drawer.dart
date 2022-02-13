import 'package:flutter/material.dart';
import 'package:flutter_application_7/credit_card.dart';
import 'package:flutter_application_7/pages/abonman_aktar_page.dart';
import 'package:flutter_application_7/constants/color_constant.dart';
import 'package:flutter_application_7/pages/bize_ulasin_page.dart';
import 'package:flutter_application_7/pages/kart_ekle_page.dart';
import 'package:flutter_application_7/pages/profile.dart';
import 'package:flutter_application_7/pages/yakinimda_ne_var_page.dart';
import 'package:flutter_application_7/pages/yardim_page.dart';
import 'package:flutter_application_7/screens/profile_body.dart';

class NavigationDrawerWidget extends StatefulWidget {
  const NavigationDrawerWidget({Key? key}) : super(key: key);

  @override
  _NavigationDrawerWidgetState createState() => _NavigationDrawerWidgetState();
}

class _NavigationDrawerWidgetState extends State<NavigationDrawerWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final padding = EdgeInsets.symmetric(horizontal: 20);
    return Drawer(
      child: Material(
        color: kWhiteColor,
        child: ListView(
          padding: padding,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 40),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Kırküç Numara",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w700,
                              color: kBlueColor)),
                      SizedBox(
                        height: size.height * 0.01,
                      ),
                      const Text("kirkucnumara@gmail.com",
                          style: TextStyle(fontSize: 15, color: kBlueColor)),
                    ],
                  ),
                  const Spacer(),
                  const CircleAvatar(
                    foregroundColor: kBlueColor,
                    backgroundImage: AssetImage(
                      "assets/3.jpg",
                    ),
                    radius: 30,
                    // child: Image.network(
                    //     "https://i.tmgrup.com.tr/gq/img/920x615/17-06/22/user_male_circle_filled1600.png"),
                  ),
                ],
              ),
            ),
            buildMenuItem(
                text: "Profil",
                icon: Icons.person,
                onClicked: () => selectedItem(context, 2)),
            SizedBox(
              height: size.height * 0.02,
            ),
            buildMenuItem(
                text: "Abonman Aktar",
                icon: Icons.send,
                onClicked: () => selectedItem(context, 0)),
            SizedBox(
              height: size.height * 0.02,
            ),
            buildMenuItem(
                text: "Kart Ekle",
                icon: Icons.add_card,
                onClicked: () => selectedItem(context, 1)),
            SizedBox(
              height: size.height * 0.02,
            ),
            buildMenuItem(
                text: "Yakınımda Ne Var?",
                icon: Icons.map_sharp,
                onClicked: () => selectedItem(context, 3)),
            SizedBox(
              height: size.height * 0.02,
            ),
            Divider(
              color: kBlueColor,
              endIndent: size.width * 0.02,
              indent: size.width * 0.02,
              thickness: 1,
            ),
            SizedBox(
              height: size.height * 0.02,
            ),
            buildMenuItem(
                text: "Yardım",
                icon: Icons.help_outline_outlined,
                onClicked: () => selectedItem(context, 4)),
            SizedBox(
              height: size.height * 0.02,
            ),
            buildMenuItem(
                text: "Bize Ulaşın",
                icon: Icons.account_circle_sharp,
                onClicked: () => selectedItem(context, 5)),
            SizedBox(
              height: size.height * 0.02,
            ),
          ],
        ),
      ),
    );
  }

  buildMenuItem({
    required String text,
    required IconData icon,
    required VoidCallback onClicked,
  }) {
    return ListTile(
      leading: Icon(
        icon,
        color: kBlueColor,
        size: 30,
      ),
      title: Text(
        text,
        style: const TextStyle(color: kBlueColor, fontSize: 15),
      ),
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index) {
    switch (index) {
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const AbonmanAktarPage(),
        ));
        break;
      case 1:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const CreditCard(),
        ));
        break;
      case 2:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const ProfilePage(),
        ));
        break;
      case 3:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const YakinimdaNeVar(),
        ));
        break;
      case 4:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const HelpMeView(),
        ));
        break;
      case 5:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => const ContactUsView(),
        ));
        break;
    }
  }
}
