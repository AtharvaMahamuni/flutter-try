import 'package:flutter/material.dart';
import 'package:pacing_calculator/src/app.dart';
import 'package:provider/provider.dart';

class SolutionScreen extends StatelessWidget {
  const SolutionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<AppState>();

    return Scaffold(
      backgroundColor: Colors.red,
      body: SizedBox(
        width: 40,
        child: Center(
            child: Column(
          children: [
            Text(
              appState.userLoad.toString(),
            ),
            Text(
              appState.responseTime.toString(),
            ),
            Text(
              appState.iterationPrHr.toString(),
            ),
            Text(
              appState.thinkTime.toString(),
            ),
          ],
        )),
      ),
    );
  }
}
