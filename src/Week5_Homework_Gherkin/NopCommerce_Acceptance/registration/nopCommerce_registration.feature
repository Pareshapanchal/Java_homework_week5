Feature: nopCommerce Registration
  As a User
  I want to check the Register functionality of nopCommerce
  Background: I am on nopCommerce Registeration page
    Given  I open the Google Chrome Browser
    When   I open the URL https://demo.nopCommerce.com/register
    Then   I am on nopCommerce Registration page

  Scenario Outline:  I should not be able to register with invalid data on mandatory field (*) of registration page
    When  I enter First name"<First Name>"
    And   I enter Last name"<Last Name>"
    And   I enter Email"<Email>"
    And   I enter Password "<Password>"
    And   I enter Confirm Password "<Confirm Password>"
    And   Click on Registration button
    Then  I can see an error message "<Error Message>"
    Examples:
      | First Name  | Last Name |  | Email            | Password | Confirm Password | Error Message                              |  |
      | "         " | bakshi    |  | bakshi@gmail.com | 456897   | 456897           | please enter First Name                    |  |
      | Rohan       | " "       |  | bakshi@gmail.com | 456897   | 456897           | please enter Last Name                     |  |
      | Rohan       | bakshi    |  | "              " | 456897   | 456897           | please enter Valid email                   |  |
      | Rohan       | bakshi    |  | bakshi@gmail.com | "     "  | 456897           | password is required                       |
      | Rohan       | bakshi    |  | bakshi@gmail.com | 456897   | " "              | confirm password is required               |  |
      | Rohan       | bakshi    |  | bakshi@gmail.com | 456897   | 45689            | password and confirm password do not match |
      | Rohan       | bakshi    |  | bakshi@gmail.com | 456897   | ""               | minimum 6 character password is rquired    |  |
      | " "         | " "       |  | "             "  | "  "     | "   "            | mandatory (*) field is required            |  |
Scenario Outline: I should be able to select any one radio button from Gender Label of Your Personal Details section
Given I am on "Gender:" label of "Your Personal Details" section
When  I select "Male" radio button
And   I select "Female" radio button
Then  I am able to select any one of the radio button

Scenario Outline:  I should be able to select Day, Month and Year from drop down list of" "Date of birth" field
  Given I am on "Date of Birth" field of "Your Personal Details" section
  When  I select day"<Day>"
  And   I select day"<Month>"
  And   I select day"<Year>"
  Then  I am able to select Day, Month and Year from drop down list
  Examples:
    | Day | Month    | Year |
    | 11  | November | 1989 |

Scenario: I should be able to check and uncheck the Newsletter box on options section
When I am on Newsletter lable on options section
And  I click on Newsletter checkbox
And  I again click on Newsletter checkbox
Then I was able to check and uncheck box next to Newsletter label

Scenario:  I should be able to register with valid mandatory(*) field data on registration page
When I enter First Name "Rohan"
And  I enter Last Name "bakshi"
And  I enter Email "bakshi@gmail.com"
And  I enter Password "456897"
And  Ienter Confirm Password "456897"
And  I click on Register button
Then I was able to register sucessfully








