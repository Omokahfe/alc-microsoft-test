[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

# User Manager

This repository contains a simple demo API built with NodeJS.
The API is used to manage users in a MongoDB database.

### Development

This application was developed using [ExpressJS](http://expressjs.com/). MongoDB was used for persisting data with [Mongoose](https://mongoosejs.com/) as [ORM](https://en.wikipedia.org/wiki/Object-relational_mapping). [Docker](https://docker.com) was used for containerization.
### Installation

* Start up your terminal (or Command Prompt on Windows OS).

* Ensure that you've `node`, `docker` and `docker-compose` installed on your PC.

* Clone the repository by entering the command `git clone https://github.com/Omokahfe/alc-microsoft-test.git` in the terminal.

* Navigate to the project folder using `cd alc-docker-demo` on your terminal (or command prompt)

* Create a `.env` file in your root directory as described in `.env.sample` file. Variables such as HOST_PORT (The port you want to access it from on the docker host) and DB_NAME are defined in the .env file and it is essential you create this file before running the application. The port within the isolated docker network is *3000*

```env
DB_NAME=databaseName
HOST_PORT=3000
```

* Build your containers with `docker-compose build`

* Start the server with the command: `docker-compose up`

* For subsequent runs, you need not run `docker-compose build` except you really understand what you are doing.

* You can access the running instance from `http://localhost:port` where `port` is the `HOST_PORT` you specified above.

### Testing

To ensure that your installation is successful you'll need to run tests.
The command: `npm test` makes this possible. It isn't functional right now, but once it's done you'll be notified via the README.

### API Documentation

The API only has one endpoint which is the `/users` endpoint for saving users to the database. The endpoint works with the HTTP verbs: `POST`, `GET`, `PUT`, `DELETE`.

###### POST HTTP Request

-`POST` /users
-INPUT:

```x-form-url-encoded
name: John Doe
email: john.doe@gmail.com
password: johndoe
```

###### HTTP Response

-HTTP Status: `201: created`
-JSON data

```json
{
  "_id": "59071791b0lkscm2325794",
  "name": "John Doe",
  "email": "john.doe@gmail.com",
  "password": "johndoe",
  "__v": 0
}
```

###### GET HTTP Response (all)

-`GET` /users

```json
[
    {
        "_id": "59071791b0lkscm2325794",
        "name": "John Doe",
        "email": "john.doe@gmail.com",
        "password": "johndoe",
        "__v": 0
    }
]
```

###### GET HTTP Response (specified id)

-`GET` /users/:id

```json
{
    "_id": "59071791b0lkscm2325794",
    "name": "John Doe",
    "email": "john.doe@gmail.com",
    "password": "johndoe",
    "__v": 0
}
```

###### DELETE HTTP Response

-`DELETE` /users/:id

```json
User John Doe was deleted
```

###### POST HTTP Request

-`PUT` /users/:id
-INPUT:

```x-form-url-encoded
name: Jane Doe
email: jane.doe@gmail.com
password: janedoe
```

###### HTTP Response

-HTTP Status: `200: OK`
-JSON data

```json
{
  "_id": "59071791b0lkscm2325794",
  "name": "Jane Doe",
  "email": "jane.doe@gmail.com",
  "password": "janedoe",
  "__v": 0
}
```

### Author

[**Olajide Bolaji 'Nuel**](https://github.com/BolajiOlajide)

### Updated by

[**Ojagun Omokahfe**](https://github.com/Omokahfe)