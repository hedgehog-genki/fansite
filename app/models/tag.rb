class Tag < ApplicationRecord
  has_many :tag_relations, dependent: :destroy
  has_many :archives, through: :tag_relations
end
