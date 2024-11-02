Feature: As a developer,I want to ensure that the name of a service is unique within each category for a company,
So that redundant data entry is avoided and service data remains organized and easy to manage.
 Scenario: Prevent duplicate service names within the same company and category
    Given a service with the name "Service1" exists in a category for a company
    When I attempt to add a new service with the name "Service1" in the same category for that company
    Then ServiceNameExistsForCompanyAndCategoryAsync should return true
    And an exception should be thrown with the message "The service name already exists for the company and category."