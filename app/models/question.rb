class Question < ActiveRecord::Base
  attr_accessible :appears, :conditions, :description, :frequency, :mapping, :required, :role_id, :teaming_stages, :type
has_many :roles
end
