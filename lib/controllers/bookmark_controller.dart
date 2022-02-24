import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'package:kubenav/models/cluster_model.dart';

class BookmarkController extends GetxController {
  RxList<Rx<Cluster>> bookmarks = <Rx<Cluster>>[].obs;

  // onInit is used to initialize the bookmarks. For that we are looking if the value is already saved in the storage.
  // If this is the case we are reusing the saved value. If we could not found saved bookmarks we are using the default
  //  values (empty list).
  //
  // Besides that we are also using the 'ever' function so that all changes to the list of bookmarks are saved back to
  // the storage.
  @override
  void onInit() {
    List? storedBookmarks = GetStorage().read<List>('bookmarks');

    if (storedBookmarks != null && storedBookmarks.isNotEmpty) {
      bookmarks =
          storedBookmarks.map((e) => Cluster.fromJson(e).obs).toList().obs;
    }

    ever(bookmarks, (_) {
      GetStorage().write('bookmarks', bookmarks.toList());
    });

    super.onInit();
  }
}
