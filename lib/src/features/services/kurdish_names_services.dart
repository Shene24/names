//import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
//import 'package:names/app.dart';
import 'package:names/src/features/models/names_data_model.dart';
class KurdishNamesServices{
  //https://github.com/DevelopersTree/nawikurdi
  Future<KurdishNames> fetchListOfNames()async{
    
    //scheme: https, host: nawikurdi.com, path:api,
   
    Uri _KurdishNamesUri = Uri(
       scheme: 'https',
       host: 'nawikurdi.com', 
       path: 'api', 
       queryParameters:{
          //changing parameters to have a specific functionallity 
            'limit': '5',
            'gender': "F",
            'offset': '0',
          

                      });
  
   http.Response response = 
   await http.get(_KurdishNamesUri).catchError((err)=> print(err));
   KurdishNames _KurdishNames =  KurdishNames.fromJson(response.body);
   print(response.body);
   return _KurdishNames;

  }
}
