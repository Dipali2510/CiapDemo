Feature:Security settings HTTP headers

Verify that HTTP headers adequately protect data from attackers

      Scenario:  Restrict other sites from placing it in an iframe in order to prevent ClickJacking attacks
        Then the X-Frame-Options header is either SAMEORIGIN or DENY        
        
            
      Scenario:  Enable built in browser protection again Cross Site Scripting
        Then the HTTP X-XSS-Protection header has the value: 1; mode=block        
        
            
      Scenario:  Force the use of HTTPS for the base secure Url
        Then the Strict-Transport-Security header is set        
        
            
      Scenario:  Restrict HTML5 Cross Domain Requests to only trusted hosts
        Then the Access-Control-Allow-Origin header must not be: *        
        
            
      Scenario:  Enable anti-MIME sniffing prevention in browsers
        Then the HTTP X-Content-Type-Options header has the value: nosniff        
        
            
    