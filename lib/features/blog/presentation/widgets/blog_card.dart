import 'package:blog_app/core/theme/app_pallete.dart';
import 'package:blog_app/features/blog/domain/entity/blog.dart';
import 'package:flutter/material.dart';

class BlogCard extends StatelessWidget {
  final Blog blog;
  const BlogCard({
    super.key,
    required this.blog,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: AppPallete.gradient1,
        borderRadius: BorderRadius.circular(10),
      ),
      height: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: blog.topics
                  .map(
                    (e) => Padding(
                      padding: const EdgeInsets.only(right: 5.0),
                      child: Chip(
                        label: Text(e),
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
          Expanded(
            child: Text(
              blog.title,
              style: const TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Text('1 min'),
        ],
      ),
    );
  }
}
