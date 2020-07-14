# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

軟式野球選手データベース 〜あなたが知らない凄い選手を見つけよう〜

class NewplayersController < ApplicationController
  before_action :authenticate_user
  before_action :ensure_correct_user,{only: [:edit, :update, :destroy]}

