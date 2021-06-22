class CreateTagRelations < ActiveRecord::Migration[6.0]
  def change
    create_table :tag_relations do |t|
      t.references :tag, foreign_key: true
      t.references :archive, foreign_key: true
      t.timestamps
    end
  end
end
