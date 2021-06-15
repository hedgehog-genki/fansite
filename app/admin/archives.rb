ActiveAdmin.register Archive do
  active_admin_importable do |model, hash|
    model.create(archiveid: hash[:archiveid], archivetitle: hash[:archivetitle], archiveviews: hash[:archiveviews], archivepostdate: hash[:archivepostdate], archiveurl: hash[:archiveurl], archiveimg: hash[:archiveimg])
  end

  permit_params :archiveid, :archivetitle, :archiveviews, :archivepostdate, :archiveurl, :archiveimg
end
