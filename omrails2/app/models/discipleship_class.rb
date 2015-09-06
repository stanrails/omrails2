class DiscipleshipClass < ActiveRecord::Base
	has_many :users
	default_scope -> { order(created_at: :desc) }
	validates :user_id, presence: true
end
