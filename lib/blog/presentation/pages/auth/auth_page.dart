import 'package:blog_app/core/constants/blog_assets.dart';
import 'package:blog_app/core/constants/blog_routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(BlogAssets.girlBg),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(),
                Text(
                  'Explore the world,\nBillions of Thoughts.',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28.sp,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 20.h),

                /// login btn
                CommonBtnAuth(
                  btnText: 'Login',
                  onPressed: () {
                    Navigator.of(context).pushNamed(BlogRoutes.loginRoute);
                  },
                ),
                SizedBox(height: 10.h),

                /// register btn
                CommonBtnAuth(
                  btnText: 'Register',
                  onPressed: () {
                    Navigator.of(context).pushNamed(BlogRoutes.registerRoute);
                  },
                ),
                SizedBox(height: 30.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CommonBtnAuth extends StatelessWidget {
  final String btnText;
  final Function() onPressed;

  const CommonBtnAuth({
    super.key,
    required this.btnText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 200.h,
          child: TextButton(
            style: TextButton.styleFrom(
              side: const BorderSide(color: Colors.white),
            ),
            onPressed: onPressed,
            child: Text(
              btnText,
              style: TextStyle(color: Colors.white, fontSize: 16.sp),
            ),
          ),
        ),
      ],
    );
  }
}
