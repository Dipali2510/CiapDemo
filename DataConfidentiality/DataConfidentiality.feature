Feature:Data confidentiality

Verify that the application does not allow the browser to cache sensitive data

     
        Scenario Outline:  Prevent browser caching of sensitive data
        Given a new browser instance        
        And the client/browser is configured to use an intercepting proxy        
        And the login page        
        And the username <username>        
        And the password <password>        
        When the user logs in        
        And the proxy logs are cleared        
        And they access the restricted resource: <method>        
        And the response that contains the string: <sensitiveData> is recorded        
        Then the HTTP Cache-control header has the value: no-cache, no-store, must-revalidate        
        And the HTTP Pragma header has the value: no-cache        
        
        
        Examples:
            | username | password |          method | sensitiveData |
            |      bob | password | viewBobsProfile |        Robert |                
            
            
    