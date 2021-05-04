### https://twelvealumni.herokuapp.com/admins/sign_in



## How to Execute



The 12AlumniTracker application was written in Ruby on Rails, using a postgresql database on the backend. The project's current Ruby version is 2.7.3 and rails is 6.1.3.1. The following guid can be used to set up a ruby on rails application: 



[Ruby on Rails + Postgreql Tutorial](https://www.ionos.com/digitalguide/server/know-how/use-postgresql-with-ruby-on-rails-on-ubuntu/)



Once the postgresql server has been set up, the gems we use can be installed by running the following commands within the root project directory:



1. `bundle install`

2. `rails db:migrate:reset`

3. `rails db:seed`

4. `rails s`



This will run a local server of the web app.



## How to Deploy Code to Heroku

In order to deploy the code to a Heroku application, you will need a Heroku account. Here is a useful [tutorial](https://devcenter.heroku.com/articles/getting-started-with-rails6) for creating an account, application, and deploying code.



Below is a summary of the steps which you will need to take in order to deploy our code to Heroku (also detailed within the tutorial above):



1. Install Heroku CLI

2. Login to the Heroku CLI

3. Within the root project directory, set the Heroku git remote by typing the following: `heroku git:remote -a `(replacing the app name with 12AlumniTracker)

4. Type `git push heroku master` to commit the code to the heroku git repo and the app will be deployed



## CI/CD Process

Our CI environment is implemented with Github actions. To see these, you can navigate to [.github/workflows](.github/workflows) to view the specific CI workflows. We utilize two separate workflows, one for RSpec testing and another for security running Brakeman. Each are performed on any push or pull request to any branch. They are both carried out on a virtual machine created by Github workflows and the results are emailed to team members after they are completed.



Our CD environment is implemented using Heroku auto deployment which is linked to our GitHub. A tutorial for Heroku CD can be found [here](https://www.heroku.com/continuous-delivery) and Heroku pipelining [here](https://devcenter.heroku.com/articles/pipelines). Our pipeline consists of 3 different apps: staging, deployment, and review. We used staging to host our current app before it was ready to be seen by the customer. Whenever the master branch is updated, the same code is auto deployed to this staging app. Deployment is used as our customer facing application and review was used to submit to the graders.
