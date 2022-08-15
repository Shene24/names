import 'package:flutter/material.dart';
import 'package:names/src/features/KurdishNamesList.dart';

class KurdishNames extends StatelessWidget {
  const KurdishNames({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: KurdishNamesList(),
    );
    
  }
}
