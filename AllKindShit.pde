void  prepareAlicePalleteColor()  
{

  //alicePallete[] = color(255, 0, 0);
  alicePallete = color(0, 255, 0);
}

void prepareAliceVisualization()
{
  alicePositionViz = createImage(500, 500, RGB);
  alicePositionViz.loadPixels();
}


void preparePalleteColor()
{
  for (int i = 0; i < pallete.length; ++i) {
    pallete[i] = color(random(50, 200), random(50, 200), random(50, 200));
  }
}

void prepareVisualization()
{
  letterViz = createImage(500, 500, RGB);
  letterViz.loadPixels();
}


void prepareFrequencies()
{
  for (int i = 0; i < LETTERS_IN_ALPHABET; ++i)
  {
    frequencies[i] = 0;
  }
}

void generateFrequenciesAndVisualizationAndAlice()
{

  reader = createReader(FILENAME);
  int pixelPosition = 0;
  //int alicePosition = 0;
  boolean fuckAlice;
  try {
    int character;
    while ((character = reader.read()) !=-1)
    {
      fuckAlice = false;

      if (!Character.isAlphabetic(character)) continue; 
      char letter = (char)Character.toLowerCase(character);
      frequencies[letter - ASCCII_OFFSET]++;
      letterViz.pixels[pixelPosition] = pallete[letter - ASCCII_OFFSET]++;

      pixelPosition++;

      // Aaaaalicccce...!
      aliceCute.add(letter);
      int aliceCuteSize = aliceCute.size();
      if (aliceCuteSize > 5)
      {
        aliceCute.poll();

        if (aliceCute.peek() == 'a')
        {
          aliceCute.poll();
          if (aliceCute.peek() == 'l')
          {
            aliceCute.poll();
            if (aliceCute.peek() == 'i')
            {
              aliceCute.poll();
              if (aliceCute.peek() == 'c')
              {
                aliceCute.poll();
                if (aliceCute.peek() == 'e')
                { 
                  aliceCute.poll();
                  aliceCounter++;
                  fuckAlice = true;
                }
              }
            }
          }
        }
      }
      if (fuckAlice == true)
      {
        alicePositionViz.pixels[pixelPosition] = alicePallete;
      }
    }// end while loop
    println("Alice appears", aliceCounter, "times");
  }
  catch(IOException e)
  {
    println("Cound not read data!!!");
    e.printStackTrace();
  }
  println(frequencies);
}

void determineMinAndMax()
{
  //find the Max 
  frequencyMax = frequencies[0];
  for (int i = 1; i < frequencies.length; i++)
  { 
    if (frequencies[i] > frequencyMax)
    {
      frequencyMax = frequencies[i];
    }
  }
  println("The Max frequency:", frequencyMax);
  //find the Min 
  frequencyMin = frequencies[0];
  for (int i = 1; i < frequencies.length; i++)
  { 
    if (frequencies[i] < frequencyMin)
    {
      frequencyMin = frequencies[i];
    }
  }
  println("The Min frequency:", frequencyMin);
}

void drawLetterAndAliceVisualization()
{
  tint(-mouseX);
  image(letterViz, 0, 0);
  tint(mouseX);
  image(alicePositionViz, 0, 0);
}

void drawFrequencyGraph()
{
  pushMatrix();
  textSize(15);
  text ("A", 10, 245);
  text ("Z", 485, 245);
  noStroke();
  translate(10, 250);
  scale(1.9, 1);
  int j = 0;
  int k = 0;
  for (int i = 0; i < 26; i++)
  {
    float mapHight = map(frequencies[k], frequencyMin, frequencyMax, 1, 200);
    rect(j, 0, 5, mapHight);
    j = j + 10;
    k++;
    textSize(10);
    text ("Max", 35, 240);
    text ("Min", 240, 240);
  }
  popMatrix();
}

void drawInfo()
{ 
  float loc = 450;
  textSize(10);

  text ("Alice frequency: " + aliceCounter, 250, loc);
  text ("Max Letter frequency: " + frequencyMax, 250, loc+10);
  text ("Min Letter frequency: " + frequencyMin, 250, loc+20);
}

void mousePressed()
{
  state = (state + 1)% 2;
}