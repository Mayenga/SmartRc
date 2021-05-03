/*
ActionCreator to manipulate InputTexts on (SignUpScreens)
*/
class AddName {
  final String name;
  AddName(this.name);
}

class AddProfile {
  final String profile;
  AddProfile(this.profile);
}

class AddPhone {
  final String phone;
  AddPhone(this.phone);
}

class AddJimbo {
  final String jimbo;
  AddJimbo(this.jimbo);
}

class AddDekania {
  final String dekania;
  AddDekania(this.dekania);
}

class AddParokia {
  final String parokia;
  AddParokia(this.parokia);
}

class AddMtaa {
  final String mtaa;
  AddMtaa(this.mtaa);
}

class AddJumuiya {
  final String jumuiya;
  AddJumuiya(this.jumuiya);
}

class RegisterUser {
  RegisterUser(name, phone, profile, year, jimbo, dekania, parokia, mtaa, jumuiya);
  // dispatch({type: SIGN_UP_LOADING});
  savedata(){}
  // registerSuccess(dispatch);
}

class registerSuccess {
  registerSuccess(SUCCESS_REGISTER);
}

class registerUnSuccess {
  registerUnSuccess(FAILURE_REGISTER);
}