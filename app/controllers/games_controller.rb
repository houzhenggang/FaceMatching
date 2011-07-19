class GamesController < ApplicationController

  def new
    rand_index = rand(Person.all.length)
    @person = Person.all[rand_index]
    @temp  = (Person.all.map{|p|p.name}).reject{|name| name == @person.name}
    @options = @temp.randomly_pick(3)
   @options << @person.name
   @options = @options.shuffle
  end
  def result
   p"-----------------"
   p params
   @person = Person.find_by_id(params[:person_id])
   @ans = @person.try(:name) == params[:game_answer]
 
  end
end
