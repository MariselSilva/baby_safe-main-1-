import 'dart:ffi';

import 'package:baby_safe/models/ninera.dart';
import 'package:baby_safe/pages/nineras/input/input_number_tutor.dart';
import 'package:baby_safe/services/ninera_service.dart';
import 'package:baby_safe/services/ubicaciones_service.dart';
import 'package:date_field/date_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_typeahead/flutter_typeahead.dart';

import '../../../bloc/usuario/usuario_bloc.dart';
import '../../../config/menu/menu.dart';
import '../../../models/feature_map.dart';
import '../../../models/suggestions.dart';
import '../../../models/ubicacion_map.dart';

import '../../../models/usuario.dart';
import '../../../services/usuarioService.dart';
import '../../../utils/constantes.dart';
import '../../../utils/utils.dart';

class HistorialTutorPage extends StatelessWidget {
  HistorialTutorPage({super.key});
  final GlobalKey<FormState> myFormKey = GlobalKey<FormState>();
  final TextEditingController _typeAheadController = TextEditingController();
  final nineraService = NineraService();
  final usuarioService = UsuarioService();
  final ubicacionespService = UbicacionService();
  List<UbicacionMapbox> ubicaciones = [];

  @override
  Widget build(BuildContext context) {
    final usuarioBloc = BlocProvider.of<UsuarioBloc>(context, listen: false);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Historial de solicitudes',
              style: TextStyle(fontSize: 16)),
          backgroundColor: Color.fromRGBO(88, 77, 190, 0.773),
        ),
        drawer: const MenuLateral(),
        body: SingleChildScrollView(
            child: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Form(
            key: myFormKey,
            child: Column(
              children: [
                const FadeInImage(
                  width: 415,
                  image: AssetImage('assets/img/contratadas.JPG'),
                  placeholder: AssetImage('assets/img/contratadas.JPG'),
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
