*** Settings ***
Library  SeleniumLibrary 
Suite Setup    Log    I am inside test suite setup
Suite Teardown    Log    I am inside test suite tear down   
Test Setup   Log    I am inside test setup  
Test Teardown    Log    I am inside test teardown    
Default Tags    Sanity



*** Test Cases ***
MyFirstTest
    [Tags]    Smoke
    Log    Hello World
    
MySecondTest
    Log    I am inside 2nd Test
    Set Tags    Regression1
    Remove Tags    Regression1   
    
MyThirdTest
    Log    I am inside 3rd Test
    

# FirstSeleniumTest
    # Open Browser    https://google.com    chrome
    # # Set Browser Implicit Wait    2
    # Input Text    name=q    Testing 
    # Press Keys    name=q    RETURN
    # # Click Button    name=btnK    
    # Sleep    2
    # Close Browser  
    # Log    Test Completed   
    

# SampleLoginTest
    # [Documentation]    This is a sample login test
    # Open Browser    ${URL}    chrome
    # Set Browser Implicit Wait    2
    # LoginKW
    # Sleep    2    
    # Click Element    link=Forgot Password?
    # Close Browser
    # Log    Test Completed     
    # Log    This test was executed by %{username} on %{os}  
    # Log    Built in varaibles ${CURDIR}    
    
*** Variables ***
${URL}     https://mail.rediff.com/cgi-bin/login.cgi 
@{CREDENTIALS}    test@testing.com    test123 
&{LOGINDATA}    username=test@testing.com    password=password123      

*** Keywords ***
LoginKW
    Input Text    id=login1     @{CREDENTIALS}[0]     
    Input Password    id=password   &{LOGINDATA}[password]
    Click Button    name=proceed
      