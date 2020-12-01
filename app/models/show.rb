class Show < ActiveRecord::Base
  belongs_to :network
  has_many :characters
  has_many :actors, through: :characters

  def actors_list
    #should return array of full names of each actor associated with this instance of show
    self.characters.map {|char| char.actor.full_name}
  end
end