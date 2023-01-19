Feature: Karate-API Tasks

  Background: Url Given
    * url baseUrl

  Scenario Outline: Task-1
    * path "/pet/findByStatus"
    * param status = <status>
    * method GET
    * status 200
    * match header Content-Type == "application/json"
    * match each response[*].id == '#present'
    * match each response[*].status == <status>
    * match each response[*].id == '#notnull'
    * print response
    Examples:
      | status      |
      | "available" |
      | "pending"   |

  Scenario: Task-3
    * def user = call read('classpath:caller/caller.feature@randomUserData')
    * header Content-Type = "application/json"
    * path '/user'
    * request user.userData
    * method POST
    * status 200
    * match parseInt(response.message) == user.userData.id

  Scenario: Task-4
    * call read('classpath:caller/caller.feature@task4') {username: "Test1", lastName: "Test2"}




