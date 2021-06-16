ActiveAdmin.register Clip do
  active_admin_importable do |model, hash|
    model.create(clipid: hash[:clipid], cliptitle: hash[:cliptitle], clipurl: hash[:clipurl], clipview: hash[:clipview], clipimg: hash[:clipimg], clippostdate: hash[:clippostdate])
  end

  permit_params :clipid, :cliptitle, :clipview, :clippostdate, :clipurl, :clipimg

end