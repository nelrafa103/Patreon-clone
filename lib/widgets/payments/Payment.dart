import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:patreonclone/widgets/payments/button/Paybutton.dart';

class Payment extends StatefulWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _Payment();
}

class _Payment extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.topRight,
        children: [
          Positioned(
              child: SizedBox(
            height: MediaQuery.of(context).size.height / 4,
            child: CachedNetworkImage(
              imageUrl: "",
              placeholder: (_, __) => const CircularProgressIndicator(),
              fadeInDuration: const Duration(milliseconds: 0),
            ),
          )),
          Positioned(
              child: Container(
            child: Flex(
              direction: Axis.vertical,
              children: [
                Title(
                    color: Colors.white,
                    child: const Text("Añadir suscripcion")),
                Flex(
                  direction: Axis.horizontal,
                  children: const [Text("Pagar una cantidad x")],
                )
              ],
            ),
          )),
          Positioned(
              child: Container(
            child: Column(children: const [
              Paybutton(text: "Paypal", icon: Icon(Icons.paypal)),
              Paybutton(text: "Google pay", icon: Icon(Icons.payment))
            ]),
          ))
        ],
      ),
    );
  }
}
