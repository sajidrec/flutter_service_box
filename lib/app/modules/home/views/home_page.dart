import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: .3,
        title: _buildServiceBoxHeaderLogo(),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications_outlined),
          ),
          SizedBox(width: 8.w),
          CircleAvatar(
            backgroundImage: NetworkImage(
              "https://thumbs.dreamstime.com/b/female-avatar-profile-picture-vector-female-avatar-profile-picture-vector-102690279.jpg",
            ),
          ),
          SizedBox(width: 8.w),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 8.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 20.h),
                _buildYourLocation(),
                Divider(color: Colors.black.withValues(alpha: .2)),
                SizedBox(height: 12.h),
                _buildEmergencyButton(),
                SizedBox(height: 24.h),
                _buildSearchInput(),
                SizedBox(height: 12.h),
                _buildServiceCategory(),
                SizedBox(height: 16.h),
                _buildNearbyTechnicians(),
                SizedBox(height: 100.h),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Column _buildNearbyTechnicians() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Nearby Technicians",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.w900),
        ),
        SizedBox(height: 12.h),

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
          itemCount: 3,
        ),
      ],
    );
  }

  Column _buildServiceCategory() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Service Category",
          style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w900),
        ),
        SizedBox(height: 12.h),
        Wrap(
          spacing: 20.w,
          runSpacing: 20.h,
          children: [
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blueAccent.withValues(alpha: .2),
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(12.sp),
                    child: Icon(
                      size: 50.sp,
                      Icons.car_repair_outlined,
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
                SizedBox(height: 4.h),
                Text("Car Repair"),
              ],
            ),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.brown.withValues(alpha: .2),
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(12.sp),
                    child: Icon(
                      size: 50.sp,
                      Icons.electric_bolt,
                      color: Colors.yellow,
                    ),
                  ),
                ),
                SizedBox(height: 4.h),
                Text("Electric"),
              ],
            ),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue.withValues(alpha: .2),
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(12.sp),
                    child: Icon(size: 50.sp, Icons.ac_unit, color: Colors.blue),
                  ),
                ),
                SizedBox(height: 4.h),
                Text("AC Service"),
              ],
            ),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.purple.withValues(alpha: .2),
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(12.sp),
                    child: Icon(
                      size: 50.sp,
                      Icons.tv_outlined,
                      color: Colors.purple,
                    ),
                  ),
                ),
                SizedBox(height: 4.h),
                Text("TV Service"),
              ],
            ),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.green.withValues(alpha: .2),
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(12.sp),
                    child: Icon(
                      size: 50.sp,
                      Icons.kitchen,
                      color: Colors.green,
                    ),
                  ),
                ),
                SizedBox(height: 4.h),
                Text("Freeze"),
              ],
            ),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.red.withValues(alpha: .2),
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(12.sp),
                    child: Icon(size: 50.sp, Icons.plumbing, color: Colors.red),
                  ),
                ),
                SizedBox(height: 4.h),
                Text("Plumbing"),
              ],
            ),
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.pink.withValues(alpha: .2),
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(12.sp),
                    child: Icon(
                      size: 50.sp,
                      Icons.format_paint,
                      color: Colors.pink,
                    ),
                  ),
                ),
                SizedBox(height: 4.h),
                Text("Painting"),
              ],
            ),
          ],
        ),
      ],
    );
  }

  TextField _buildSearchInput() {
    return TextField(
      decoration: InputDecoration(
        prefixIcon: Icon(Icons.search),
        contentPadding: EdgeInsets.all(8.sp),
        hintText: "Search",
        hintStyle: TextStyle(color: Colors.black.withValues(alpha: .55)),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: Colors.black.withValues(alpha: .2)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12.r),
          borderSide: BorderSide(color: Colors.black.withValues(alpha: .2)),
        ),
      ),
    );
  }

  InkWell _buildEmergencyButton() {
    return InkWell(
      onTap: () {},
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.red,
            borderRadius: BorderRadius.circular(12.r),
          ),
          child: Padding(
            padding: EdgeInsets.all(16.sp),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: .35),
                    borderRadius: BorderRadius.circular(100.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(12.sp),
                    child: Icon(
                      Icons.warning_amber,
                      size: 35.sp,
                      color: Colors.white,
                    ),
                  ),
                ),
                Text(
                  "Click For Get Emergency Help",
                  style: TextStyle(
                    fontSize: 18.sp,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Row _buildYourLocation() {
    return Row(
      children: [
        Icon(Icons.location_on, color: Color(0xff2150CA)),
        SizedBox(width: 8.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Your location",
              style: TextStyle(fontSize: 18.sp, fontWeight: FontWeight.w600),
            ),
            Text(
              "Dhaka 1212",
              style: TextStyle(
                fontSize: 16.sp,
                color: Colors.black.withValues(alpha: .80),
              ),
            ),
          ],
        ),
      ],
    );
  }

  Row _buildServiceBoxHeaderLogo() {
    return Row(
      children: [
        Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Color(0xff2151CB),
                borderRadius: BorderRadius.circular(16.r),
              ),
              child: Padding(
                padding: EdgeInsets.all(8.sp),
                child: Icon(
                  Icons.home_repair_service,
                  size: 30.sp,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
        SizedBox(width: 12.w),
        Text(
          "Service Box",
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ],
    );
  }
}
