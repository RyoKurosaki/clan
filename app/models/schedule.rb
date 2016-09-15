class Schedule < ActiveRecord::Base
  belongs_to :user, foreign_key: :create_user
end
