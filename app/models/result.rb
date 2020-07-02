class Result < ApplicationRecord
  mount_uploader :image, ImageUploader
  
  has_many :relations
  has_many :authors, through: :relations, source: :member
  has_many :reverses_of_relationship, class_name: 'Relation', foreign_key: 'member_id'
  has_many :reserch_results, through: :reverses_of_relationship, source: :result
end
