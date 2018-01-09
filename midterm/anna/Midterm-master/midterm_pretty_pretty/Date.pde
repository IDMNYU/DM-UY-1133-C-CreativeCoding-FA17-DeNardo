class Date{

  //from Processing reference page
  
int d = day();    
int m = month();  
int y = year();   


void display(){
String s = String.valueOf(d);
text(s, 10, 28);
s = String.valueOf(m);
text(s, 10, 56); 
s = String.valueOf(y);
text(s, 10, 84);
}
}