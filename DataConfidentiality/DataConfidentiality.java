import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;
import java.lang.String;

public Class DataConfidentiality {
  
  @Given("^a new browser instance$")
  public void aNewBrowserInstance() {
    org.junit.Assert.fail();
  }
  
  @Given("^the client/browser is configured to use an intercepting proxy$")
  public void theClientBrowserIsConfiguredToUseAnInterceptingProxy() {
    org.junit.Assert.fail();
  }
  
  @Given("^the login page$")
  public void theLoginPage() {
    org.junit.Assert.fail();
  }
  
  @Given("^the username <username>$")
  public void theUsernameUsername() {
    org.junit.Assert.fail();
  }
  
  @Given("^the password <password>$")
  public void thePasswordPassword() {
    org.junit.Assert.fail();
  }
  
  @When("^the user logs in$")
  public void theUserLogsIn() {
    org.junit.Assert.fail();
  }
  
  @When("^the proxy logs are cleared$")
  public void theProxyLogsAreCleared() {
    org.junit.Assert.fail();
  }
  
  @When("^they access the restricted resource: <method>$")
  public void theyAccessTheRestrictedResourceMethod() {
    org.junit.Assert.fail();
  }
  
  @When("^the response that contains the string: <sensitiveData> is recorded$")
  public void theResponseThatContainsTheStringSensitiveDataIsRecorded() {
    org.junit.Assert.fail();
  }
  
  @Then("^the HTTP Cache-control header has the value: no-cache, no-store, must-revalidate$")
  public void theHTTPCacheControlHeaderHasTheValueNoCacheNoStoreMustRevalidate() {
    org.junit.Assert.fail();
  }
  
  @Then("^the HTTP Pragma header has the value: no-cache$")
  public void theHTTPPragmaHeaderHasTheValueNoCache() {
    org.junit.Assert.fail();
  }
  
}
