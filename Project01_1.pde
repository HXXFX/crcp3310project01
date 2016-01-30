//CRCP3310 Project1
//Zongxian Huang 

/**********************************************************************************
README: Moving mouse left&right to show letterViz&AliceViz; 
        Clicking to show&hide frequecyViz&Info; More details on Console;
***********************************************************************************/

import java.util.*;

//GLOBAL JUNK########################################################################
int state;
int frequencyMin;
int frequencyMax;
int aliceCounter = 0;
final int LETTERS_IN_ALPHABET = 26;
final int ASCCII_OFFSET = 97;
int[] frequencies = new int[LETTERS_IN_ALPHABET];
color[] pallete = new color[LETTERS_IN_ALPHABET];
color alicePallete;

PImage letterViz;
PImage alicePositionViz;

BufferedReader reader;
final String FILENAME = "AliceninWonderland.txt";
final int DRAW_LETTER_STATE =0;
final int DRAW_FREQUENCIES_STATE = 1;
Queue<Character> aliceCute = new LinkedList<Character>();
//####################################################################################

void setup() {
  size(500, 500);
  state = DRAW_LETTER_STATE;
  prepareAlicePalleteColor();
  prepareAliceVisualization();
  preparePalleteColor();
  prepareVisualization();
  prepareFrequencies();
  generateFrequenciesAndVisualizationAndAlice();
  determineMinAndMax();
  letterViz.updatePixels();
} //end setup

void draw()
{
  if (state == DRAW_LETTER_STATE)
  {
    drawLetterAndAliceVisualization();
  } 
  else
  {
    drawFrequencyGraph();
    drawInfo();
  }
} //end draw