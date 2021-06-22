class TagRelation < ApplicationRecord
  belongs_to :archive
  belongs_to :tag
end
