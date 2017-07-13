# DPTracker-api
[![Build Status](https://travis-ci.org/dialibah/DPTracker-api.svg?branch=master)](https://travis-ci.org/dialibah/DPTracker-api)
# Dialibah Parcels Tracker [DPT]
This repository contains all documentations and environnement scripts

 This project has two modules :

 * **DPTracker-api:** The java (*springboot based*) application referring to the wep-api
 * **DPTracker-web:** The UI, an Angular 2 application made with webpack, sass and bootstrap

 ## Install modules
 First clone the project DPTracker in your project directory `mkdir dpt && cd dpt`:
```bash
 git clone git@github.com:dialibah/DPTracker.git
 ```
 Then go in the cloned directory `cd DPTracker` and clone all the required modules using `clone-repo.sh`
 ```bash
sudo chmod +x clone-repos.sh    # make it executable
./clone-repos.sh all
```

At this step, you have the two **web** and **api** module in your project directory, working on branch `master`.
 > The `master` branch is exclusively used for production environment. Then, it should be always stable for production
 >
 > The `develop` branch is for integration tasks

## DPTtacker-api

To build and run your DPTracker-api module run these commands :
  ```bash
mvn clean install
mvn spring-boot:run
```

## DPTtacker-web

To build and run your DPTracker-web module run these commands :
  ```bash
  npm install
  npm run watch
```