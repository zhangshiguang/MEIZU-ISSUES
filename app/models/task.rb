class Task < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :project
  has_many :events, :as => :eventable, :dependent => :destroy
   
  validates_presence_of :name
end