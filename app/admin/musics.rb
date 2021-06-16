ActiveAdmin.register Music do
  active_admin_importable do |model, hash|
    model.create(musicid: hash[:musicid], musictitle: hash[:musictitle], musicauthor: hash[:musicauthor], musicurl: hash[:musicurl], musicimg: hash[:musicimg])
  end

  permit_params :musicid, :musictitle, :musicauthor, :musicurl, :musicimg

end
