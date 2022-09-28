import 'package:cash_book_app/routes/routes.dart';
import 'package:cash_book_app/styles/constant.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    double defaultLoginSize = size.height - (size.height * 0.2);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            width: size.width,
            height: defaultLoginSize,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/logo.png',
                  width: 190,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'CashFlow App',
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: secondaryColor,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 16,
                    horizontal: 32,
                  ),
                  child: Column(
                    children: [
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 8),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(32),
                          // color: const Color(0xFFD6E4FF).withAlpha(144),
                          border: Border.all(
                            color: foregroundColor,
                          ),
                        ),
                        child: TextFormField(
                          cursorColor: primaryColor,
                          keyboardType: TextInputType.text,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(
                              Icons.person,
                              color: primaryColor,
                            ),
                            hintText: 'Username',
                          ),
                        ),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 8),
                        padding: const EdgeInsets.symmetric(
                            horizontal: 24, vertical: 8),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(32),
                          // color: const Color(0xFFD6E4FF).withAlpha(144),
                          border: Border.all(
                            color: foregroundColor,
                          ),
                        ),
                        child: TextFormField(
                          cursorColor: primaryColor,
                          keyboardType: TextInputType.text,
                          obscureText: true,
                          decoration: const InputDecoration(
                            border: InputBorder.none,
                            icon: Icon(
                              Icons.lock,
                              color: primaryColor,
                            ),
                            hintText: 'Password',
                          ),
                        ),
                      ),
                      InkWell(
                        onTap: () => {
                          Navigator.pushNamed(
                            context,
                            Routes.homeScreen,
                          )
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32),
                            color: const Color(0xFF091A7A),
                          ),
                          margin: const EdgeInsets.symmetric(vertical: 16),
                          padding: const EdgeInsets.symmetric(vertical: 18),
                          alignment: Alignment.center,
                          child: const Text(
                            'LOGIN',
                            style: TextStyle(
                              color: whiteColor,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.25,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
