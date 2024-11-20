import 'package:flutter/material.dart';
import 'package:myapp/constants/colors.dart';
import 'package:myapp/models/categoryModel.dart';

class CategoryCard extends StatelessWidget {
  final CategoryModel category;

  CategoryCard({required this.category});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 70,
          height: 70,
          decoration: BoxDecoration(
            color: AppColors.primaryColor.withOpacity(0.1),
            shape: BoxShape.circle,
          ),
          child: ClipOval(
            child: Image.network(
              category.categoryImageUrl,
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(height: 8),
        Text(
          category.title,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
