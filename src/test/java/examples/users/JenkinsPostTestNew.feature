Feature: Demo c2c API hit using post

#------------------------
#1st way to hit post
#------------------------
Background:
* url baseUrl
* header Content-Type = 'application/json'

Scenario: Verify that c2c API hit for post method is working
    Given path '/c2c/JSONRequest'
   And request {"visitor": "919033563398","advertiser": "919638508969","custToken": "1234abcd","udf1": "Vadodara",  "udf2": "Mr;Test;Test;FromJSON","udf3": "EnquiryID","udf4": "advFirst","udf5": "IC","udf7":""}
    When method post
    Then status 200

#------------------------
#2nd way to hit post
#------------------------
#Scenario: Verify that c2c API hit for post method is working
    #Given url baseUrl
    #Given path '/c2c/JSONRequest'
    #When request {"visitor": "912657123411","custToken": "7qc1hfr","duration": "700","udf4": "advFirst","udf5": "retargeting","udf7":"F7688F4E05769CE32E43AF9E7F0DE22C"}
    #When method post
    #Then status 200
    #And print 'Response is:', response
    #And match response == '{NACK:Invalid Referrel Parameter:20000000000011028101}'
    
#------------------------
#3rd way to hit post
#------------------------
#Background:
#* url baseUrl
#* header Content-Type = 'application/json'
#
#Scenario: Verify that c2c API hit for post method is working
    #Given path '/c2c/JSONRequest'
   #And request {"visitor": "912657123411","custToken": "7qc1hfr","duration": "800","udf4": "advFirst","udf5": "retargeting","udf7":"F7688F4E05769CE32E43AF9E7F0DE22C"}
    #When method post
    #Then status 200
    