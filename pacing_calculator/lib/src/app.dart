import 'package:flutter/material.dart';
import 'package:pacing_calculator/src/input_field_form.dart';
import 'package:pacing_calculator/src/solution_screen.dart';
import 'package:provider/provider.dart';
import 'package:slider_button/slider_button.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => AppState(),
      child: MaterialApp(
        title: 'Namer App',
        theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepOrange),
        ),
        home: const HomePage(),
      ),
    );
  }
}

class AppState extends ChangeNotifier {
  int userLoad = 1000;
  int responseTime = 0;
  int iterationPrHr = 0;
  int thinkTime = 0;

  void addUserLoad(int userLoad) {
    userLoad = userLoad;
    notifyListeners();
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<AppState>();

    return Scaffold(
        body: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const Text('Pacing Calculator'),
                  Text(appState.userLoad.toString()),
                  const InputFieldForm(),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Container(
          padding: MediaQuery.of(context).viewInsets,
          color: Colors.white,
          child: SizedBox(
              height: 120,
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 20),
                margin: const EdgeInsets.symmetric(horizontal: 5),
                child: Center(child: SliderButtonWidget(appState: appState)),
              )),
        ));
  }
}

class SliderButtonWidget extends StatelessWidget {
  const SliderButtonWidget({
    super.key,
    required this.appState,
  });

  final AppState appState;

  @override
  Widget build(BuildContext context) {
    return SliderButton(
      action: () async {
        print(appState.userLoad.toString());
        Navigator.push(context,
                MaterialPageRoute(builder: (context) => const SolutionScreen()))
            .then((_) {
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
          color: Color.fromARGB(255, 158, 19, 9),
          fontWeight: FontWeight.w400,
          fontSize: 44,
        ),
      ),
    );
  }
}
