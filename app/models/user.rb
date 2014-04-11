class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :channels, foreign_key: 'owner_id'
  has_and_belongs_to_many :joined_channels, class_name: 'Channel'
end
