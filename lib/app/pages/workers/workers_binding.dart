import 'package:get/get.dart';
import 'package:kaam_dhaam/app/pages/workers/workers.dart';

/// A list of bindings which will be used in the route of [Worker].

class WorkersBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WorkerController>(
      () => WorkerController(),
    );
  }
}
