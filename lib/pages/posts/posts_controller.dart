import 'package:flutter_getx_with_dio_example/pages/posts/posts_provider.dart';
import 'package:get/get.dart';
import '../../models/post.dart';


class PostsController extends GetxController {
  List<Post> postsList = [];
  bool isLoading = true;
  @override
  void onInit() {
    PostsProvider().getPostsList(
      onSuccess: (posts) {
        postsList.addAll(posts);
        isLoading = false;
        update();
      },
      onError: (error) {
        isLoading = false;
        update();
        print("Error");
      },
    );
    super.onInit();
  }
}
