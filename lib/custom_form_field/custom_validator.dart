final class CustomValidator {
  CustomValidator({required this.value});
  final String? value;

// return error message or null if value is  empty or null
  String? get checker {
    if (value == null || value!.isEmpty) {
      return 'Please enter required text';
    } else {
      return null;
    }
  }
}
