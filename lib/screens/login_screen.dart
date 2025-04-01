import 'dart:ui';

import 'package:flutter/material.dart';

import '../utils/utils.dart';

class LoginScreen extends StatelessWidget {
  static const routeName = '/login';
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Image.asset(
            "images/image1.jpg",
            fit: BoxFit.cover,
            height: double.maxFinite,
          ),
          ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: 0.7, sigmaY: 0.7),
            child: Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.white.withAlpha((255 * 0.7).toInt()),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(
                horizontal: MediaQuery.sizeOf(context).width * 0.1),
            padding: EdgeInsets.symmetric(horizontal: 46, vertical: 32),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              color: white,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    "Smart Aquaculture",
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                ),
                SizedBox(width: MediaQuery.sizeOf(context).width * 0.05),
                Container(
                  width: 2,
                  height: 400,
                  color: grey30,
                ),
                SizedBox(width: MediaQuery.sizeOf(context).width * 0.05),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Welcome Back",
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                      Text(
                        "Enter yout creadentials to continue",
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .copyWith(color: black70),
                      ),
                      SizedBox(height: space16),
                      SizedBox(
                        width: double.maxFinite,
                        child: TextField(
                          decoration: InputDecoration(
                            labelText: "Email",
                            labelStyle: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(color: black70),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: space8),
                      SizedBox(
                        width: double.maxFinite,
                        child: TextField(
                          decoration: InputDecoration(
                            suffixIcon: GestureDetector(
                              onTap: () {},
                              child: Icon(
                                Icons.visibility_off_outlined,
                                color: black70,
                              ),
                            ),
                            labelText: "Password",
                            labelStyle: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(color: black70),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: space12),
                      TextButton(
                        onPressed: () {},
                        child: Text("Forgot Password?"),
                      ),
                      SizedBox(height: space12),
                      SizedBox(
                        width: double.maxFinite,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text("Login"),
                        ),
                      ),
                      SizedBox(height: space32),
                      GestureDetector(
                        onTap: () {},
                        child: Center(
                          child: RichText(
                            text: TextSpan(
                              text: "Don't have an account? ",
                              children: [
                                TextSpan(
                                  text: "Sign Up",
                                  style: TextStyle(
                                    color: pBlue,
                                    decoration: TextDecoration.underline,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
