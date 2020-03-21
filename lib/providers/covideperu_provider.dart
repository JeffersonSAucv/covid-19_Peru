
import 'package:coronavirus_peru/models/covidperu_model.dart';
import 'package:http/http.dart' as http;


Future<List<Enfermedad>> getUsuariosMagsa() async{

    final respuesta = await http.get('https://wuhan-coronavirus-api.laeyoung.endpoint.ainize.ai/jhu-edu/latest?iso2=PE');
    //print(respuesta.body);
    return enfermedadFromJson(respuesta.body);

}

//http://www.mocky.io/v2/5e757f0d300000fce4a5faa3 nueva
//http://www.mocky.io/v2/5e75479c3000004396a5fa40 antigua