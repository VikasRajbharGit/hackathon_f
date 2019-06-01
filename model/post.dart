import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class Post {
  Post(
      {this.postId,
      this.author,
      this.postTitle,
      this.content,
      this.likes,
      this.comments,
      this.date});
  @required
  int postId;
  @required
  String postTitle;
  @required
  String author;
  @required
  String content;
  @required
  int likes = 0;
  @required
  List<String> comments;
  @required
  DateTime date;

  static Map<String, dynamic> toJson(Post post) {
    final Map<String, dynamic> postData = {
      'id': post.postId,
      'title': post.postTitle,
      'content': post.content,
      'date': post.date,
      'likes': post.likes,
      'comments': post.comments,
      'author': post.author,
      
    };
    return postData;
  }

  static Post fromJson(Map<String, dynamic> postData) {
    Post post = Post(
        postId: postData['postId'],
        postTitle: postData['postTitle'],
        author: postData['author'],
        content: postData['content'],
        likes: postData['likes'],
        comments: postData['comments'],
        date: postData['date']);
    return post;
  }
}
