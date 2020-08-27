Feature:Authorization

Verify that the access control model is enforced so that only the authorized users have access to their own data

     
        Scenario Outline:  Users can view restricted resources for which they are authorised
        Given a new browser or client instance        
        And the client/browser is configured to use an intercepting proxy        
        And the proxy logs are cleared        
        And the login page        
        And the username <username>        
        And the password <password>        
        When the user logs in        
        And the proxy logs are cleared        
        And the HTTP requests and responses are recorded        
        And they access the restricted resource: <method>        
        Then the string: <sensitiveData> should be present in one of the HTTP responses        
        
        
        Examples:
            | username | password |            method |               sensitiveData |
            |      bob | password |   viewBobsProfile |                      Robert |                
            |    alice | password | viewAlicesProfile | alice@continuumsecurity.net |                
            |    admin | password |      viewAllUsers |                   User List |                
            
            
     
        Scenario Outline:  Users must not be able to view resources for which they are not authorised
        Given the access control map for authorised users has been populated        
        And a new browser or client instance        
        And the username <username>        
        And the password <password>        
        And the login page        
        When the user logs in        
        And the previously recorded HTTP Requests for <method> are replayed using the current session ID        
        Then the string: <sensitiveData> should not be present in any of the HTTP responses        
        
        
        Examples:
            | username | password |            method |               sensitiveData |
            |    alice | password | viewAlicesProfile | alice@continuumsecurity.net |                
            |      bob | password |   viewBobsProfile |                      Robert |                
            |    alice | password |      viewAllUsers |                   User List |                
            |      bob | password |      viewAllUsers |                   User List |                
            
            
     
        Scenario Outline:  Un-authenticated users should not be able to view restricted resources
        Given the access control map for authorised users has been populated        
        And a new browser or client instance        
        And the login page        
        When the previously recorded HTTP Requests for <method> are replayed using the current session ID        
        Then the string: <sensitiveData> should not be present in any of the HTTP responses        
        
        
        Examples:
            |            method |               sensitiveData |
            |   viewBobsProfile |                      Robert |                
            | viewAlicesProfile | alice@continuumsecurity.net |                
            |      viewAllUsers |                   User List |                
            
            
    