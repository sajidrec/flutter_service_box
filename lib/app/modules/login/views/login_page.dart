import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_service_box/app/modules/login/controllers/login_page_controller.dart';
import 'package:flutter_service_box/app/routes/app_routes.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffEFF5FF),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 32.h),
                _buildServiceBoxHeaderLogo(),
                SizedBox(height: 8.h),
                Text(
                  "Login to your account",
                  style: TextStyle(
                    fontSize: 16.sp,
                    color: Colors.black.withValues(alpha: 0.75),
                  ),
                ),

                SizedBox(height: MediaQuery.of(context).size.height / 5.5),

                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: Padding(
                    padding: EdgeInsets.all(12.sp),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Login",
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          "Welcome back",
                          style: TextStyle(
                            color: Colors.black.withValues(alpha: .75),
                          ),
                        ),

                        SizedBox(height: 18.h),

                        _buildEmailInput(),
                        SizedBox(height: 12.h),

                        _buildPasswordInput(),

                        SizedBox(height: 20.h),

                        _buildLoginButton(),
                        SizedBox(height: 8.h),
                        InkWell(
                          onTap: () {
                            context.go(AppRoutes.signupRoute);
                          },
                          child: Text(
                            "Create new account",
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: Colors.blue.withValues(alpha: .75),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  SizedBox _buildLoginButton() {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xff245DE1),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
        ),

        onPressed: () {
          context.go(AppRoutes.bottomNavBarRoute);
        },
        child: Text("Login", style: TextStyle(fontSize: 16.sp)),
      ),
    );
  }

  Column _buildEmailInput() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Email"),
        TextField(
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            filled: true,

            prefixIcon: Icon(
              Icons.email,
              color: Colors.black.withValues(alpha: .55),
            ),
            fillColor: Color(0xffF9FAFB),
            contentPadding: EdgeInsets.all(8.sp),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xffF0F0F0)),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Color(0xffF0F0F0)),
            ),
          ),
        ),
      ],
    );
  }

  Column _buildPasswordInput() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("Password"),
        GetBuilder<LoginPageController>(
          init: LoginPageController(),
          builder: (controller) {
            return TextField(
              obscureText: controller.obscurePass,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                filled: true,
                suffixIcon: IconButton(
                  onPressed: () {
                    controller.toggleObscurePass();
                  },
                  icon: Icon(
                    controller.obscurePass
                        ? Icons.visibility_off_outlined
                        : Icons.visibility_outlined,
                    color: Colors.black.withValues(alpha: .55),
                  ),
                ),
                prefixIcon: Icon(
                  Icons.lock,
                  color: Colors.black.withValues(alpha: .55),
                ),
                fillColor: Color(0xffF9FAFB),
                contentPadding: EdgeInsets.all(8.sp),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xffF0F0F0)),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Color(0xffF0F0F0)),
                ),
              ),
            );
          },
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
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Padding(
                padding: EdgeInsets.all(8.sp),
                child: Icon(
                  Icons.home_repair_service,
                  size: 35.sp,
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
