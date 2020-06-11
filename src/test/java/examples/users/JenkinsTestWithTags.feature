@tag
Feature: Demo c2c API hit using get and post

@tag1
Scenario: Verify that c2c API hit for get method is working
    Given url 'https://dev.phonon.in/c2c/C2CRequest?visitor=912657123411&advertiser=&uniqueID=1&custID=&custToken=7qc1hfr&duration=900&udf1=&udf2=&udf3=&udf4=advFirst&udf5=retargeting&udf7=F7688F4E05769CE32E43AF9E7F0DE22C'
    When method get
    Then status 200
    
@tag2
Scenario: Verify that c2c API hit for post method is working
    Given url 'https://dev.phonon.in/c2c/JSONRequest'
    When request {"visitor": "919033563398","advertiser": "919638508969","custToken": "1234abcd","udf1": "Vadodara",  "udf2": "Mr;Test;Test;FromJSON","udf3": "EnquiryID","udf4": "advFirst","udf5": "IC","udf7":""}
    When method post
    Then status 200
    #And print 'Response is:', response
    #And match response == '{NACK:Invalid Referrel Parameter:20000000000011028101}'
    
 #@tag3
  #Scenario Outline: Title of your scenario outline
    #Given I want to write a step with <name>
    #When I check for the <value> in step
    #Then I verify the <status> in step
    #
      #Examples: 
      #| name  | value | status  |
      #| name1 |     5 | success |
      #| name2 |     7 | Fail    |