import 'package:coronavirus_peru/pages/casoscovidPeru.dart';
import 'package:coronavirus_peru/pages/recomendaciones_covid_peru.dart';
import 'package:flutter/material.dart';
import 'package:hidden_drawer_menu/hidden_drawer/hidden_drawer_menu.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  List<ScreenHiddenDrawer> items = new List();
  @override
  void initState() {
    
    items.add(new ScreenHiddenDrawer(
        new ItemHiddenMenu(
          name: "COVID-19 PERÚ",
          baseStyle: TextStyle( color: Colors.white.withOpacity(0.8), fontSize: 22.0 , fontWeight:  FontWeight.bold),
          colorLineSelected: Colors.teal,
        ),
        CasosPeru()));

    items.add(new ScreenHiddenDrawer(
        new ItemHiddenMenu(
          name: "RECOMENDACIONES",
          baseStyle: TextStyle( color: Colors.white.withOpacity(0.8), fontSize: 22.0 ),
          colorLineSelected: Colors.orange,
        ),
        Recomendaciones()));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return HiddenDrawerMenu(
      backgroundColorMenu: Colors.black,
      backgroundColorAppBar: Colors.red,
      screens: items,
        //    typeOpen: TypeOpen.FROM_RIGHT,
        //    enableScaleAnimin: true,
        //    enableCornerAnimin: true,
            slidePercent: 60.0,
            verticalScalePercent: 85.0,
        //    contentCornerRadius: 10.0,
        //    iconMenuAppBar: Icon(Icons.menu),
        //    backgroundContent: DecorationImage((image: ExactAssetImage('assets/bg_news.jpg'),fit: BoxFit.cover),
        //    whithAutoTittleName: true,
            styleAutoTittleName: TextStyle(color: Colors.white),
        //    actionsAppBar: <Widget>[],
        //    backgroundColorContent: Colors.blue,
        //    elevationAppBar: 4.0,
        //    tittleAppBar: Center(child: Icon(Icons.ac_unit),),
       //     enableShadowItensMenu: true
          backgroundMenu: DecorationImage(image: NetworkImage('https://image.freepik.com/free-vector/coronavirus-2019-ncov-virus-background-with-disease-cells-covid-19-corona-virus-outbreaking-pandemic-medical-health-risk-concept_139523-181.jpg'),fit: BoxFit.fitHeight),
    );
  }
}