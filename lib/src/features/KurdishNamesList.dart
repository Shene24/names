import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:names/src/features/services/kurdish_names_services.dart';


class KurdishNamesList extends StatefulWidget {
   KurdishNamesList({Key? key}) : super(key: key);

  KurdishNamesServices names = KurdishNamesServices();


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
          Expanded(
            child: Container(
              color: Colors.red,
              child: FutureBuilder(
              future: names.fetchListOfNames(),
              builder:( (context, snapshot){
                if(snapshot.connectionState== ConnectionState.waiting){
                  return CupertinoActivityIndicator();
                }else if(snapshot.hasError){
                  return Text(snapshot.error.toString());
                  
                }else if(snapshot.data==null){
                  return Text('NO DATA');

                }
                  return Text(snapshot.data.toString());
      }
      ),
      ) ,
            ),
          )
        ],
      ),
    );
  }
}