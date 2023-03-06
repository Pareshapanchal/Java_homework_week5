Feature: Book category
  Background: I should be able to see homepage
    Given I enter URL:"https://demo.nopcommerce.com/"in browser
    And   I am on home page
    Scenario Outline:  I should be able to see top menu tabs on homepage with categories
      When  I am on home page
      Then  I should be able to see top Menu tabs with"<Categories>"
     Examples:
       | Categories        |  |
       | Computer          |  |
       | Electronic        |  |
       | Apparel           |  |
       | Digital downloads |  |
       | Books             |  |
       | Jwellery          |  |
       | Gift Cards        |  |

  Scenario Outline: I should be able to see book page with filters
        When I selectbook category from top menu tabs on home page
        Then I should be navigated to book category
        And I should be able to see"<Filters>"
        Examples:
          | Filters  |
          | Short by |
          | Display  |
          | Grid     |
          | List     |
    Scenario Outline:  I should be able to see the list of terms of each filter
      Given I am on Books page
      When I click on "<Filters>"
      Then I should be able to see "<List>>" in dropdown menu
      Examples:
        | Filters | List                                                                        |  |
        | Sort by | Name:A to Z, Name:Z to A,Price: Low to High, Price: High to Low, Created on |  |
        | Display | 3,6,9                                                                       |  |
      Scenario Outline: I should be able to choose any filter option with specific result
        Given I am on Books page
        When  I click on "<Filters>"
        And   I click on "<Option>"
        Then  I should be able to choose any filter option from the list
        And   I should be able to see "<Result>"
        Examples:
          | Filters | Option            | Result                                                             |  |
          | Sort by | Name:A to Z       | Sorted product with the product name  in alphabetical order A to Z |  |
          | Sort by | Name:Z to A       | Sorted product with the product name  in alphabetical order Z to A |  |
          | Sort by | Price:Low to High | Sorted product with the price in descending order                  |
          | Sort by | Price:High to Low | Sorted product with the price in ascending order                   |
          | Sort by | Created on        | Recently added product should be show first                        |
          | Display | 3                 | 3 products in a page                                               |
          | Display | 6                 | 6 products in a page                                               |
          | Display | 9                 | 9 products in a page                                               |
Scenario Outline: I should be able to see product display format according display format type as per given picture
                   in srs document
Given  I am Books page
When   I click on "< Display Format Icon>"
Then   I should be able to see product display format according diaplay format type as per given picture in SRS document
Examples:
  | Display Format Icon |
  | Gird                |
  | List                |