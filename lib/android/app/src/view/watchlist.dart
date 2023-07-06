import 'package:flutter/material.dart';

import 'app_overlay.dart';
import 'home_page.dart';

class WatchlistPage extends StatefulWidget {
  const WatchlistPage({Key? key}) : super(key: key);

  final Color backgroundColor = const Color.fromRGBO(38, 35, 35, 1.0);
  final Color middleBackgroundColor = const Color.fromRGBO(
      44, 40, 40, 1.0);

  @override
  State<WatchlistPage> createState() => _WatchlistPageState();
}

class _WatchlistPageState extends State<WatchlistPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: widget.middleBackgroundColor,
      child: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            textStyle: const TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
            backgroundColor: Colors.lightBlueAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(40.0),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 10),
          ),
          onPressed: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => AppOverlay(title: "Home", body: HomePage(), currentPageIndex: 0,))),
          child: const Text("Go Back"),
        ),
      ),
    );
  }
}