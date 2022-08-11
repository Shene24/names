import 'package:http/http.dart' as http;
class KurdishNamesServices{
  //https://github.com/DevelopersTree/nawikurdi
  fetchListOfNames(){
    //TODO: create the URI
    //scheme: https,host: nawikurdi.com, path:api,
    Uri _KurdishNamesUri = Uri(
       scheme: 'https',
       host: 'nawikurdi.com', 
       path: 'api', 
       queryParameters:{
      'limit': '5',
      'gender': "F",
      'offset': '0',

  });
    http.get(_KurdishNamesUri);
  }
}