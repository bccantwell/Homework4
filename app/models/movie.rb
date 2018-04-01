# == Schema Information
#
# Table name: movies
#
#  id           :integer         not null, primary key
#  title        :string
#  rating       :string
#  description  :text
#  release_date :datetime
#  created_at   :datetime        not null
#  updated_at   :datetime        not null
#

class Movie < ActiveRecord::Base
  before_save :capitalize_title
  def capitalize_title
    self.title = self.title.split(/\s+/).map(&:downcase).map(&:capitalize).join(' ')
  end
end
