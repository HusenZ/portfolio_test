import 'package:flutter/material.dart';
import 'package:portfolio_ui/core/theme/colors_manager.dart';
import 'package:portfolio_ui/presentation/screens/project_tab.dart';
import 'package:sizer/sizer.dart';

class PortfolioTab extends StatefulWidget {
  const PortfolioTab({super.key});

  @override
  State<PortfolioTab> createState() => _PortfolioTabState();
}

class _PortfolioTabState extends State<PortfolioTab> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          backgroundColor: AppColor.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28.sp), // Adjust this for size
          ),
          label: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.sp),
            ),
            child: Row(
              children: [
                const Icon(
                  Icons.filter_list,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 2.w,
                ),
                Text(
                  "Filter",
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w300,
                      fontSize: 18.sp),
                ),
              ],
            ),
          ),
        ),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: Text(
            "Portfolio",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_bag,
                  color: AppColor.primaryColor,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications,
                  color: AppColor.primaryColor,
                )),
          ],
          bottom: TabBar(
            indicatorColor: AppColor.primaryColor,
            labelColor: AppColor.primaryColor,
            unselectedLabelColor: AppColor.fontColor,
            labelStyle: Theme.of(context)
                .textTheme
                .bodyMedium!
                .copyWith(fontSize: 16.sp, fontWeight: FontWeight.w400),
            tabs: const [
              Tab(text: 'Project'),
              Tab(text: 'Saved'),
              Tab(text: 'Shared'),
              Tab(text: 'Achievment'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            ProjectTab(),
            Center(child: Text('Saved Tab Content')),
            Center(child: Text('Shared Tab Content')),
            Center(child: Text('Achievment Tab Content')),
          ],
        ),
      ),
    );
  }
}
