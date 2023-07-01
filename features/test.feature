Feature: Search earphones

    Scenario: As a user I should be able to search for an earphone and get matching result
    Given I visit "https://www.amazon.in"
    When I search for "earphones"
    Then I should see search results for "earphones"