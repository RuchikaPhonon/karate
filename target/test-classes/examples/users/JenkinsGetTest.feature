Feature: Demo c2c API hit using get and post

#1st way to hit get

Background:
* url baseUrl
#* url baseUrl

Scenario: Verify that c2c API hit for get method is working
    Given path '/c2c/C2CRequest'
    And param visitor = '912657123411'
    And param custToken = '7qc1hfr'
    And param duration = 800
And param udf4 = 'advFirst'
And param udf5 = 'retargeting'
And param udf7 = 'F7688F4E05769CE32E43AF9E7F0DE22C'
    When method get
    Then status 200
    
    #2nd way to hit get
    #Scenario: Verify that c2c API hit for get method is working
    #Given url 'https://dev.phonon.in/c2c/C2CRequest?visitor=912657123411&advertiser=&uniqueID=1&custID=&custToken=7qc1hfr&duration=900&udf1=&udf2=&udf3=&udf4=advFirst&udf5=retargeting&udf7=F7688F4E05769CE32E43AF9E7F0DE22C'
    #When method get
    #Then status 200
    