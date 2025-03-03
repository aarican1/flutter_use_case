import 'package:flutter/material.dart';
import 'package:flutter_use_case_app/getx_usage/getx_controller/getx_view_model.dart';
import 'package:flutter_use_case_app/getx_usage/getx_model/memes.dart';
import 'package:get/get.dart';

part '../getx_mixin/getx_mixin.dart';

class GetxView extends StatefulWidget {
  const GetxView({super.key});

  @override
  State<GetxView> createState() => _GetxViewState();
}

class _GetxViewState extends State<GetxView> with GetxMixin {
  final GetxViewModel viewModel = Get.put(GetxViewModel());
  @override
  void initState() {
    super.initState();
    viewModel = Get.put(GetxViewModel());
    memesPageController = PageController();
    viewModel.getMemes();
  }

  @override
  void dispose() {
    viewModel.dispose();
    memesPageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        backgroundColor: viewModel.backgroundColor.value,
        appBar: AppBar(
          backgroundColor: viewModel.backgroundColor.value,
          title: const Text(
            "MEMES",
            style: TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
        body: viewModel.isLoading.value
            ? const Center(
                child: CircularProgressIndicator(),
              )
            : Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Flexible(
                    fit: FlexFit.loose,
                    child: PageView.builder(
                      controller: memesPageController,
                      onPageChanged: (value) {
                        viewModel.currentMemesIndex.value = value;
                        viewModel.changeBackgroundColor();
                      },
                      itemCount: viewModel.memesData.value?.memes?.length,
                      itemBuilder: (context, index) {
                        Meme? meme = viewModel.memesData.value?.memes?[index];
                        return Column(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                meme?.name ?? "",
                                textAlign: TextAlign.center,
                                maxLines: 3,
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.w600),
                              ),
                            ),
                            Flexible(
                                fit: FlexFit.tight,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image.network(
                                    meme?.url ?? "",
                                    fit: BoxFit.contain,
                                  ),
                                )),
                          ],
                        );
                      },
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      IconButton(
                          onPressed: viewModel.currentMemesIndex.value == 0
                              ? null
                              : () {
                                  viewModel.currentMemesIndex.value--;
                                  memesPageController.jumpToPage(
                                      viewModel.currentMemesIndex.value);
                                },
                          icon: const Icon(Icons.swipe_left)),
                      Text(
                        "${viewModel.currentMemesIndex.value}",
                        style: const TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w600),
                      ),
                      IconButton(
                          onPressed: viewModel.currentMemesIndex.value ==
                                  (viewModel.memesData.value?.memes?.length ??
                                          0) -
                                      1
                              ? null
                              : () {
                                  viewModel.currentMemesIndex.value++;
                                  memesPageController.jumpToPage(
                                      viewModel.currentMemesIndex.value);
                                },
                          icon: const Icon(Icons.swipe_right)),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  )
                ],
              ),
      ),
    );
  }
}
