import 'package:flutter/material.dart';
import 'package:patreonclone/widgets/appbars/BottomBar.dart';
import 'package:patreonclone/widgets/appbars/TopBar.dart';
import 'package:patreonclone/widgets/buttons/Rounded_Button.dart';

import '../models/Button.dart';

class Starting extends StatefulWidget {
  const Starting({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _StartingState();
}

class _StartingState extends State<Starting>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  List<Button> buttons = [
    Button(
        url: "",
        text: "Continuar con Google",
        handleError: () {},
        color: "theme color"),
    Button(
        url: "",
        text: "Continuar con Facebook",
        handleError: () {},
        color: "blue"),
    Button(url: "", text: "Inicir sesion", handleError: () {}, color: "red")
  ];
  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        body: Stack(
      fit: StackFit.expand,
      alignment: Alignment.bottomCenter,
      children: [
        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                height: MediaQuery.of(context).size.height / 4,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: generateButton(),
                ),
              ),
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 30),
                child: Flex(
                  direction: Axis.vertical,
                  children: [
                    Title(
                        color: Colors.white,
                        child: const Text("No tienes Patreon ? Registrate")),
                    const Text("Some data")
                  ],
                ),
              )
            ],
          ),
        )
      ],
    ));
  }

  List<Rounded_Button> generateButton() {
    List<Rounded_Button> buttonList = [];
    for (var element in buttons) {
      buttonList.add(Rounded_Button(
        button: element,
      ));
    }
    return buttonList;
  }
}
