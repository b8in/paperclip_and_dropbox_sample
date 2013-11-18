class Image < ActiveRecord::Base
  attr_accessible :title, :picture
  has_attached_file :picture, :styles => { :thumb => "100x100>" },# :default_url => "/images/:style/missing.png"
    :storage => :dropbox,
    :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
    :path => "pictures/:style/:id_:filename"
end
