Feature:Guidewire Insurance Demo

Guidewire Insurance Demo Feature

     
        Scenario Outline:  GW Login into Guidewire application
        Given User opens application <Home Page>        
        When User enters <User Name> and <Password>        
        And user clicks on "Log In" button        
        Then "Landing Page" is displayed successfully        
        
        
        Examples:
            |                                   Home Page | User Name | Password |
            | http://in-pnq-coe31:8080/pc/PolicyCenter.do |        su |       gw |                
            
            
     
        Scenario Outline:  GW Create New Account
        Given User is on "Landing Page"        
        When User clicks on "Actions " button        
        And User clicks on "New Account" link        
        And User enters <Company Name>        
        And User clicks on "Search" link        
        And User clicks on "Create New Account" link        
        And user clicks on "Person" link        
        Then "Create New Account Page" is displayed successfully        
        
        
        Examples:
            | Company Name |
            |          abc |                
            
            
     
        Scenario Outline:  GW Add Person Details
        Given User is on "Create New Account Page"        
        When User enters <First name> and <Last name> and <Home Phone> and <Fax Phone> and <Primary Email> and <Work Phone>        
        
        
        Examples:
            | First name | Last name | Home Phone |  Fax Phone |           Primary Email | Work Phone |
            |     George |     Smith | 9084567890 | 9086549870 |      contact@riddhi.com | 8846549870 |                
            |    Michael |     Smith | 9586567765 | 9588547770 | contact@semptronics.com | 9588547770 |                
            
            
     
        Scenario Outline:  GW Add Address Details
        Given User is on "Create New Account Page"        
        When User enters <Address 1> and <City> and <County>        
        And User Selects <State>        
        And User enters <ZIP Code>        
        And User Selects <Address Type>        
        
        
        Examples:
            |       Address 1 |       City | County |      State | ZIP Code | Address Type |
            | 12 Station Road | Costa Mesa | Orange | California |    92626 |         Home |                
            
            
     
        Scenario Outline:  GW Add Organization Details
        Given User is on "Create New Account Page"        
        When User enters <Organization>        
        And User enters <Producer Code>        
        And User clicks on "Update" link        
        Then Account File "Summary Page" is displayed successfully        
        
        
        Examples:
            |           Organization |                     Producer Code |
            | ACV Property Insurance | 301-008578 ACV Property Insurance |                
            
            
      Scenario:  GW Logout From Guidewire application
        Given User is on "Summary Page"        
        When User clicks on "Settings" button        
        And user clicks on "Logout" button        
        Then "Login Page" is displayed successfully        
        
            
    