ArrayList<String> names = new ArrayList();
 
void setup()
{
  size(300,350);
  fill(0);
  textSize(22);
 
  names.add("Jon");
  names.add("Jason");
  names.add("Seb");
  names.add("Radu");
  names.add("Eva");
  names.add("Andy");
  names.add("Dympna");
  names.add("Ross");
  names.add("Simone");
  names.add("Charlie");
  names.add("Jo");
}
 
void draw()
{
  background(255);
  float yPos = 30;
 
  for (String name : names)
  {
    text(name,50,yPos);
    yPos = yPos+30;
  }
}
