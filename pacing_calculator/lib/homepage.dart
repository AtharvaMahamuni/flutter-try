import 'package:flutter/material.dart';
import 'package:pacing_calculator/dataform.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.primary,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: const Text('Pacing Calculator'),
      ),
      body: Padding(
        padding:
            EdgeInsets.only(top: MediaQuery.sizeOf(context).height * 10 / 100),
        child: const UpperLayerContainer(),
      ),
    );
  }
}

class UpperLayerContainer extends StatelessWidget {
  const UpperLayerContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height * 85 / 100,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(40.0),
            topRight: Radius.circular(40.0),
          )),
      child: const DataForm(),
    );
  }
}

class ObscuredTextField extends StatefulWidget {
  final String decorationLabelText;

  const ObscuredTextField({
    super.key,
    required this.decorationLabelText,
  });

  @override
  State<ObscuredTextField> createState() => _ObscuredTextFieldState();
}

class _ObscuredTextFieldState extends State<ObscuredTextField> {
  // final TextEditingController _controller = TextEditingController();

  // @override
  // void dispose() {
  //   // Dispose the controller when the widget is disposed
  //   _controller.dispose();
  //   super.dispose();
  // }

  @override
  void setState(VoidCallback fn) {
    super.setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: TextField(
        // controller: _controller,
        obscureText: false,
        textAlignVertical: TextAlignVertical.center,
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          border: const OutlineInputBorder(),
          labelText: widget.decorationLabelText,
        ),
      ),
    );
  }
}
