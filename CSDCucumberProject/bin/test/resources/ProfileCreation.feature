Feature: User Profile Creation
As I a user I need to create new Profile

Scenario: Clicking Register Button
Given accessing the "Collegejobs.com"
And the "Register" button is displayed
When Clicking the "Register" Button
Then Registration Form should be displayed

Scenario: Register Form
Given the Registration Form is displayed
When the form fully loaded
Then Following fields should be displayed like """Name, Mobile,JobType,Address,EmailId,Skill,Qualification"""


Scenario: Entering Registration Form
Given the Registration Form is displayed
When I enter the Form details
Then The All the details can be filled
But """Name, EmailId,Mobile""" should not be empty

Scenario:Click Save Button
Given Mandatory fields are filled
When Clicking the Save Button
Then The validation should be passed
And A pop-up message saying """ All Details saved""" should be displayed

Scenario: Click Save Button Negative
Given Mandatory fields are not filled
When Clicking the Save Button
Then The validation should Failed
And A pop-up error message stating """Name EmailID Mobile are mandatory""" should be displayed