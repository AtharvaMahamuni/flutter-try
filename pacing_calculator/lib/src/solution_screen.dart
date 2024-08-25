import 'package:flutter/material.dart';
import 'package:pacing_calculator/src/app.dart';
import 'package:provider/provider.dart';

class SolutionScreen extends StatelessWidget {
  const SolutionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<AppState>();

    return SafeArea(
      child: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 200,
                ),
                Container(
                  margin: const EdgeInsets.all(10.0),
                  // padding: const EdgeInsets.only(
                  //     right: 100.0, left: 100.0, top: 20.0, bottom: 20.0),
                  // decoration: BoxDecoration(
                  //     border: Border.all(color: Colors.blueAccent),
                  //     color: Colors.green),
                  child: const Column(children: [
                    Text(
                      "1233124",
                      style: TextStyle(
                        fontSize: 30,
                      ),
                    ),
                    Text("Calculated Pacing (in seconds)"),
                  ]),
                ),
                const SizedBox(
                  height: 100,
                ),

                // TODO: Wrap the containers with width 50% in the Grid view in 2*2 fashion
                // Also give the width of above answer container to 100% of the screen
                // this way build the solution screen
                // make use of borders to verify the same.
                GridView.count(shrinkWrap: true, crossAxisCount: 2, children: [
                  InputDataBox(
                    appState: appState,
                    dataStr: appState.userLoad.toString(),
                    dataTitle: "No. of users (Threads)",
                  ),
                  InputDataBox(
                    appState: appState,
                    dataStr: appState.responseTime.toString(),
                    dataTitle: "End to end response time (in seconds)",
                  ),
                  InputDataBox(
                    appState: appState,
                    dataStr: appState.iterationPrHr.toString(),
                    dataTitle: "Iterations per Hour",
                  ),
                  InputDataBox(
                    appState: appState,
                    dataStr: appState.thinkTime.toString(),
                    dataTitle: "Think Time",
                  ),
                ]),
              ],
            ),
          )),
    );
  }
}

class InputDataBox extends StatelessWidget {
  const InputDataBox({
    super.key,
    required this.appState,
    required this.dataStr,
    required this.dataTitle,
  });

  final AppState appState;
  final String dataStr;
  final String dataTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20.0),
      // padding: const EdgeInsets.only(
      //     right: 50.0, left: 50.0, top: 20.0, bottom: 20.0),
      // decoration: BoxDecoration(
      // border: Border.all(color: Colors.blueAccent), color: Colors.green),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.3,
              child: Text(
                maxLines: 2,
                softWrap: true,
                dataStr,
                style: const TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.3,
              child: Text(
                maxLines: 4,
                softWrap: true,
                dataTitle,
                style: const TextStyle(
                  fontSize: 15,
                ),
              ),
            )
          ]),
    );
  }
}
