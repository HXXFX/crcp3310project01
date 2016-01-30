//Big Bad Motherfucker

int state;

final int LETTERS_IN_ALPHABET = 26;
final int ASCCII_OFFSET = 97;
int[] frequencies = new int[LETTERS_IN_ALPHABET];
color[] pallete = new color[LETTERS_IN_ALPHABET];

PImage letterViz;

BufferedReader reader;
final String FILENAME = "AliceninWonderland.txt";
final int DRAW_LETTER_STATE =0;
final int DRAW_FREQUENCIES_STATE = 1;

ArrayList<Integer> allicePositonArrayList = new ArrayList<Integer>();

int aliceCounter = 0;

void setup() {
  size(500, 500);

  state = DRAW_LETTER_STATE;


  preparePalleteColor();

  prepareVisualization();
  prepareFrequencies();
  generateFrequenciesAndVisualization();
  determineMinAndMax();

  letterViz.updatePixels();
} //end setup


void draw()
{
  if (state == DRAW_LETTER_STATE)
  {
    drawLetterVisualization();
  } else
  {
    drawFrequencyGraph();
  }
} //end draw


void mousePressed()
{
  state = (state + 1)% 2;
}