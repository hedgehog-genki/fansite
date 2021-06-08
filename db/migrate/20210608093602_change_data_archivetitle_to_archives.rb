class ChangeDataArchivetitleToArchives < ActiveRecord::Migration[6.0]
  def change
    change_column :archives, :archivetitle, :text
  end
end
