# == Schema Information
#
# Table name: movies
#
#  id          :bigint           not null, primary key
#  description :text
#  duration    :integer
#  image       :string
#  title       :string
#  year        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  director_id :integer
#
class Movie < ApplicationRecord

  def director
    id=self.director_id #calling method on a Movie object
    matching_directors=Director.where({:id => id})
    the_director=matching_directors.at(0)
    return the_director
  end

end
