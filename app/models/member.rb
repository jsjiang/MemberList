
class Member < ActiveRecord::Base
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png",
   :storage => :s3, :bucket => "rails-class", :s3_host_name => "s3-us-west-1.amazonaws.com"
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\Z/
end
