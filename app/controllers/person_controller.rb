require "pics_model"
class PersonController < ApplicationController
  def new
    @person = Person.new
     render :partial => 'new'
  end
end
