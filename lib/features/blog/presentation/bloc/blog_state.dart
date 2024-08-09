part of 'blog_bloc.dart';

@immutable
sealed class BlogState {
  const BlogState();
}

final class BlogInitial extends BlogState {}

final class BlogLoading extends BlogState {}

final class BlogUploadSuccess extends BlogState {}

final class BlogDisplaySuccess extends BlogState {
  final List<Blog> blogs;

  const BlogDisplaySuccess(this.blogs);
}

final class BlogFailure extends BlogState {
  final String message;

  const BlogFailure(this.message);
}
