# 🥁 Eastenders Database - Software Engineer Exercise

- [Prerequisites](#prerequisites)
- [Getting Started](#getting-started)
- [Instructions](#instructions)
- [Delivering Your Work](#deliveringyourwork)

## 🖥 Prerequisites

This task allows you to demonstrate some of the coding skills we use day to day in our team. There is scope to add extra features but as a guideline please spend no more than a few hours on the test in total.

Before you start, you'll need to install [docker](https://docs.docker.com/get-docker/) and the [serverless](https://www.serverless.com/framework/docs/getting-started#install-via-npm) framework.

We recommend running Node 14. The code will fail on earlier versions due to [optional chaining](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Optional_chaining) and hasn't been tested thoroughly on later versions.

You can use a programme like [Sequel Pro](https://www.sequelpro.com/) (for Mac users), or [HeidiSQL](https://www.heidisql.com/)/[MySQL Workbench](https://www.mysql.com/products/workbench/) (for Windows users) to inspect your database.
The login details for the database can be found in the [serverless.yml](server/serverless.yml) file.

## 🏃‍♀️ Getting started

Fork this project to a Github account you own

Then clone this project and navigate to the directory

```
git clone https://github.com/bbc/cda-software-engineering-exercise.git
cd cda-software-engineering-exercise
```

You will need 2 terminal windows for the next part as you need to run commands in the client and server directories:

### Server

The server includes a docker container, that has a MySQL database.

```
cd server
npm install
npm start
```

This will fire up your GraphQL server, you can check it's working by visiting [http://localhost:4000/dev/graphql](http://localhost:4000/dev/graphql)

### Client

The client is built on top of [Create React App](https://github.com/facebook/create-react-app).

```
cd client
npm install
npm start
```

This will fire up your app at [http://localhost:3000](http://localhost:3000)

## 🏗 Instructions

So far, this is a simple single page app that lists the current Eastenders characters. Follow the instructions below to add new features.

##### 🕵️‍♀️ 1. Filter by character or actor

- When a user starts typing, the array of characters on the homepage should filter depending on the value in the search bar
- The character array should reset to it's original value (empty), if the text in the search bar has been deleted
- There should be an error message displayed if no results could be matched

##### 📝 2. Update a characters bio

There's also an empty text column in the database called `bio`

- Create a GraphQL **mutation** that will allow you to write data in the `bio` column.
- Create a component in the app that will allow you to enter some text (this could be a Modal, or a new page), and make a request (using the `useMutation` hook from `@apollo/client`) to the mutation you created.
- Display the `bio` text underneath each character (You don't have to have a bio for _every_ character).

##### ↕️ 3. Sorting

- Create 2 buttons, `Sort by character name`, and `Sort by actor name`
- Create a click handler for each button, that sorts the characters by their character name, or their actor's name, alphabetically

##### 🎨 4. CSS

- Make the images fade in when the characters first render
- Have a CSS animation trigger when you hover over a character (check out [animate.css](https://daneden.github.io/animate.css/) for some inspiration)
- The app is pretty basic at the moment, you can style it however you'd like!

##### 🟢 5. Accessibility

- The app should get a score of **100** when run through Chrome's [Lighthouse tool](https://developers.google.com/web/tools/lighthouse)
- All interactive elements (buttons, text inputs) should be able to be accessed using the keyboard only (you can test this by tabbing around the app)

##### ⭐️ Extra features

If you have any ideas for new features, feel free to add them in!

> The [Movie Database](https://developers.themoviedb.org/3) is an Open API that allows you to search against TV shows and Actors. One idea could be to display the number of episodes each actor has been in?

## 📬 Delivering your work

Push your work to your forked repo. The BBC will have emailed you with a github account name which you should add as a maintainer so we can see the completed work.
