# == Schema Information
#
# Table name: characters
#
#  id         :bigint           not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  actor_id   :integer
#  movie_id   :integer
#
class Character < ApplicationRecord

  def movies
    #Given Character object, return movie associated with Character object
    movie_id=self.movie_id
    matching_movies=Movie.where({:id => movie_id})
    the_movie=matching_movies.at(0)
    return the_movie

  end
  
end
