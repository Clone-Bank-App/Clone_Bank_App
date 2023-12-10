//192.168.219.104
import 'dart:convert';
import 'package:http/http.dart' as http;


Future<void> _sendDataToBackend(String id, String password) async {
  final url =
  Uri.parse('http://localhost:3000/'); // 여기에 백엔드의 URL을 입력해야 합니다.

  final response = await http.post(
    url,
    headers: {'Content-Type': 'application/json'},
    body: json.encode({'id': id, 'password': password}),
  );

  if (response.statusCode == 200) {
    print('Data sent successfully to the backend.');
    // 백엔드로 데이터가 성공적으로 보내졌을 경우 수행할 작업을 추가할 수 있습니다.
  } else {
    print('Failed to send data to the backend.');
    // 백엔드로 데이터를 보내는 데 실패한 경우 수행할 작업을 추가할 수 있습니다.
  }
}

Future<Map<String, dynamic>> getDataFromBackend() async {
  final url = Uri.parse('http://localhost:3000/data'); // Replace with your actual backend URL.

  try {
    final response = await http.get(
      url,
      headers: {'Content-Type': 'application/json'},
    );

    if (response.statusCode == 200) {
      print('Data retrieved successfully from the backend.');
      Map<String, dynamic> data = json.decode(response.body);
      // Assuming the JSON response is something like:
      // { "name": "John Doe", "accountNumber": 123456 }

      return data['firstCell'];

      // Return the name and account number

    } else {
      // If the server did not return a 200 OK response, then throw an exception.
      throw Exception('Failed to load data from the backend. Status code: ${response.statusCode}');
    }
  } catch (e) {
    // Handle any exceptions here
    print('An error occurred while retrieving data: $e');
    throw Exception('An error occurred while retrieving data: $e');
  }
}
