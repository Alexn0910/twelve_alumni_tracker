### https://twelvealumni.herokuapp.com/admins/sign_in

## How to Execute
Run the following commands in the root project directory:
`rails db:migrate:reset`
`rails db:seed`
`rails s`
This will run a local server of the web app.

## How to Deploy Code to Heroku
In the root project directory, run the following commands:
`heroku login` and log in to Heroku via the browser
`git push heroku master` to push the master branch code to the production app.

## CI/CD Process
When developing code, you cannot make changes directly to the master branch. So development will happen on separate branches. These branches can then be pulled into master with a pull request. These pull requests will only be merged once a member of the collaboration team approves the changes in a code review. After all automated tests are passed and approval is given, then the code changes can be pushed to master.

i made a change to the branch directly from master