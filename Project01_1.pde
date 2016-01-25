BufferedReader reader;
String line;

void setup() 
{

//load in file 
  reader = createReader("123.txt");

  println(reader);

//store into String
  try 
  {
    
      //while ((line = reader.readLine()) != null) {
      //  //reader.append(  );
      //}
    
   line = reader.readLine();
    
      println(line);
  } 
  catch (IOException e) 
  {
    e.printStackTrace();
    line = null;
  }


//split 
  for (String fucker: line.split(" "))
  {
    println(fucker);
  }
  
//arrayList
  if (line == null)
  {
    // Stop reading because of an error or file is empty
    noLoop();
  } else
  {
    ArrayList words = new ArrayList();
    println("The words arraylis size is: ", words.size());
    words.add(line);
    println(words);
   
  }
  
  
  
}