# Text Trader

## Purpose
Text Trader is intended as app that can be used by college students to sell or trade used textbooks to other students.  The current version is written for iOS using the SwiftUI framework as the frontend.  It is intended to link to a backend API which handles the database requirements.  

Our audience: 
- Joe is a poor college student who can't afford to purchase new books every quarter and needs a way to offset this cost.
- Sarah is a senior in college and looks around to find she has 4 years worth of college textbooks that she will probably never need again.  She would like a way to recoup some of the money she spent buying them all.

Both of these users are prime candidates for using our Text Trader app. 

## Controller
The controller for this app sits between the frontend and the backend.  Its purpose is to provide functions which make an HTTP request that to the backend API.  It receives response data, formats it into proper models, and sends those models to the frontend.  

![FLow Image](./misc/controller-flow.png)
### Current State  
Currently the controller has a basic setup that can make a call to a dummy API and convert the return data into a "Book" object which is then returned.  
The controller has placeholder functions for additional functionality, including full CRUD operation:  
- login
- sign up
- add a book
- edit a book
- delete a book
- update user info
- delete a user  

The Book and User models have been defined in the code, and the Codable interface has been implemented.   
The current Book model is set up to accept the data provided by the dummy API.  The code to match the expected API schema is there for future use, but is commented out.

### Moving Forward (aka Product Backlog)

The next steps to take are: 
1. Implementing the registration and login functions.  The backend API is already set up for these routes.
  - login request format:  
  ```
  #header
  x-api-key: <api key given for backend>
  #body
  { 
    "username": "name@email.com",
    "password": "abc123"
  }
  ```
  - login response format:
  ```
  {
    "user": {
        "username": "name@email.com",
        "name": "name"
    },
    "token": "abc...xyz"
}
```
- register (sign up) request format:
```
#header
 x-api-key: <api key given for backend>
#body
{
    "name": "name",
    "email": "name@email.com",
    "username": "name@email.com",
    "password": "abc123"
}
```
- register (sign up) response format:
```
{
    "username": "bob@email.com"
}
```
2. When the get books functionality is fully implemented in the API, adjust the existing get books function to use the proper model schema, and change the API URL appropriately.
3. As the backend gets additional routes set up, build out the code of the remaining CRUD functions.