import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import java.lang.String;

public Class SecuritySettingsHTTPHeaders {
  
  @Then("^the X-Frame-Options header is either SAMEORIGIN or DENY$")
  public void theXFrameOptionsHeaderIsEitherSAMEORIGINOrDENY() {
    org.junit.Assert.fail();
  }
  
  @Then("^the HTTP X-XSS-Protection header has the value: '(.*)'  ; mode=block$")
  public void theHTTPXXSSProtectionHeaderHasTheValue1ModeBlock() {
    org.junit.Assert.fail();
  }
  
  @Then("^the Strict-Transport-Security header is set$")
  public void theStrictTransportSecurityHeaderIsSet() {
    org.junit.Assert.fail();
  }
  
  @Then("^the Access-Control-Allow-Origin header must not be: *$")
  public void theAccessControlAllowOriginHeaderMustNotBe() {
    org.junit.Assert.fail();
  }
  
  @Then("^the HTTP X-Content-Type-Options header has the value: nosniff$")
  public void theHTTPXContentTypeOptionsHeaderHasTheValueNosniff() {
    org.junit.Assert.fail();
  }
  
}
