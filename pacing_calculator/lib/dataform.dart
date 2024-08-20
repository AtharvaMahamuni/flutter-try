import 'package:flutter/material.dart';
import 'package:pacing_calculator/homepage.dart';
import 'package:pacing_calculator/sliderbutton.dart';

class DataForm extends StatefulWidget {
  const DataForm({
    super.key,
  });

  @override
  State<DataForm> createState() => _DataFormState();
}

class _DataFormState extends State<DataForm> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      // width: MediaQuery.sizeOf(context).width,
      // height: MediaQuery.sizeOf(context).height * 60 / 100,
      child: const SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 150,
            ),
            ObscuredTextField(
              // controller: _noOfUsersController,
              decorationLabelText: 'No. of Users (Threads)',
            ),
            SizedBox(
              height: 20,
            ),
            ObscuredTextField(
              // controller: _eToEresponseTimeController,
              decorationLabelText: 'End-End response time (in sec)',
            ),
            SizedBox(
              height: 20,
            ),
            ObscuredTextField(
              // controller: _iterationsPerHourController,
              decorationLabelText: 'Iterations per hour',
            ),
            SizedBox(
              height: 20,
            ),
            ObscuredTextField(
              // controller: _thinkTimeController,
              decorationLabelText: 'Total think time (in sec)',
            ),
            SizedBox(
              height: 30,
            ),
            CustomSlider(
                // thinkTime: _thinkTimeController.text,
                ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
