import 'dart:ui';

import 'package:coronavirus_peru/models/covidperu_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:google_fonts/google_fonts.dart';

class DatosCovid extends StatelessWidget {
  final Enfermedad covid;

  const DatosCovid({Key key, this.covid}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.only(top: 15.0),
      child: Table(
        children: [
          TableRow(children: [
           botonConDatos(FontAwesome5.map,  covid.countryregion == "Peru" ? "Perú" : "", "País",context), //en caso su pais tengaa acento pues  en la condicional remplazan el pais el primero sin acento y el segun con acento
           botonConDatos(FontAwesome.group,  covid.confirmed.toString() ,"Casos\nConfirmados",context)
            
          ]),
          TableRow(children: [
           botonConDatos(MaterialCommunityIcons.skull_crossbones, covid.deaths.toString(), "Muertes",context), 
           botonConDatos(FontAwesome.smile_o, covid.recovered.toString(), "Pacientes Recuperados",context)
          ]),
        ],
      ),
    );
  }



  Widget botonConDatos( IconData  icono , String  textoJson, String titulo, context){
    final TextStyle display1 = Theme.of(context).textTheme.display1;
    return  Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
            height: 180,
            width: 50,
            decoration: BoxDecoration(
                color: Colors.transparent,
                border: Border.all( color: Colors.white, width:  3),
                borderRadius: BorderRadius.circular(20)),
            child: Column(
      
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Icon(icono, size:  32.0),
                Text(titulo, style:  GoogleFonts.oswald(textStyle: display1, fontSize: 28.0, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                Text(textoJson, style:  GoogleFonts.roboto(textStyle: display1, fontSize: 24.0))
              ],
            )
        ),
    );
  }
}
