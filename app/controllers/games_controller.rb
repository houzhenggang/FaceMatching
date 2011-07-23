class GamesController < ApplicationController

  def new
    rand_index = rand(Person.all.length)
    @person = Person.all[rand_index]
    @options = Person.option_names(@person)
  end

  def result
   @person = Person.find_by_id(params[:person_id])
   @ans = @person.try(:name) == params[:game_answer]
   respond_to do |format|
    format.js do
      render :inline => {:ans => @ans}.to_json
    end
   end
  end
end
