Feature:Automated Security Scanning

Run automated application level tests against the application using OWASP ZAP

      Scenario:  The application should not contain SQL injection vulnerabilities
        Given the SQL-Injection policy is enabled        
        And the attack strength is set to High        
        And the alert threshold is set to Low        
        When the scanner is run        
        And the XML report is written to the file build/zap/sql_injection.xml        
        Then no Medium or higher risk vulnerabilities should be present        
        
            
      Scenario:  The application should not contain Cross Site Scripting vulnerabilities
        Given the Cross-Site-Scripting policy is enabled        
        And the attack strength is set to High        
        And the alert threshold is set to Low        
        When the scanner is run        
        And the XML report is written to the file build/zap/xss.xml        
        Then no Medium or higher risk vulnerabilities should be present        
        
            
      Scenario:  The application should not contain path traversal vulnerabilities
        Given the Path-traversal policy is enabled        
        And the attack strength is set to High        
        And the alert threshold is set to Low        
        When the scanner is run        
        And the XML report is written to the file build/zap/ssi.xml        
        Then no Medium or higher risk vulnerabilities should be present        
        
            
      Scenario:  The application should not contain remote file inclusion vulnerabilities
        Given the Remote-file-inclusion policy is enabled        
        And the attack strength is set to High        
        And the alert threshold is set to Low        
        When the scanner is run        
        And the XML report is written to the file build/zap/sfi.xml        
        Then no Medium or higher risk vulnerabilities should be present        
        
            
    