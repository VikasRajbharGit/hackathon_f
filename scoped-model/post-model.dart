import 'package:hackathon/model/user.dart';
import 'package:scoped_model/scoped_model.dart';
import 'package:hackathon/model/post.dart';

class ConnectedPostsModel extends Model {
  bool _isLoading = false;
  int _selPostId;
  User _authencticatedUser;
  List<Post> _posts = [];
}

class PostsModel extends ConnectedPostsModel {
  List<Post> get allPosts {
    return List.from(_posts);
  }

  int get selectedPostId {
    return _selPostId;
  }

  int get selectedPostIndex {
    final int _selectedPostIndex = _posts.indexWhere((Post post) {
      post.postId = _selPostId;
    });
    return _selectedPostIndex;
  }

  Future<Null> fetchPosts() async {
    _isLoading = true;
    notifyListeners();
    _isLoading = false;
    notifyListeners();
  }

  Future<Null> likePost(Post post, User user) async {
    _isLoading = true;
    notifyListeners();
    _posts[selectedPostIndex] = Post(
        postId: post.postId,
        postTitle: post.postTitle,
        author: post.author,
        content: post.content,
        likes: post.likes + 1,
        comments: post.comments,
        date: post.date);
    Map<String, dynamic> postData = Post.toJson(_posts[selectedPostIndex]);
    _isLoading = false;
    notifyListeners();
  }

  Future<Null> commentPost(Post post, String comment) async {
    _isLoading = true;
    notifyListeners();
    post.comments.add(comment);
    _posts[selectedPostIndex] = Post(
        postId: post.postId,
        postTitle: post.postTitle,
        author: post.author,
        content: post.content,
        likes: post.likes,
        comments: post.comments,
        date: post.date);
    Map<String, dynamic> postData = Post.toJson(_posts[selectedPostIndex]);
    _isLoading = false;
    notifyListeners();
  }
}
