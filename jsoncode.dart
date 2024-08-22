import "dart:convert";
import "dart:io";
import 'package:http/http.dart ' as http;

void main() async{
  try{
    //example 1
    final json = '{"name":"henry","location":"los angeles","age":67,'''
        '"reveiws":[{"rating1":"5 star","rating2":"4 star"}]}';
    final converted = jsonDecode(json);
    print('$converted.runtimeType}: ${converted}');
    final reversalEncoder = jsonEncode(converted);
    print('$reversalEncoder.runtimeType}: ${reversalEncoder}');

    final response = await http.get(
      Uri.parse("https://jsonplaceholder.typicode.com/todos"),
    );

    if (response.statusCode == 200) {
      final List<dynamic> data = jsonDecode(response.body);
      var todo = data.take(20).toList();
      for (var i in todo) {
        print(i);

        // print hello before response get here
        // If u want to save a file you can use the file class
        File file = File('responseData.json');
        await file.writeAsString(response.body);
        print("Data saved to ${file.path}");
      }
    }else{
      print("Failed to fetch data: ${response.statusCode}");
    }

  }catch (e){
    print('Error:$e');
  }
}