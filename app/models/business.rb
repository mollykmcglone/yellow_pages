class Business < ActiveRecord::Base
  belongs_to :type

  validates :name, :presence => true
end
