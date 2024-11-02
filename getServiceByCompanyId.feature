 Feature: As a developer I want to obtain the services that a company has to know what services a company has.
  Scenario: Retrieve all services by company ID with invalid ID
     Given I have a company ID that is less than or equal to 0
     When I call the GetAllServicesByCompanyIdQuery with this ID
     Then an exception should be thrown
     And the exception message should indicate an invalid company ID