# Unhandled Exception in Nested JSON Data Access

This repository demonstrates a common error in Dart when working with nested JSON data:  failure to handle cases where expected keys or data structures are missing, causing runtime exceptions. The `bug.dart` file shows the problematic code, while `bugSolution.dart` provides a robust solution.

## Bug Description

The `fetchData` function attempts to access nested data within a JSON response.  If the 'nested' key or 'data' key is missing or if the 'data' value isn't of the expected type (e.g., it's null), an exception is thrown, resulting in a program crash or unexpected behavior.  The existing `catch` block is too generic and doesn't provide adequate information for debugging.

## Solution

The solution in `bugSolution.dart` implements comprehensive error handling. It checks for the existence of nested keys before accessing them and uses type checking to prevent unexpected data types from causing exceptions.  More descriptive error messages improve debugging and maintainability.
