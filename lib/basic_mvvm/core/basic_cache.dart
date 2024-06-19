abstract class BasicCacheInterface {
  Future<bool> saveString(String value);
}

final class BasicCache implements BasicCacheInterface {
  @override
  Future<bool> saveString(String value) async {
    await Future.delayed(const Duration(seconds: 1));
   // print(value);
    return true;
  }
}
