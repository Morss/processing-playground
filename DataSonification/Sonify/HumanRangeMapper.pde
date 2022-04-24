import java.util.*;

public static class HumanRangeMapper {
  
  private static float MIN_HUMAN_FREQ = 150;
  private static float MAX_HUMAN_FREQ = 12000;

  
  public static void mapToHumanRange(FrequencyOwner[] frequencyOwners) {
    int numOfValues = frequencyOwners.length;
    float max = frequencyOwners[0].getFrequency();
    float min = frequencyOwners[numOfValues-1].getFrequency();
    
    //Collections.reverse(Arrays.asList(frequencyOwners));
    
    for (int i = 0; i < numOfValues; i++) {
      FrequencyOwner fo = frequencyOwners[i];
      fo.setMappedToHumanRange(map(
          fo.getFrequency(),
          0,
          max,
          MIN_HUMAN_FREQ,
          MAX_HUMAN_FREQ));
    }
  }
}
