BufferedReader reader;
String line;
ArrayList words = new ArrayList();
static String fuckedup;

void setup() 
{
  size(500, 500);

  //load in file 
  reader = createReader("123.txt");

  //println(reader);

  //store into String
  try 
  {
    //line = reader.readLine();
    //println(line);
    while (true) 
    {
      int c = reader.read();
      if (c == -1) break;
      Character letter = (char)c; 
      Character LowLetter = letter.toLowerCase(letter);
      //print(letter);

      //Boolean IsLowLetter = LowLetter.isLowerCase(letter); 
      String LowLetterTemp = LowLetter.toString();
      String CleanLowLetterTemp = LowLetterTemp.replaceAll("[\\W]", "");

      String fuckedupT = CleanLowLetterTemp;
      fuckedup = fuckedup + fuckedupT;
      //println(fuckedup, "!!!");

      //Println(LowLetter.isLowerCase(letter));
      //print(LowLetter);
      //print(LowLetterTemp);
      //print(CleanLowLetterTemp);
    }
  } 
  catch (IOException e) 
  {
    e.printStackTrace();
    line = null;
  }

  //split 
  //for (String fucker : line.split(" "))
  //{
  //  println(fucker);
  //  words.add(fucker);
  //}

  println(fuckedup, "!!!");
//count letter frequency
  HashMap<Character, Integer> FrequencyMap = new HashMap<Character, Integer>();          
  String s = fuckedup;
  for (int i = 0; i < s.length(); i++) {
    char cTemp = s.charAt(i);
    Integer val = FrequencyMap.get(new Character(cTemp));
    if (val != null) {
      FrequencyMap.put(cTemp, new Integer(val + 1));
    } else {
      FrequencyMap.put(cTemp, 1);
    }
  }
  print(FrequencyMap);
} //end setup





void thisCrap() {


  //frequcey array
  char FrequencyArray[];
  FrequencyArray = new char[25];
  for (int i = 0; i <= 25; i++);
  {
    int j = 0;
    FrequencyArray[j] = 0; 
    j++;
  }

  //color array
  char ColorArray[];
  ColorArray = new char[25];
  for (int i = 0; i <= 25; i++);
  {
    int j = 0;
    ColorArray[j] = 0; 
    j++;
  }
}


void draw()
{
  background(255);
} //end draw