import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_service_box/app/modules/search/controller/search_page_controller.dart';
import 'package:get/get.dart';

class SearchPage extends StatelessWidget {
  SearchPage({super.key});

  final List<String> catItems = [
    "All",
    "Electric",
    "AC Service",
    "TV Service",
    "Car Service",
    "Freeze Service",
    "Plumbing",
    "Painting",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Search"),
        centerTitle: true,
        elevation: 0.2,
      ),
      body: SafeArea(
        child: GetBuilder<SearchPageController>(
          init: SearchPageController(),
          builder: (controller) {
            return SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildSearchInput(),
                  SizedBox(height: 16.h),

                  _buildCategoryListChips(),

                  SizedBox(height: 12.h),

                  _buildNearbyTechnicians(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Column _buildNearbyTechnicians() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 16.h),

        ListView.separated(
          shrinkWrap: true,
          primary: false,
          itemBuilder: (context, index) => Container(
            decoration: BoxDecoration(color: Colors.white),
            child: Row(
              children: [
                CircleAvatar(
                  maxRadius: 30.sp,
                  backgroundImage: NetworkImage(
                    "https://img.freepik.com/premium-vector/man-avatar-profile-picture-isolated-background-avatar-profile-picture-man_1293239-4855.jpg",
                  ),
                ),

                SizedBox(width: 10.w),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "MD. Sajid Hossain",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 14.sp,
                      ),
                    ),
                    Text(
                      "Electric",
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 12.sp,
                        color: Colors.black.withValues(alpha: .70),
                      ),
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            Icon(Icons.location_on_outlined),
                            SizedBox(width: 4.w),
                            Text(
                              "1.2 KM Away",
                              style: TextStyle(
                                fontSize: 10.sp,
                                color: Colors.black.withValues(alpha: .65),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(width: 8.w),
                        Row(
                          children: [
                            Icon(Icons.home_repair_service),
                            SizedBox(width: 4.w),
                            Text(
                              "4 years experience",
                              style: TextStyle(
                                fontSize: 10.sp,
                                color: Colors.black.withValues(alpha: .65),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),

                    Row(
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.green,
                          ),
                          onPressed: () {},
                          child: Icon(Icons.phone),
                        ),
                        SizedBox(width: 20.w),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12.r),
                            ),
                            foregroundColor: Colors.white,
                            backgroundColor: Colors.lightGreen,
                          ),
                          onPressed: () {},
                          child: Icon(Icons.sms),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          separatorBuilder: (context, index) => SizedBox(height: 12.h),
          itemCount: 10,
        ),
      ],
    );
  }

  SizedBox _buildCategoryListChips() {
    return SizedBox(
      height: 40.h, // Adjust height as needed
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: catItems.length,
        itemBuilder: (context, index) => Container(
          padding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 8.h),
          decoration: BoxDecoration(
            color: Colors.grey.withValues(alpha: 0.15),
            borderRadius: BorderRadius.circular(8.r),
          ),
          child: Text(catItems[index]),
        ),
        separatorBuilder: (context, index) => SizedBox(width: 8.w),
      ),
    );
  }

  TextField _buildSearchInput() {
    return TextField(
      decoration: InputDecoration(
        hintText: "Search",
        hintStyle: const TextStyle(color: Colors.grey),
        prefixIcon: const Icon(Icons.search),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12.r)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: Colors.grey.withValues(alpha: .35)),
        ),
      ),
    );
  }
}
