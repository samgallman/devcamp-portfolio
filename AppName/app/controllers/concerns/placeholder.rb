class Skill < ApplicationRecord
  includes Placeholder
  validates_presence_of :title, :percent_utilized

after_initialize set_defaults

  def self.image_generator(height:, width:)
    "http.placeholder.it/#{height}x#{width}"
  end

end
