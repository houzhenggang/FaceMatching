class Person < ActiveRecord::Base
  has_attached_file :photo,:styles => {:thumb => '100x100',:medium => '300x300'}
  
  def self.option_names(person)
    temp   = Person.all.reject{|p| p.name == person.name || p.gender!=person.gender}
    temp  =  temp.map{|p|p.name}
    options = temp.randomly_pick(3)
    options << person.try(:name)
    options = options.shuffle
    options
  end

end
