ActiveAdmin.register Fanart do
  active_admin_importable do |model, hash|
    model.create(fanartid: hash[:fanartid], fanarturl: hash[:fanarturl], fanartuser: hash[:fanartuser])
  end

  permit_params :fanartid, :fanarturl, :fanartuser
end