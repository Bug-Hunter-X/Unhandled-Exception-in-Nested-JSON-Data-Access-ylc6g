```dart
Future<void> fetchData() async {
  try {
    final response = await http.get(Uri.parse('https://api.example.com/data'));
    if (response.statusCode == 200) {
      final jsonData = jsonDecode(response.body);
      // Check if the nested keys exist before accessing them.
      if (jsonData.containsKey('nested') && jsonData['nested'].containsKey('data')) {
        // Check data type before processing
        final nestedData = jsonData['nested']['data'];
        if(nestedData is String){
          print(nestedData);
        }else{
          print("Unexpected data type for 'data'");
        }
      } else {
        print('Error: Missing nested keys in JSON data');
      }
    } else {
      throw Exception('Failed to load data: ${response.statusCode}');
    }
  } catch (e) {
    print('Error: $e'); //Log the error for debugging
    //Handle the exception appropriately
  }
}
```