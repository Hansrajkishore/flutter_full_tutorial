import 'package:flutter_full_tutorial/models/online_PostModel.dart';
import 'package:http/http.dart' as http;

var base = "https://dummyjson.com";

getPosts() async {
  Uri url = Uri.parse("$base/products");
  var res = await http.get(url);

  try {
    if (res.statusCode == 200) {
      var data = postModelFromJson(res.body);

      return data.products;
    } else {
      print("Error during connectio");
    }
  } catch (e) {
    print(e.toString());
  }
}
