import 'package:flutter/material.dart';


class KurdishNamesList extends StatefulWidget {
  const KurdishNamesList({Key? key}) : super(key: key);

  @override
  State<KurdishNamesList> createState() => _KurdishNamesListState();
}

class _KurdishNamesListState extends State<KurdishNamesList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text('title'),
          Container(

          ),
          Container(
            color: Colors.red,
          )
        ],
      ),
    );
  }
}