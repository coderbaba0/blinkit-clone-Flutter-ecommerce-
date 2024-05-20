import 'package:flutter/material.dart';

import '../../../app_colors.dart';
import '../../custom_sliver_delegate.dart';

class HomeScreenSearchBar extends StatelessWidget {
  const HomeScreenSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPersistentHeader(
      pinned: true,
      delegate: SliverAppBarDelegate(
        minHeight: kToolbarHeight,
        maxHeight: kToolbarHeight,
        child: Container(
          color: Colors.white,
          child: _buildSearchField(context),
        ),
      ),
    );
  }

  Widget _buildSearchField(BuildContext context) {
    FocusNode focusNode = FocusNode();

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(0, 1), // changes position of shadow
          ),
        ],
      ),
      child: TextField(
        focusNode: focusNode,
        decoration: InputDecoration(
          hintText: 'Search',
          filled: true,
          fillColor: AppColors.greyWhiteColor,
          prefixIcon: Icon(
            Icons.search,
            color: Theme.of(context).iconTheme.color,
          ),
          border: InputBorder.none,
          isDense: true,
        ),
      ),
    );
  }
}
