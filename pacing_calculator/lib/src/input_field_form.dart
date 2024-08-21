import 'package:flutter/material.dart';
import 'package:pacing_calculator/src/app.dart';
import 'package:provider/provider.dart';

class InputFieldForm extends StatefulWidget {
  const InputFieldForm({super.key});

  @override
  State<InputFieldForm> createState() => _InputfieldformState();
}

class _InputfieldformState extends State<InputFieldForm> {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<AppState>();

    TextEditingController userLoad = TextEditingController();
    TextEditingController responseTime = TextEditingController();
    TextEditingController iterPerHr = TextEditingController();
    TextEditingController thinkTime = TextEditingController();

    return const Column(
      children: [
        SizedBox(
          height: 30,
        ),
        SizedBox(
          width: 300,
          child: TextField(
            // controller: ,
            keyboardType:
                TextInputType.numberWithOptions(signed: false, decimal: false),
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'User Load',
                helperText: 'No. of Users (Threads)'),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        SizedBox(
          width: 300,
          child: TextField(
            keyboardType:
                TextInputType.numberWithOptions(signed: false, decimal: false),
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Response time (in sec.)',
                helperText: 'End to end time to complete one iteration'),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        SizedBox(
          width: 300,
          child: TextField(
            keyboardType:
                TextInputType.numberWithOptions(signed: false, decimal: false),
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Iterations Per Hour',
                helperText: 'No. of Iterations per hour'),
          ),
        ),
        SizedBox(
          height: 30,
        ),
        SizedBox(
          width: 300,
          child: TextField(
            keyboardType:
                TextInputType.numberWithOptions(signed: false, decimal: false),
            decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Total think time (in sec.)',
                helperText: 'Sum of all think time used in script'),
          ),
        ),
        SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
