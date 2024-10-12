import 'package:flutter/material.dart';
import 'package:portfolio_ui/core/theme/colors_manager.dart';
import 'package:sizer/sizer.dart';

class ProjectCard extends StatelessWidget {
  final String imageUrl;
  final String title;
  final String language;
  final String author;
  final String gradeLetter;

  const ProjectCard({
    super.key,
    required this.imageUrl,
    required this.title,
    required this.language,
    required this.author,
    required this.gradeLetter,
  });

  @override
  Widget build(BuildContext context) {
    List<String> parts = author.split(' ');
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.sp),
      ),
      color: const Color.fromRGBO(255, 255, 255, 1),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10.sp),
              bottomLeft: Radius.circular(10.sp),
            ),
            child: Image.asset(
              imageUrl,
              height: 16.59.h,
              width: 28.w,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(width: 5.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: Theme.of(context)
                      .textTheme
                      .bodyLarge!
                      .copyWith(fontSize: 16.sp),
                ),
                SizedBox(height: 1.h),
                Text(language,
                    style: Theme.of(context)
                        .textTheme
                        .bodySmall!
                        .copyWith(fontWeight: FontWeight.w300)),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: parts[0],
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              fontWeight: FontWeight.w300,
                            ),
                      ),
                      const TextSpan(
                        text:
                            ' ', // Add a space between the two texts if needed
                      ),
                      TextSpan(
                        text: parts[1],
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              fontWeight: FontWeight.w400,
                              color: AppColor.lightFontColor,
                            ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(width: 5.w),
          Padding(
            padding: EdgeInsets.only(top: 5.h, right: 4.w),
            child: Container(
              height: 4.h,
              width: 16.w,
              padding: EdgeInsets.all(8.sp),
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [
                    Color.fromARGB(255, 235, 130, 104),
                    Colors.orange,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
                borderRadius: BorderRadius.circular(8.0),
              ),
              child: Center(
                child: Text(
                  gradeLetter,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                    fontSize: 16.sp,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
