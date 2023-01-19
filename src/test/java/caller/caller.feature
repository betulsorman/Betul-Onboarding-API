Feature: callers features

  Background:
    * url baseUrl

  @randomUserData
  Scenario: Task-2
    * def data = Java.type('helper.DataGenerator')
    * def userData = read('classpath:data/userData.json')
    * set userData.id = data.generateID()
    * set userData.username = data.generateString()
    * set userData.firstName = data.generateString()
    * set userData.lastName = data.generateString()
    * set userData.email = data.generateEmail()
    * set userData.password = data.generatePassword()
    * set userData.phone = data.generatePhone()
    * set userData.userStatus = data.generateUserStatus()

    @task4
  Scenario: Task-4
    * def user = call read('classpath:caller/caller.feature@randomUserData')
    * user.userData.username = __arg.username
    * user.userData.lastName = __arg.lastName
    * header Content-Type = "application/json"
    * path '/user'
    * request user.userData
    * method POST
    * status 200
    * match parseInt(response.message) == user.userData.id
    * print user.userData



