class Archive < ApplicationRecord
  has_many :tag_relations, dependent: :destroy
  has_many :tags, through: :tag_relations

  def self.search(search)
    if search != ""
      Archive.where('archivetitle LIKE(?)', "%#{search}%")
    else
      Archive.all
    end
  end
end