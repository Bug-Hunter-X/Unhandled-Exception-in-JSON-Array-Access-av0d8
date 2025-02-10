```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final List<dynamic> jsonData = jsonDecode(response.body);
      // Check for empty list before accessing elements
      if (jsonData.isNotEmpty) {
        final firstItem = jsonData[0];
        print(firstItem['name']);
      } else {
        print('JSON array is empty');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    // Improved error handling
    print('An error occurred: $e');
    // Consider logging the error or showing a user-friendly error message
  }
}
```