import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import java.lang.String;

public Class SSL {
  
  @Then("^the output must contain the text "Compression disabled"$")
  public void theOutputMustContainTheTextCompressionDisabled() {
    org.junit.Assert.fail();
  }
  
  @Then("^the output must contain a line that matches .*Client-initiated Renegotiation?:\s+OK - Rejected.*$")
  public void theOutputMustContainALineThatMatchesClientInitiatedRenegotiationSOKRejected() {
    org.junit.Assert.fail();
  }
  
  @Then("^the output must contain a line that matches .*Not vulnerable to Heartbleed.*$")
  public void theOutputMustContainALineThatMatchesNotVulnerableToHeartbleed() {
    org.junit.Assert.fail();
  }
  
}
