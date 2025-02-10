# Unhandled Exception in JSON Array Access

This example demonstrates a common error in Dart when handling JSON responses from APIs. The code directly accesses the first element of a JSON array without checking if the array is empty, which could lead to an `IndexOutOfRangeException`.

The solution shows how to handle this situation gracefully by checking for emptiness and providing more robust error handling.
