//* Process the error message
String? parseErrorMessage(dynamic errorResponse) {
  String? errorMessage;

  if (errorResponse is Map<String, dynamic>) {
    errorMessage = errorResponse['message'] ?? 'Unknown error occurred';
  } else if (errorResponse is String) {
    errorMessage = errorResponse;
  }

  return errorMessage;
}
