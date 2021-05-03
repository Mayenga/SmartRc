import 'package:bcic/source/actions/AuthActions.dart';
import 'package:bcic/source/models/app_state.dart';

AppState reducer(AppState prevState, dynamic action) {
  AppState newState = AppState.fromAppState(prevState);

  if (action is AddName) {
    newState.nam = action.name;
  } else if (action is AddPhone) {
    newState.phon = action.phone;
  } else if (action is AddJumuiya) {
    newState.jumuiya = action.jumuiya;
  } else if (action is AddMtaa) {
    newState.mtaa = action.mtaa;
  } else if (action is AddParokia) {
    newState.parokia = action.parokia;
  } else if (action is AddDekania) {
    newState.kania = action.dekania;
  } else if (action is AddJimbo) {
    newState.jimbo = action.jimbo;
  }
  return newState;
}
