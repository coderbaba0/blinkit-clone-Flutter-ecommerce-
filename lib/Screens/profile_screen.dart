import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';

import 'package:ecom/constants.dart';
import '../UI/Widgets/Atoms/list_tile.dart';
import '../UI/Widgets/Organisms/cupertino_logout_dialog.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 25,
        automaticallyImplyLeading: true,
        title: const Text('Profile'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'My Account',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Text(
              '9565256525',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w300,
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 216, 237, 255),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 15),
              margin: const EdgeInsets.symmetric(vertical: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  buildIconWithLabel(assetName: kSvgIcons[0], title: 'Wallet'),
                  buildIconWithLabel(assetName: kSvgIcons[1], title: 'Support'),
                  buildIconWithLabel(
                      assetName: kSvgIcons[2], title: 'Payments'),
                ],
              ),
            ),

            // User Information
            const Text(
              'YOUR INFORMATION',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w400,
              ),
            ),
            customListTile(
              icon: Icons.inventory_2_outlined,
              title: 'Your Orders',
              callback: () {
                Navigator.of(context).pushNamed('/orders');
              },
            ),
            customListTile(
              icon: Icons.inventory_2_outlined,
              title: 'Address Book',
              callback: () {
                Navigator.of(context).pushNamed('/user/address');
              },
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'OTHERS',
              style: TextStyle(
                color: Colors.grey,
                fontWeight: FontWeight.w400,
              ),
            ),
            customListTile(
              icon: Icons.share,
              title: 'Share the app',
              callback: () {
                Share.share(
                  'blinkit app',
                  subject: "Grocery App",
                );
              },
            ),
            customListTile(
              icon: Icons.info_outline,
              title: 'About Us',
              callback: () {
                Navigator.of(context).pushNamed('/app/about');
              },
            ),
            customListTile(
              icon: Icons.logout,
              title: 'Log out',
              callback: () {
                showCupertinoDialog(
                  context: context,
                  builder: ((context1) => const CupertinoLogoutDialog()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget buildIconWithLabel({@required assetName, @required String? title}) {
    return Column(
      children: [
        SizedBox(
          height: 30,
          child: Image.network(assetName),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          title!,
          style: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w300,
          ),
        ),
      ],
    );
  }
}
