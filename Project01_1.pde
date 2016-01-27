// YOUR NAME

BufferedReader reader;
String line;
ArrayList words = new ArrayList();
static String fuckedup;
float LetterColor;

HashMap<Character, Integer> frequencies = new HashMap<Character, Integer>();



void setup() {
  size(500, 500);
  reader = createReader("123.txt");
  while (true) {
    int c = -1;
    try {
      c = reader.read();
    } 
    catch (IOException e) {
      e.printStackTrace();
      println("Could not read from file. Oh no!");
    }
    if (c == -1) break;
    if (!Character.isAlphabetic(c)) continue;
    Character letter = Character.toLowerCase((char)c);
    if (frequencies.containsKey(letter)) {
      frequencies.put(letter, frequencies.get(letter) + 1);
    } else {
      frequencies.put(letter, 1);
    }
  }

  print(frequencies);
  
  println("  !!!", frequencies.get(10));

  //int j = 0;
  //float ColorArray[];
  //ColorArray = new float[25];
  //for (int i = 0; i <= 25; i++);
  //{

  //  //float LetterColor = random(30, 150);


  //  ColorArray[j] = LetterColor + j; 
  //  j++;
  //}

  float ColorArray[] = {10.0, 15.0, 20.0, 25, 30.0, 35.0, 40.0, 45.0, 50.0, 55.0, 60.0, 65.0, 70.0, 10.0, 15.0, 20.0, 25, 30.0, 35.0, 40.0, 45.0, 50.0, 55.0, 60.0, 65.0, 70.0};
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
  //char ColorArray[];
  //ColorArray = new char[25];
  //for (int i = 0; i <= 25; i++);
  //{
  //  int j = 0;
  //  ColorArray[j] = 0; 
  //  j++;
  //}
}


void draw()
{
  background(255);
} //end draw