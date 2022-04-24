
import processing.sound.*;
import java.util.List;
import java.util.Arrays;

static int SELECTION = 1;

static List<Oscillator> oscillators = new ArrayList<Oscillator>();
static FrequencyOwner[] frequencyOwners;
static { 
  switch (SELECTION) {
    case 1: frequencyOwners = TrappistSolarSystemPlanetOrbit.values(); break;  
    case 2: frequencyOwners = TrappistSolarSystemPlanetOrbitalRadius.values(); break;  
  }
}

int numberOfFrequencyOwners = frequencyOwners.length;
int previousRange = 0;

void setup() {
  size(640, 360);
  background(255);
  
  HumanRangeMapper.mapToHumanRange(frequencyOwners);
  
  for(FrequencyOwner freq : frequencyOwners) {
    
    Oscillator osc = new TriOsc(this);
    println(freq.getMappedToHumanRange());
    osc.freq(freq.getMappedToHumanRange());
    osc.amp(.5f);
    oscillators.add(osc);
  }
}

void draw() {
  int range = Math.round(map(mouseX, 0, width, 0, numberOfFrequencyOwners - 1));

  if (range != previousRange) {
    println(range);
    previousRange = range;
    for(Oscillator o : oscillators) {
      o.stop();
    }
    for(int i = 0; i <= range ; i++) {
      oscillators.get(i).play();
      println(i); 
    }
  }  
  
}
