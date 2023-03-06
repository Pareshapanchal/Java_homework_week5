Feature:  Demo nopCommerce's top menu acceptance criteria
  As a user, I would like to check acceptance criteria of nop Commerce top menu
  Background:  User is on given URL
    When  User type URL https://demo.noptcommerce.com
    And   Click on Enter button
    Then  User is on given URL

  Scenario: Verify that user can navigate to Books category
    When User is on given URL
    Then Click on Books tab on top menu
    Then User is navigated to Books categories page

  Scenario: Verify that user can see the Books category page with filters and list of products
    When  User is on given URL
    And   Click on Books tab on top menu
    And   Check Filters and List tabs
    Then  Books category page is displayed with filters and list tabs

  Scenario: Verify that user can see 'Sort by' filter on Book category page
    Given  User is on Books category page
    When   User is on Books category page
    And    Check 'Sort by' filter is present
    Then 'Sort by' filter is available on Book Category page

  Scenario: Verify that user can see 'Display' filter on Book category page
    Given User is on Books category page
    When  User is on Books category page
    And   Check 'Display' filter is present
    Then  'Dispaly' filter is available on Book Category page

  Scenario: Verify that user can see 'Grid' tab on Book Category page
    Given User is on Books category page
    When  User is on Books category page
    And   Check 'Grid'tab is  present
    Then 'Grid' tab is available on Book category page

  Scenario: Verify that user can see 'List' tab on Book Category page
    Given User is on Books category page
    When  User is on Books category page
    And   Check 'List' tab is  present
    Then  'List' tab is available on Book category page

  Scenario: Verify that user can see 'Name: A to Z' selection is present in 'Sort by' filter
    Given User is on Books category page
    When  User is on Books category page
    And   Check that 'Name: A to Z' selection is present
    Then  Check that 'Name: A to Z' selection is present in 'Sort by' filter

  Scenario: Verify that user can see 'Name: Z to A' selection is present in 'Sort by' filter
    Given User is on Books category page
    When  User is on Books category page
    And   Check that 'Name: Z to A' selection is present
    Then  Check that 'Name: Z to A' selection is present in 'Sort by' filter

  Scenario: Verify that user can see 'Price:Low to High' selection is present in 'Sort by' filter
    Given User is on Books category page
    When  User is on Books category page
    And   Check that 'Price:Low to High' selection is present
    Then  Check that 'Price:Low to High' selection is present in 'Sort by' filter

  Scenario: Verify that user can see 'Price:High to Low' selection is present in 'Sort by' filter
    Given User is on Books category page
    When  User is on Books category page
    And   Check that 'Price:High to Low' selection is present
    Then  Check that 'Price:High to Low' selection is present in 'Sort by' filter

  Scenario: Verify that user can see 'Created on' selection is present in 'Sort by' filter
    Given User is on Books category page
    When  User is on Books category page
    And   Check that 'Created on' selection is present
    Then  Check that 'Created on' selection is present in 'Sort by' filter

  Scenario: Verify that user can see 'Name:A to Z' filter is functioning as expected
            (Note: Products are filtered in alphabetical order)
    Given  User is on Books category page
    When   User is on Books category page
    And    Click on 'Sort by' filter
    And    Select 'Name:A to Z' filter
    Then   All products are displayed in alphabetical order

  Scenario: Verify that user can see 'Name:Z to A' filter is functioning as expected
  (Note: Products are filtered in Z to A alphabetical order)
    Given  User is on Books category page
    When   User is on Books category page
    And    Click on 'Sort by' filter
    And    Select 'Name:Z to A' filter
    Then   All products are displayed in Z to A alphabetical order







