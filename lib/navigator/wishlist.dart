import 'package:flutter/material.dart';
import 'package:test_app/navigator/whislits/whistList_elemnt.dart';

class WishList extends StatefulWidget {
  const WishList({super.key});

  @override
  State<WishList> createState() => _WishListState();
}

class _WishListState extends State<WishList> {
  @override
  Widget build(BuildContext context) {
    return Navigator(
      onGenerateRoute: (setting) {
        if (setting.name == '') {
          return MaterialPageRoute(builder: (context) {
            return const WhistlistElemnt();
          });
        }
      },
    );
  }
}
