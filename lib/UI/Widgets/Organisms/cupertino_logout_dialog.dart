import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../app_colors.dart';

class CupertinoLogoutDialog extends StatelessWidget {
  const CupertinoLogoutDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CupertinoAlertDialog(
      title: const Text('Logout'),
      content: const Column(
        children: [
          SizedBox(
            height: 10,
          ),
          Text(
            'Are you sure you want to logout?',
            style: TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          ),
        ],
      ),
      actions: [
        CupertinoDialogAction(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text(
            'Cancel',
            style: TextStyle(
              color: AppColors.primaryGreenColor,
              fontWeight: FontWeight.w400,
              fontSize: 15,
            ),
          ),
        ),
        CupertinoDialogAction(
          onPressed: () {
            Navigator.of(context)
                .pushNamedAndRemoveUntil('/', (Route<dynamic> route) => false);
          },
          child: const Text(
            'Logout',
            style: TextStyle(
              color: AppColors.primaryGreenColor,
              fontWeight: FontWeight.w400,
              fontSize: 15,
            ),
          ),
        ),
      ],
    );
  }
}

// TODO: Change the Icons From Network to Assets 