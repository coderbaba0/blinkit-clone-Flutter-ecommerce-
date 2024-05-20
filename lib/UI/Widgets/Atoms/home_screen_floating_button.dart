import 'package:flutter/material.dart';

import '../Organisms/home_screen_floating_action_button_widget.dart';

class HomeScreenFloatingNavigationBar extends StatelessWidget {
  const HomeScreenFloatingNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 35.0),
      child: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            useSafeArea: true,
            backgroundColor: Colors.transparent,
            enableDrag: true,
            showDragHandle: true,
            isScrollControlled: true,
            elevation: 10,
            builder: (BuildContext context) {
              return const FloatingActionButtonWidget();
            },
          );
        },
        child: const Icon(
          Icons.category_outlined,
          color: Colors.white,
        ),
      ),
    );
  }
}
