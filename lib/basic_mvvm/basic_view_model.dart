import 'package:flutter_use_case_app/basic_mvvm/basic_model.dart';
import 'package:flutter_use_case_app/basic_mvvm/core/basic_cache.dart';

final class BasicViewModel {
  final BasicCache cache;

  BasicViewModel({required this.cache});

  Future<bool> controlUserName(BasicModel basicModel) async {
    await Future.delayed(const Duration(seconds: 2));
    print(basicModel.userName);
    return basicModel.userName.length > 4 ? true : false;
  }

  Future<bool> saveUserNamToCache(BasicModel model) async {
    
    return await cache.saveString(model.userName);
  }
}
