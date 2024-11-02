Feature: As a developer I want to validate that the creation of a company is done correctly so that duplicate company names are prevented

    Scenario: Prevent duplicate company names on creation
        Given a company with the name "Company1" already exists in the system
        When I attempt to create a new company with the name "Company1"
        Then FindCompaniesByCompanyName should return a list of companies matching this name
        And if Any() returns true, an exception should be thrown with the message "The company name already exists"
        And if Any() returns false, the new company should be successfully created