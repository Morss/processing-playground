public enum TrappistSolarSystemPlanetOrbit implements FrequencyOwner {

  B(1.51),
  C(2.42),
  D(4.05),
  E(6.10),
  F(9.21),
  G(12.35),
  H(20.0),
  ;
  
  float frequency;
  float mappedToHumanRange;
  
  public float getMappedToHumanRange() {
    return mappedToHumanRange;
  }
  
  public void setMappedToHumanRange(float mappedToHumanRange) {
    this.mappedToHumanRange = mappedToHumanRange;
  }
  
  public float getFrequency() {
    return frequency;
  }
  
  private TrappistSolarSystemPlanetOrbit(float orbitTimeDays) {
    this.frequency = 1/orbitTimeDays;
  }

} 
