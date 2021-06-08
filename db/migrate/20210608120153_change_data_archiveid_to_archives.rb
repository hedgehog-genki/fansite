class ChangeDataArchiveidToArchives < ActiveRecord::Migration[6.0]
  def change
    change_column :archives, :archiveid, :text
  end
end
