class Member < ApplicationRecord
  mount_uploader :image, ImageUploader

  has_many :relations
  has_many :reserch_results, through: :relations, source: :result
  has_many :reverses_of_relationship, class_name: 'Relation', foreign_key: 'result_id'
  has_many :authors, through: :reverses_of_relationship, source: :member

  def make(result)
    self.relations.find_or_create_by(result_id: result.id)
  end
  def make_update(result)
    self.relations.update(result_id: result.id)
  end
end
