import 'package:flutter_getx_with_dio_example/models/post.dart';
import '../../library/api_request.dart';

class PostsProvider {
  void getPostsList({
    Function()? beforeSend,
    Function(List<Post> posts)? onSuccess,
    Function(dynamic error)? onError,
  }) {
    ApiRequest(url: 'https://jsonplaceholder.typicode.com/posts', data: null).get(
      beforeSend: () => {if (beforeSend != null) beforeSend()},
      onSuccess: (data) {
        if(onSuccess != null) {
          onSuccess((data as List).map((postJson) => Post.fromJson(postJson)).toList());
        }
      },
      onError: (error) => {if (onError != null) onError(error)},
    );
  }
}
