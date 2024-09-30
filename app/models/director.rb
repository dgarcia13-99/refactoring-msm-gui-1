# == Schema Information
#
# Table name: directors
#
#  id         :bigint           not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Director < ApplicationRecord

  def filmography
    director_id=self.id
    films=Movie.where(:director_id => director_id)
    return films
  end

  def time_ago_in_words(self)
    year=self.parse.year
    current_year=Time.now.year
    difference= current_year - year 
    return "about #{difference}"
  end

end
