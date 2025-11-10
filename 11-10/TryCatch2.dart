import 'dart:ffi';
import 'dart:io';

void main(){

bool esNumero = false;
bool primo = false;
while(esNumero==false){
try{
  print("Escribe un número para comprobar si es primo");
  String respuesta=stdin.readLineSync()??"";
  int num = int.parse(respuesta);
  esNumero=true;
  int i = 2;
  for (i; i < num; i++) {
    if (num%i==0) {
      primo=true;
      break;
    }
  }
  primo==true?print("$num es un número primo"):print("No es número primo porque es divisible por $i");
}catch (e){
  print("No has escrito un número válido, campeón");
}
}
print(mostrarLista());
}

var nombre=["pepe","Juan","Pedro"];
/*
String mostrarLista(){
  return nombre[0];
}
*/
String mostrarLista()=>nombre.last;