import 'package:flutter/material.dart';

import 'package:ecom/constants.dart';

class ProductsSearchDelegate extends SearchDelegate {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () => (query == "") ? close(context, null) : query = "",
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.arrow_back),
      onPressed: () => close(context, null),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // Perform search and display resultsdas

    final filteredProducts = kDummyProducts
        .where((element) => element.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return ListView.builder(
      itemCount: filteredProducts.length,
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(filteredProducts[index]),
          onTap: () {
            query = filteredProducts[index];
            showResults(context);
          },
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return ListView.builder(
      itemCount: kDummyProducts.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(kDummyProducts[index]),
          onTap: () {
            query = kDummyProducts[index];
            showResults(context);
          },
        );
      },
    );
  }
}
