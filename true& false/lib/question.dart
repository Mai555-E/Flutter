class Question{
  late String questionText;
  late  String questionImage;
  late  bool questionAnswer;


   Question({ required String q, 
   required String i, 
   required bool a }){
   questionAnswer =a;
   questionImage =i;

   questionText = q;

   }
   
}