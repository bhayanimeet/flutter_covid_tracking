import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/covid.dart';

class ApiHelper{
  ApiHelper._();

  static final ApiHelper apiHelper = ApiHelper._();

  Future<List<Covid>?> fetchData() async{
    String api = "https://covid-19.dataflowkit.com/v1";

    http.Response result = await http.get(Uri.parse(api));

    if(result.statusCode == 200){
      List decodedData = jsonDecode(result.body);

      List<Covid> covid = decodedData.map((e) => Covid.fromList(data: e)).toList();

      return covid;
    }
    return null;
  }
}