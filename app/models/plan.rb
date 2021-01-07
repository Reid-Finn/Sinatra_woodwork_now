class Plan < ActiveRecord::Base
    belongs_to :user
    validates_presence_of :title, :instructions
end