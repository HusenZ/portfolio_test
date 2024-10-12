import 'package:flutter/material.dart';
import 'package:portfolio_ui/core/constant/image_const.dart';
import 'package:portfolio_ui/presentation/widgets/project_card.dart';
import 'package:portfolio_ui/presentation/widgets/search_bar.dart';

class ProjectTab extends StatefulWidget {
  const ProjectTab({super.key});

  @override
  State<ProjectTab> createState() => ProjectTabState();
}

class ProjectTabState extends State<ProjectTab> {
  @override
  Widget build(BuildContext context) {
    List<String> images = [
      AppImages.image01,
      AppImages.image02,
      AppImages.image04,
      AppImages.image03,
      AppImages.image04,
    ];
    return Column(
      children: [
        const CustomSearchBar(),
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: images.length,
            itemBuilder: (_, int index) {
              return ProjectCard(
                imageUrl: images[index],
                title: 'Kemampuan Merangkum Tulisan',
                language: 'BAHASA SUNDA',
                author: 'Oleh Al-Baiqi Samaan',
                gradeLetter: 'A',
              );
            },
          ),
        ),
      ],
    );
  }
}
/*
 return SingleChildScrollView(
        child: Column(
      children: [
        CustomSearchBar(),
        
        ProjectCard(
            imageUrl: 'assets/images/image01.jpg',
            title: 'Kemampuan Merangkum Tulisan',
            language: 'BAHASA SUNDA',
            author: 'Oleh Al-Baiqi Samaan',
            gradeLetter: 'A')
      ],
    ));
*/