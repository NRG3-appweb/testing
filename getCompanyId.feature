Feature: As a developer, I want to validate that I can find a company by its identifier.

  Scenario: Retrieve a company by ID and handle not found case
    Given a company ID that does not exist in the system
    When I call the GetCompanyByIdQuery with this ID
    Then an exception should be thrown
    And the exception message should indicate that the company was not found