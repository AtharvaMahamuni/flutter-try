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

    final userLoadController = TextEditingController();
    final responseTimeController = TextEditingController();
    final iterPerHrController = TextEditingController();
    final thinkTimeController = TextEditingController();

    void printLatestValue() {
      final text = userLoadController.text;
      print('Second text field: $text (${text.characters.length})');
    }

    @override
    void initState() {
      super.initState();

      // Start listening to changes.
      userLoadController.addListener(printLatestValue);
    }

    @override
    void dispose() {
      userLoadController.dispose();
      super.dispose();
    }

    void setUserLoad(String text) {
      appState.userLoad = int.parse(text);
    }

    void setResponseTime(String text) {
      appState.responseTime = int.parse(text);
    }

    void setIterationPerHr(String text) {
      appState.iterationPrHr = int.parse(text);
    }

    void setThinkTime(String text) {
      appState.thinkTime = int.parse(text);
    }

    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        SizedBox(
          width: 300,
          child: TextField(
            controller: userLoadController,
            onChanged: (text) {
              print('First text field: $text (${text.characters.length})');
              setUserLoad(text);
              // appState.setUserLoad(text);
            },
            keyboardType: const TextInputType.numberWithOptions(
                signed: false, decimal: false),
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'User Load',
                helperText: 'No. of Users (Threads)'),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        SizedBox(
          width: 300,
          child: TextFormField(
            controller: responseTimeController,
            onChanged: (text) {
              print('First text field: $text (${text.characters.length})');
              setResponseTime(text);
              // appState.setUserLoad(text);
            },
            keyboardType: const TextInputType.numberWithOptions(
                signed: false, decimal: false),
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Response time (in sec.)',
                helperText: 'End to end time to complete one iteration'),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        SizedBox(
          width: 300,
          child: TextField(
            controller: iterPerHrController,
            onChanged: (text) {
              print('First text field: $text (${text.characters.length})');
              setIterationPerHr(text);
              // appState.setUserLoad(text);
            },
            keyboardType: const TextInputType.numberWithOptions(
                signed: false, decimal: false),
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Iterations Per Hour',
                helperText: 'No. of Iterations per hour'),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        SizedBox(
          width: 300,
          child: TextField(
            controller: thinkTimeController,
            onChanged: (text) {
              print('First text field: $text (${text.characters.length})');
              setThinkTime(text);
              // appState.setUserLoad(text);
            },
            keyboardType: const TextInputType.numberWithOptions(
                signed: false, decimal: false),
            decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Total think time (in sec.)',
                helperText: 'Sum of all think time used in script'),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
