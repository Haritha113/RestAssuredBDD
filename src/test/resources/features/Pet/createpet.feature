Feature: Creating Pets in pet stores

  Scenario Outline: create pet
    Given payload for creating pet is ready <fileName>
    When user sends a POST request
    Then response should be successful with status code <statusCode>
    And verify response has a pet details as per json file <fileName>
    Examples:
      | fileName | statusCode |
      | createPet.json| 200   |

  Scenario Outline: create pet using Authorization
    Given get the access token for authorization <userName> <password>
    And payload for creating pet is ready <fileName>
    When user sends a POST request with Authorization
    Then response should be successful with status code 200
    Examples:
      | fileName | userName | password |
      | createPet.json| abc | hello |