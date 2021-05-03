import 'package:flutter/material.dart';

class AppState {
  String nam;
  String phon;
  String profil;
  String jimbo;
  String kania;
  String parokia;
  String mtaa;
  String jumuiya;

  AppState({
    @required this.nam, this.phon, this.profil, this.jimbo, this.kania, this.parokia, this.mtaa, this.jumuiya
  });

  AppState.fromAppState(AppState another) {
    nam = another.nam;
    phon = another.phon;
    profil = another.profil;
    jimbo = another.jimbo;
    kania = another.kania;
    parokia = another.parokia;
    mtaa = another.mtaa;
    jumuiya = another.jumuiya;
  }
}
