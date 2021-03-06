# Encyclo•Bestiary App
- [Live Repo](https://github.com/KRamseyArt/19.5_EncycloBestiary-App)
- [Live Demo](https://encyclo-bestiary-app.kramseyart.vercel.app/)
#### Tech Used:
- ReactJS
- NodeJS
- CSS

#### Summary:
- The landing page displays an informational overview about how to use the application.

![Landing Page screenshot](https://github.com/KRamseyArt/19.5_EncycloBestiary-App/blob/master/screenshots/1_Landing.jpg)
- User is able to create a new account by submitting a unique username, along with an email address and validated password.

![Sign up screenshot](https://github.com/KRamseyArt/19.5_EncycloBestiary-App/blob/master/screenshots/2_SignUp.jpg)
![Log in screenshot](https://github.com/KRamseyArt/19.5_EncycloBestiary-App/blob/master/screenshots/3_LogIn.jpg)
- Once logged in, user can then freely access their account to create, view, and delete their personal collection of Bestiaries and respective data.

![Profile page screenshot](https://github.com/KRamseyArt/19.5_EncycloBestiary-App/blob/master/screenshots/4_Profile.jpg)
![Add Data screenshot](https://github.com/KRamseyArt/19.5_EncycloBestiary-App/blob/master/screenshots/5_AddData.jpg)
![View Bestiary screenshot](https://github.com/KRamseyArt/19.5_EncycloBestiary-App/blob/master/screenshots/6_ViewBestiary.jpg)

# API Documentation:
- [Live API](https://encyclo-bestiary-app.herokuapp.com/)
#### Users
- (/)
  - GET: Returns a list of all current users registered
  - POST: Create new user with params `{ email, username, password }`
- (/:userId)
  - GET: Return a single user
  - PATCH: Edit `{ email, password, username, about_me }` of a single user, given a specific ID and valid authentication
  - DELETE: Remove a user from the database given a specific user ID and valid authentication
- (/:userId/bestiaries)
  - GET: Return all bestiaries assigned to a user, given a specific user ID
  - POST: Add a new bestiary to a user's collection with params `{ bestiary_name, bestiary_description }`, given a specific user ID and valid authentication
- (/:userId/data)
  - GET: Return all data across all bestiaries created by user
  - POST: Add a new data with params `{ bestiary_id, data_name, data_description }`, given a specific user ID and valid authentication

#### Bestiaries
- (/)
  - GET: Returns all bestiaries submitted to the app
  - POST: Add a bestiary to the database with params `{ bestiary_name, bestiary_description }`, given valid authentication
- (/:bestiaryId)
  - GET: Return a specific bestiary, given a specific bestiary ID
  - PATCH: Edit a specific bestiary with params `{ bestiary_name, bestiary_description }`, given a specific bestiary ID and valid authentication
  - DELETE: Remove a specific bestiary from the database, given a specific bestiary ID and valid authentication
- (/:bestiaryId/data)
  - GET: Return all data stored in a particular bestiary, given a specific bestiary ID
  - POST: Add a new data set to a bestiary with params `{ user_id, data_name, data_description }`, given a specific bestiary ID and valid authentication

#### Data
- (/)
  - GET: Return all data in the database
  - POST: Add new data to the database with params `{ bestiary_id, data_name, data_description }`, given valid authentication
- (/:dataId)
  - GET: Returns a particular set of data, given a specific data ID
  - PATCH: Edit a particular set of data with params `{ user_id, bestiary_id, data_name, data_description }`, given a specific data ID and valid authentication
  - DELETE: Removes a particular set of data from the database, given valid authentication