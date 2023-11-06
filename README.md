# Twitter like Web Applications based on Ruby & Rails 7
This is the project 3 for [CS291A](https://cs291.com/) course at UCSB 2023 Fall. This repo is completed by KAI Team:
* [Kai Han](https://www.linkedin.com/in/kai-han-4b2786224/)
* [Qiming Wu](https://www.linkedin.com/in/qiming-wu-62460b220/)

## Introduction
The app will be a small twitter-like app with the list of users who can create new posts and comment on the existing posts. One user will have many posts, and one post can have many comments. Each comment belongs to the user and the post.

Detailed requirements:
* Navigating to the `/users` endpoint will list all users in your app

* Navigating to the `/users/:id` will show the page with the information about the user with the given id. Returns `404` if the id was not found.

* From the browser, you can create the user

* From the browser, you can update the user

* From the browser, you can delete the user

* There is a validation error for incorrect create or update action

## Steps to Run
1. Make sure to setup the environment of rails [youtube](https://www.youtube.com/watch?v=dB6Xwjxct8Q
).

2. `Git clone` the repo.

3. Open the terminal and run `rails server`. Wait 2 minutes.

4. Go to `http://127.0.0.1:3000/` in your browser.
