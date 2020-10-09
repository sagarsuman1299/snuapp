import 'package:flutter/material.dart';
import 'package:snuapp/validation/validation_item.dart';

class SignupValidation with ChangeNotifier{
  ValidationItem _email = ValidationItem("Erro","sa"); //we have set value and error property to null
  ValidationItem _password = ValidationItem("sa","sa"); //we have set value and error property to null


//Getters
ValidationItem get email => _email ;
ValidationItem get password => _password ;

bool get isValid{
    if(_email.value != null && _password.value !=null)  return true;
    else return false;
  }

//Setters
void changeEmail(String value){

  if(value.contains("@")){
    _email = ValidationItem(value,null);
    print("@ got");
  }
  else{
    _email = ValidationItem(null,"Enter your institute email id");
  }

  notifyListeners();
  }


  void changePassword(String value){
    if(value.length==0){
      _password = ValidationItem(value,null);
    }
    else{
      _password = ValidationItem(null,"Password can't be empty");
    }
    notifyListeners();
  }

  void submitData(){
  print("Email: ${email.value} , Password: ${password.value}");
  }
 // SignupValidation(this._email,this._password);
}