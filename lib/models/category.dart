import 'package:flutter/material.dart';

class Category {
  final String id;
  final String title;
  final Color bg_color;
  final String image_url;
  const Category(
      {required this.id,
      required this.title,
      required this.bg_color,
      required this.image_url});
}
