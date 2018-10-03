void setup()
{
  //String message = "Hello from Friday bootcamp";
 String message = "Bootcamp week one is nearly over";
  println(message.toUpperCase());
  println(message.toLowerCase());
  println(message.length());
  println(message.charAt(4));
  
  if(message.indexOf("day") == -1) {
    println("No match found");
  } else {
    println("Day found");
  }
}
