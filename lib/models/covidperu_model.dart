// To parse this JSON data, do
//
//     final enfermedad = enfermedadFromJson(jsonString);

import 'dart:convert';

List<Enfermedad> enfermedadFromJson(String str) => List<Enfermedad>.from(json.decode(str).map((x) => Enfermedad.fromJson(x)));

String enfermedadToJson(List<Enfermedad> data) => json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Enfermedad {
    String provincestate;
    String countryregion;
    DateTime lastupdate;
    Location location;
    Countrycode countrycode;
    int confirmed;
    int deaths;
    int recovered;

    Enfermedad({
        this.provincestate,
        this.countryregion,
        this.lastupdate,
        this.location,
        this.countrycode,
        this.confirmed,
        this.deaths,
        this.recovered,
    });

    factory Enfermedad.fromJson(Map<String, dynamic> json) => Enfermedad(
        provincestate: json["provincestate"],
        countryregion: json["countryregion"],
        lastupdate: DateTime.parse(json["lastupdate"]),
        location: Location.fromJson(json["location"]),
        countrycode: Countrycode.fromJson(json["countrycode"]),
        confirmed: json["confirmed"],
        deaths: json["deaths"],
        recovered: json["recovered"],
    );

    Map<String, dynamic> toJson() => {
        "provincestate": provincestate,
        "countryregion": countryregion,
        "lastupdate": lastupdate.toIso8601String(),
        "location": location.toJson(),
        "countrycode": countrycode.toJson(),
        "confirmed": confirmed,
        "deaths": deaths,
        "recovered": recovered,
    };
}

class Countrycode {
    String iso2;
    String iso3;

    Countrycode({
        this.iso2,
        this.iso3,
    });

    factory Countrycode.fromJson(Map<String, dynamic> json) => Countrycode(
        iso2: json["iso2"],
        iso3: json["iso3"],
    );

    Map<String, dynamic> toJson() => {
        "iso2": iso2,
        "iso3": iso3,
    };
}

class Location {
    double lat;
    double lng;

    Location({
        this.lat,
        this.lng,
    });

    factory Location.fromJson(Map<String, dynamic> json) => Location(
        lat: json["lat"].toDouble(),
        lng: json["lng"].toDouble(),
    );

    Map<String, dynamic> toJson() => {
        "lat": lat,
        "lng": lng,
    };
}
