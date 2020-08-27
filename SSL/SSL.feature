Feature:SSL

Ensure that the SSL configuration of the service is robust

      Scenario:  Disable SSL deflate compression in order to mitigate the risk of the CRIME attack
        Then the output must contain the text "Compression disabled"        
        
            
      Scenario:  Disable client renegotiations
        Then the output must contain a line that matches .*Client-initiated Renegotiation?:\s+OK - Rejected.*        
        
            
      Scenario:  Patch OpenSSL against the Heartbleed vulnerability
        Then the output must contain a line that matches .*Not vulnerable to Heartbleed.*        
        
            
    