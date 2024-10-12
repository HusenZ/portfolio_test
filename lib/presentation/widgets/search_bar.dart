import 'package:flutter/material.dart';
import 'package:portfolio_ui/core/theme/colors_manager.dart';
import 'package:sizer/sizer.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16.sp),
      child: TextField(
        decoration: InputDecoration(
          hintText: 'Search a project',
          hintStyle: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(fontWeight: FontWeight.w300),
          filled: true,
          fillColor: Colors.white,
          contentPadding:
              EdgeInsets.symmetric(vertical: 12.sp, horizontal: 20.sp),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(12.sp),
            borderSide: const BorderSide(
              color: Color.fromARGB(255, 202, 198, 204),
            ),
          ),
          suffixIcon: Container(
            height: 2.h,
            width: 2.w,
            margin: EdgeInsets.all(10.sp),
            decoration: BoxDecoration(
              color: AppColor.primaryColor,
              borderRadius: BorderRadius.circular(15.sp),
            ),
            child: IconButton(
              icon: const Icon(Icons.search, color: Colors.white),
              onPressed: () {
                // Handle search action
              },
            ),
          ),
        ),
      ),
    );
  }
}
