import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:names/src/features/services/kurdish_names_services.dart';
import 'package:names/src/features/models/names_data_model.dart';


class KurdishNamesList extends StatefulWidget {


   KurdishNamesList({Key? key}) : super(key: key);

  @override
  State<KurdishNamesList> createState() => _KurdishNamesListState();
}

class _KurdishNamesListState extends State<KurdishNamesList> {
  KurdishNamesServices names = KurdishNamesServices();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(

             padding: EdgeInsets.all(20),
             child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Gender"),
                Text("Sort by"),
                Text('Limit'),
              ],
             ),
           
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(20),
              
              child: Directionality(
                textDirection: TextDirection.rtl,
                child: FutureBuilder<KurdishNames>(
                future: names.fetchListOfNames(),
                builder:( (context, snapshot){
                  if(snapshot.connectionState== ConnectionState.waiting){
                    return CupertinoActivityIndicator();
                  }else if(snapshot.hasError){
                    return Text(snapshot.error.toString());
                    
                  }else if(snapshot.data==null){
                    return Text('NO DATA');
              
                  }
                    return ListView.builder(
                      //it's not null !
                      itemCount: snapshot.data!.names.length ,
                      itemBuilder: (context, index) {
                        return ExpansionTile(title: 
                        Text(snapshot.data!.names[index].name),
                        children: [Text(snapshot.data!.names[index].desc)],
                        );
                        
                      });
                    }
                    ),
                    ),
              ) ,
            ),
          )
        ],
      ),
    );
  }
}