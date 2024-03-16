import 'package:blog_app/core/constants/blog_colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:lottie/lottie.dart';

import '../../../../core/constants/blog_routes.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final sizeMQ = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Lottie.asset('assets/Animation_1710533762339.json',
                  height: 210.h, fit: BoxFit.cover),
              SizedBox(height: 30.h),
              Container(
                height: sizeMQ.height * 0.68,
                width: sizeMQ.width,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(36.r),
                        topRight: Radius.circular(36.r)),
                    color: Colors.white),
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 28.w),
                  child: Column(
                    children: [
                      SizedBox(height: 50.h),
                      Text(
                        'Login',
                        style: TextStyle(
                            color: BlogColors.primaryColor,
                            fontSize: 32.sp,
                            fontWeight: FontWeight.w700),
                      ),
                      SizedBox(height: 26.h),
                      TextField(
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(10).w,
                          prefixIcon: const Icon(CupertinoIcons.mail),
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          labelText: 'Email',
                        ),
                      ),
                      SizedBox(height: 26.h),
                      TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          contentPadding: const EdgeInsets.all(10).w,
                          prefixIcon: const Icon(CupertinoIcons.padlock),
                          border: const OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                          ),
                          labelText: 'Password',
                        ),
                      ),
                      SizedBox(height: 5.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          SizedBox(
                            width: 210,
                            child: CheckboxListTile(
                              contentPadding: EdgeInsets.zero,
                              title: const Text('Remember me'),
                              value: false,
                              controlAffinity: ListTileControlAffinity.leading,
                              onChanged: (value) {},
                            ),
                          ),
                          Text('Forgot Password?',
                              style: TextStyle(
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w700)),
                        ],
                      ),
                      SizedBox(height: 30.h),
                      SizedBox(
                        width: sizeMQ.width,
                        child: FilledButton(
                          style: FilledButton.styleFrom(
                            shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                            ),
                          ),
                          onPressed: () {},
                          child: Text('Login'),
                        ),
                      ),
                      SizedBox(height: 40.h),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Don\'t have an account? ',
                              style: TextStyle(
                                  color: BlogColors.primaryColor,
                                  fontSize: 14.sp,
                                  fontWeight: FontWeight.w400),
                            ),
                            TextSpan(
                              text: 'Sign Up',
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => Navigator.of(context)
                                    .pushNamed(BlogRoutes.registerRoute),
                              style: TextStyle(
                                color: BlogColors.primaryColor,
                                fontSize: 14.sp,
                                fontWeight: FontWeight.bold,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
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
    );
  }
}
