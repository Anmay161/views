
class Info {
  var name;
  var emailaddress;
  Info(this.name,this.emailaddress);
}

Map<String,Info> _USER = {
  'Default' : Info('Jon Doe','jondoe@gmail.com')
};

add(pass,name,email) {
  _USER[pass] = Info(name, email);
}

check(pass) {
  if (_USER[pass] != null) return true;
  return false;
}
