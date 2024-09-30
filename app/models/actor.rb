# == Schema Information
#
# Table name: actors
#
#  id         :bigint           not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Actor < ApplicationRecord

  def characters
    actor_id=self.id
    characters=Character.where({:actor_id => actor_id})
    return characters
  end

  def time_ago_in_words(time)
    year=time.parse.year
    current_year=Time.now.year
    difference= current_year - year 
    return "about #{difference}"
  end
  
end
