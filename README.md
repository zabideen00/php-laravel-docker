
<p  align="center"><a  href="https://laravel.com"  target="_blank"><img  src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg"  width="400"></a></p>

  

  

<p align="center">
<a  href="https://travis-ci.org/laravel/framework"><img  src="https://travis-ci.org/laravel/framework.svg"  alt="Build Status"></a>
<a  href="https://packagist.org/packages/laravel/framework"><img  src="https://img.shields.io/packagist/dt/laravel/framework"  alt="Total Downloads"></a>
<a  href="https://packagist.org/packages/laravel/framework"><img  src="https://img.shields.io/packagist/v/laravel/framework"  alt="Latest Stable Version"></a>
<a  href="https://packagist.org/packages/laravel/framework"><img  src="https://img.shields.io/packagist/l/laravel/framework"  alt="License"></a>
</p>

  
  

# Contents

- [Overview](##overview)

- [Pre-requisites](##pre-requisites)

- [Setup for development](###development-setup)

- [Setup for production](###production-setup)

  

## Overview

This repository contains Dockerfile and docker-compose.yml files for both development and production environments for PHP 8 Laravel project.

  

When you run Laravel project in development environment, you do not need to build docker image every time you make changes to your code. Changes to your code automatically reflect in the dockerized environment.

  

For production environment, you need to build the image first and then the docker container is created from freshly created docker image.

  

## Pre-requisites

You need following packages installed to run the PHP Laravel project in containerized environment

  

- [Docker](https://docs.docker.com/engine/install/) and [docker-compose](https://docs.docker.com/compose/install/) installed on your system

- You do not need to install PHP or composer on your system

  

### Development setup

* Create a `.env` file in the root of the project and pass all the environment variables

* Run `./local-deploy.sh` command in the root of the project

* Access application here [http://localhost:3000](http://localhost:3000)

* Everytime you make a change to `composer.json`, you need to run `./local-deploy.sh` command

* Everytime you make a change to `Dockerfile.local`, you need to run `./local-deploy.sh --build` command

### Production setup

* create a `.env` file and pass all the environment variables there

* build docker image using following command

```docker build -t php-app .```

* run following command to start app

```docker-compose up -d```

* access the application here [http://localhost:4000](http://localhost:4000)