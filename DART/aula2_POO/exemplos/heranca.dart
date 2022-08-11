void main() { 
   var obj = new Circulo(); 
   obj.calcula_area(); 
}  
class Forma { 
   void calcula_area() { 
      print("Calculo da área definido na Super Classe"); 
   } 
}  
class Circulo extends Forma {}
