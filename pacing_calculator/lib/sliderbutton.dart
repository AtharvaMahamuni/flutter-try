import 'package:flutter/material.dart';
import 'package:pacing_calculator/homepage.dart';
import 'package:pacing_calculator/solutionpage.dart';
import 'package:slider_button/slider_button.dart';

// ignore: must_be_immutable
class CustomSlider extends StatefulWidget {
  const CustomSlider({super.key});
  @override
  State<CustomSlider> createState() => _CustomSliderState();
}

class _CustomSliderState extends State<CustomSlider> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Center(
        child: SliderButton(
          buttonColor: Colors.amber,
          action: () async {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const SolutionsPage())).then((_) {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
            });
            return true;
          },
          label: const Text(
            "Slide to Calculate",
            style: TextStyle(
                color: Color(0xff4a4a4a),
                fontWeight: FontWeight.w500,
                fontSize: 17),
          ),
          icon: const Text(
            "  .",
            style: TextStyle(
              color: Color.fromARGB(255, 207, 24, 11),
              fontWeight: FontWeight.w400,
              fontSize: 44,
            ),
          ),
          backgroundColor: Colors.blue.shade300,
        ),
      ),
    );
  }
}
