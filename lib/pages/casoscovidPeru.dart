
import 'package:coronavirus_peru/providers/covideperu_provider.dart';
import 'package:coronavirus_peru/widgets/datoscovid_widget.dart';
import 'package:flutter/material.dart';

class CasosPeru extends StatelessWidget {
  const CasosPeru({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
       child: listarDatos(),    
      ),
    );
  }

  Widget listarDatos(){
    return FutureBuilder(
      future: getUsuariosMagsa(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
            
          return Center(child: CircularProgressIndicator());

          } else if( snapshot.connectionState == ConnectionState.done){
            return listarCasos( context, snapshot);
          }
      },
    ); 
  }

  Widget  listarCasos(context, snapshot){
    return ListView.builder(
      itemCount: snapshot.data.length,
      itemBuilder: (BuildContext context, int index) {
      return  DatosCovid( covid:  snapshot.data[index]);
     },
    );
  }
}