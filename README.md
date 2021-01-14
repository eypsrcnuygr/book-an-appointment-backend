# Book-an-Appointment-Backend
This is the backend part of the Final Capstone project on Microverse curriculum. You can sign-up as a teacher and find students for yourself, or you can sign-up as a student and find suitable teachers on your interested areas. The API uses REST architecture, There are User, Teacher and Appointment models.
For the registrations it uses ```devise_token_auth```. The index page is showing the list of appointments and related users and the teachers.
It uses this [repo](https://github.com/eypsrcnuygr/book-an-appointmen-frontend) as a frontend.

## Built With
* Ruby
* Rails
* Rubocop
* RSpec

## Live Link

Here is the [live link](https://book-an-appointment-backend.herokuapp.com/) of this project.

## Prerequisities

To get this project up and running locally, you must already have ruby installed on your computer.

## Getting Started

**To get this project set up on your local machine, follow these simple steps:**

**Step 1**<br>
Navigate through the local folder where you want to clone the repository and write<br>
```git clone git@github.com:eypsrcnuygr/book-an-appointment-backend.git```. It will clone the repo to your local folder.<br>
or with https<br>
```git clone git@github.com:eypsrcnuygr/book-an-appointment-backend.git```.<br>
**Step 2**<br>
Run ```cd book-an-appointment-backend```<br>
**Step 3**<br>
Run ```bundle install``` to get the necesary gems.<br>
**Step 4**<br>
Create a '.env' file and put your credentials. ```DB_USERNAME:``` and ```DB_PASSWORD```.<br>
**Step 5**<br>
Run ```rails db:create``` to create the database.<br>
**Step 6**<br>
Run ```rails db:migrate``` to make the migrations and ready your database.<br>
**Step 7**<br>
Run ```yarn install --check files``` to verify your node modules.<br>
**Step 8**<br>
Run ```rails s -p 3001``` to run the server and go to 'http://localhost:3001/' at your browser.<br>
**Step 9**<br>
Enjoy<br>

## Features
**Current working endpoints for registrations**
- ```GET /``` shows the appointments and related users and the teachers.
- ```GET /teachers/``` shows all the teachers.
- ```GET /show/:id``` shows the specific teacher and teacher's appointments and the related users.
- ```GET /appointments``` shows the appointments and related users and the teachers as root does.
- ```GET /appointments/:id``` shows the specific appointment.

**Current working endpoints for showing the information**
- ```POST /auth/``` creates new user with email, password and password_confirmation params.
- ```POST /auth/sign_in/``` logs in users with email, password as params and uid, acces-token and client on the request header.
- ```POST /auth_teacher/``` creates new teacher with email, password and password_confirmation params.
- ```POST /auth_teacher/sign_in/``` logs in teachers with email, password as params and uid, acces-token and client on the request header.
- ```GET /auth/validate_token/``` validates the user's token, it expects the uid, acces-token and client with it's headers.
- ```GET /auth_teacher/validate_token/``` validates the teacher's token, it expects the uid, acces-token and client with it's headers.

## Test
- There are 3 models test file. Those tests check the associations and the validities.
- There are 2 controllers test file. Those tests check the related actions.
- For testing all you need to do is run ```rspec``` in your cloned folder.

## Authors

👤 **Eyüp Sercan UYGUR**

-   Github: [@eypsrcnuygr](https://github.com/eypsrcnuygr)
-   Twitter: [@eypsrcnuygr](https://twitter.com/eypsrcnuygr)
-   LinkedIn: [eypsrcnuygr](https://www.linkedin.com/in/eypsrcnuygr/)
-   Gmail: [sercanuygur@gmail.com](sercanuygur@gmail.com)

## 🤝 Contributing

Contributions, issues and feature requests are welcome!

## Show your support

Give a ⭐️ if you like this project!

## Issues

For issues [check](https://github.com/eypsrcnuygr/book-an-appointment-backend/issues).

## Acknowledgments

-   This Project was part of an assignment available on Microverse.
-   Our thanks to Microverse and all our peers and colleagues there.

## 📝 License

This project is [MIT](lic.url) licensed.
