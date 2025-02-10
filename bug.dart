```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      // Assuming the API returns a JSON array
      final List<dynamic> jsonData = jsonDecode(response.body);
      // Accessing the first element directly could throw an exception if the list is empty
      final firstItem = jsonData[0];
      print(firstItem['name']);
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e');
    // Missing proper error handling. Consider logging or displaying an error message to the user.
  }
}
```