class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
         
  has_attached_file :avatar, :styles => { :medium => "300x300>", :thumb => "300x100>" }, :default_url => ":style/missing.png",
  :storage => :dropbox,
  :dropbox_credentials => Rails.root.join("config/dropbox.yml"),
  :dropbox_options => {}
  validates_attachment_content_type :avatar, :content_type => /\Aimage\/.*\Z/

  has_many :reviews
  has_many :products
  
  validates :firstname, presence: true
  validates :lastname, presence: true
  
end
