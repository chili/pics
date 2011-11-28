require "pics_model"
class PersonController < ApplicationController
  def new
    @person = Person.new
    @person.xm = "xxxxxxxxxxxxxx"
  end
end
