class Skill < ApplicationRecord
  validates_presence_of :title, :percent_utilized
  
  def set_defaults
    after_initialize :set_defaults
    self.badge ||="http.placeholder.it/250x250"
  end 
end

