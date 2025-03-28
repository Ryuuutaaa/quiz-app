import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/utils.dart';
import 'package:quiz_application/utils/constants.dart';
import 'package:quiz_application/views/quiz_categoryScreen.dart';

class WelcomeScreen extends StatelessWidget {
  TextEditingController userNameController = TextEditingController();

  WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset("assets/bg.svg", fit: BoxFit.fitWidth),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Spacer(flex: 2),
                  Text(
                    "Let's Play Quiz",
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Text("Enter your information below"),
                  const Spacer(),
                  TextField(
                    controller: userNameController,
                    decoration: const InputDecoration(
                      filled: true,
                      fillColor: Color(0xFF1C2341),
                      hintText: "Full Name please",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                    ),
                  ),
                  const Spacer(),

                  GestureDetector(
                    onTap: () {
                      Get.to(QuizCategoryscreen());
                    },
                    child: Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(kDefaultPadding * 0.75),
                      decoration: BoxDecoration(
                        gradient: kPrimaryGradient,
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      alignment: Alignment.center,
                      child: Text(
                        "Let's Start Quiz",
                        style: Theme.of(
                          context,
                        ).textTheme.labelLarge!.copyWith(color: Colors.black),
                      ),
                    ),
                  ),
                  const Spacer(flex: 2),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
