class SampleUserRequest {
  final String email;
  final String password;
  final String userName;

  SampleUserRequest(
      {required this.email, required this.password, required this.userName});
}

class InheritedSampleUser {
  final String userName;

  InheritedSampleUser({required this.userName});
}
