<img src="http://www.imperialcreatelab.com/LogoAdjacent.png" width="300" alt="Create Lab Logo">

# Imperial Create Lab Website
***
Imperial Create Lab is a student led innovation community the supports Imperial College London students from ideation through to starting up a business.

This repo is the source code for the **[website](http://www.imperialcreatelab.com)**.

## How to contribute
We love people who would like to help. Feel free to pick up on any of the **[issues](https://github.com/icsaas/createlab/issues)** or get in touch if you would like to take on a bigger feature.

Once you are happy with you contribution please submit a pull request to the relevant branch. Pull request to master will be ignored. Make sure that you do not git commit and environment secrets of keys, this is a public repo!!

Our policy is to fork often and merge early but remember to run the test suite before merging!

## Setting Up
First off grab a copy of the repo and make sure you have ruby 2.0.0 and postgres installed.
Once you have done that run `bundle install` to install all the required gems.
You can setup the database by running `rake db:create` followed by `rake db:schema:load` and finally `rake db:seed` to populate your database with seed data.

Finally run `rails s` to fire up a rails server!

## Environment Variables
Duplicate the `.env.sample` file and name it `.env.development` then either ask one of the maintainers for a set of keys or enter your own.


## Style Guide
This repo will follow the **[GitHub style guide](https://github.com/styleguide)** so please make sure you read it!

##Maintainers
This project is maintained by **[Mark Hammond](https://github.com/mwhammond)**, **[Ben Miles](https://github.com/bmiles)**, **[Nick Davies](https://github.com/nicktdavies)** and **[James Harker](https://github.com/jamesharker)**

##Licence
This repository is made public under the GNU v2 licence detailed in the LICENCE file above.
