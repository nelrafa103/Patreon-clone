import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:patreonclone/widgets/appbars/BottomBar.dart';

class Configuration extends StatefulWidget {
  const Configuration({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _Configuration();
}

class _Configuration extends State<Configuration> {
  List<Map<String, dynamic>> list = [
    {'title': 'Configuracion de las notificaciones'},
    {
      'title': 'Perfil privado',
      'subtitle': 'Ocultar tus aportaciones',
      'switch': true
    },
    {'title': 'Termino de servicio'},
    {'title': 'Normas de la comunidad'},
    {'title': 'Declaraciones sobre accesibilidad'},
    {'title': 'Dejar su comentario'},
    {'title': 'Informacion de la aplicacion'}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomBar(),
      body: Stack(children: []),
    );
  }
}

class Option extends StatefulWidget {
  final String title;
  final String? subTitle;
  final bool isChangeful;
  const Option(
      {Key? key,
      required this.title,
      required this.subTitle,
      required this.isChangeful})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _Option();
}

class _Option extends State<Option> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Flex(
      direction: Axis.horizontal,
      children: [
        Wrap(children: [Text(widget.title), Text(widget.subTitle!)]),
        if (widget.isChangeful == true) ...{
          Flexible(
              child: Switch(
            onChanged: (value) => true,
            value: isSelected,
          ))
        }
      ],
    );
  }
}
