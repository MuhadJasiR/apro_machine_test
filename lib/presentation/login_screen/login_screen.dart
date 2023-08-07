import 'package:apro_machine_test/core/constats/constants.dart';
import 'package:apro_machine_test/presentation/home_screen/home_screen.dart';
import 'package:apro_machine_test/presentation/landing_screen/landing_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_social_button/flutter_social_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool isPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text(
              "Welcome back\nto Mabank Wallet",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Form(
              key: _formKey,
              child: Column(
                children: [
                  const Text(
                    "Sign up with",
                    style: TextStyle(color: Colors.grey),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      SizedBox(
                        height: 100,
                        width: 180,
                        child: FlutterSocialButton(
                          title: "Google",
                          onTap: () {},
                          buttonType: ButtonType.google,
                        ),
                      ),
                      SizedBox(
                        height: 100,
                        width: 180,
                        child: FlutterSocialButton(
                          title: "facebook",
                          onTap: () {},
                          buttonType: ButtonType.facebook,
                        ),
                      ),
                    ],
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: TextFormField(
                      controller: _usernameController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter your username";
                        }
                      },
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey[200],
                        border: InputBorder.none,
                        label: const Text("Username"),
                        prefixIcon: const Icon(Icons.person_3_outlined),
                      ),
                    ),
                  ),
                  kHeight(15),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: TextFormField(
                      controller: _passwordController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Please enter your password";
                        } else if (value.length < 6) {
                          return "Password must be  at least 6 characters";
                        }
                      },
                      obscureText: isPasswordVisible,
                      decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.grey[200],
                          border: InputBorder.none,
                          label: const Text("Password"),
                          prefixIcon: const Icon(Icons.key),
                          suffixIcon: IconButton(
                              onPressed: () {
                                setState(() {
                                  isPasswordVisible = !isPasswordVisible;
                                });
                              },
                              icon: Icon(isPasswordVisible
                                  ? Icons.visibility_off
                                  : Icons.visibility))),
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const LandingScreen(),
                          ));
                    }
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)),
                      backgroundColor: kDeepPurple,
                      maximumSize: Size(165.w, 50.h),
                      minimumSize: Size(165.w, 50.h)),
                  child: const Text(
                    "Login",
                    style: TextStyle(fontSize: 17),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account yet?"),
                    TextButton(onPressed: () {}, child: const Text("Register"))
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _passwordController.clear();
    _usernameController.clear();
    super.dispose();
  }
}
