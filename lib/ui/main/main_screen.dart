import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:git_get/ui/main/main_controller.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainController>(
        init: MainController(),
        builder: (controller) => Scaffold(
            appBar: AppBar(
              title: const Text("GitGet"),
              backgroundColor: Colors.cyan,
            ),
            body: controller.listPost != null
                ? ListView.builder(
                    itemCount: controller.listPost?.length,
                    itemBuilder: (context, index) {
                      var item = controller.listPost?[index];
                      return ListTile(
                        title: Text(item?.title ?? "-"),
                        subtitle: Text(item?.body ?? "-"),
                        onTap: () {
                          controller.update();
                        },
                      );
                    })
                : const Center(child: CircularProgressIndicator.adaptive())));
  }
}
