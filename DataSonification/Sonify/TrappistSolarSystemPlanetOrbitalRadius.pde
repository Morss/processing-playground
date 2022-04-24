public enum TrappistSolarSystemPlanetOrbitalRadius implements FrequencyOwner {

  B(0.011),
  C(0.015),
  D(0.021),
  E(0.028),
  F(0.037),
  G(0.045),
  H(0.06),
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
  
  private TrappistSolarSystemPlanetOrbitalRadius(float orbitalRadius) {
    this.frequency = 1/orbitalRadius;
  }

} 
