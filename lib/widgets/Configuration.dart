import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:patreonclone/tools/Hooks.dart';
import 'package:patreonclone/widgets/appbars/BottomBar.dart';

class Configuration extends StatefulWidget {
  const Configuration({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _Configuration();
}

class _Configuration extends State<Configuration> {
  List<Map<String, dynamic>> list = [
    {'title': 'Configuracion de las notificaciones', 'url': ''},
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
  List<OptionConfig> widgetList = [];
  @override
  Widget build(BuildContext context) {
    for (var element in list) {
      widgetList.add(OptionConfig(
          title: element["title"],
          subTitle: element['subtitle'],
          isChangeful: element['switch'],
          url: element['url']));
    }
    return Scaffold(
      bottomNavigationBar: const BottomBar(),
      body: Stack(children: [
        Expanded(
          child: ListView(
            children: widgetList,
          ),
        )
      ]),
    );
  }

  @override
  void initState() {
    super.initState();
  }
}

class OptionConfig extends StatefulWidget {
  final String title;
  final String? subTitle;
  final bool? isChangeful;
  final String url;
  const OptionConfig(
      {Key? key,
      required this.title,
      required this.subTitle,
      required this.isChangeful,
      required this.url})
      : super(key: key);

  @override
  State<StatefulWidget> createState() => _OptionConfig();
}

class _OptionConfig extends State<OptionConfig> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    if (widget.subTitle != null) {
      return ListTile(
        title: Text(widget.title),
        subtitle: Text(widget.subTitle!),
      );
    } else {
      return ListTile(
        title: Text(widget.title),
        onTap: () {
          redirectTo(url: widget.url, context: context);
        },
      );
    }
  }
}
