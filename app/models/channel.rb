class Channel < ActiveRecord::Base
  belongs_to :owner
  has_and_belongs_to_many :members, class_name: 'User'
end
