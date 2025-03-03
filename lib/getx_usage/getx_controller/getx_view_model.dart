import 'package:flutter/material.dart';
import 'package:flutter_use_case_app/getx_usage/getx_model/memes.dart';
import 'package:flutter_use_case_app/getx_usage/services/network_services.dart';
import 'package:get/state_manager.dart';

class GetxViewModel extends GetxController {
  final RxBool isLoading = false.obs;
  final Rx<Data?> memesData = Rx<Data?>(null);
  final RxInt currentMemesIndex = 0.obs;
  final Rx<Color?> backgroundColor = Rx<Color>(Colors.white);
  final NetworkServices _networkServices = NetworkServices();

  Future<void> getMemes() async {
    isLoading.value = true;
    final Memes? memes = await _networkServices.getMemes();
    memesData.value = memes?.data;
    isLoading.value = false;
  }

  void changeBackgroundColor() {
    double ratio =
        currentMemesIndex.value / (memesData.value?.memes?.length ?? 100);

    int step = (ratio * 99).toInt(); // 0'dan 99'a kadar adımlar
    int r = (255 * step ~/ 99); // Kırmızı, beyazdan başlayıp artacak
    int g = 255 - (255 * step ~/ 99); // Yeşil, beyazdan başlayıp azalacak
    int b = 255 - (255 * step ~/ 99); // Mavi, beyazdan başlayıp azalacak
    backgroundColor.value = Color.fromRGBO(r, g, b, 1);
    print(backgroundColor.value);
  }
}
