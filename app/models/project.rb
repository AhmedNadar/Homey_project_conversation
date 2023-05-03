class Project < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy

  enum status: { pending: 0, in_progress: 1, completed: 2, cancelled: 3 }

  validates :title, presence: true
  validates :status, presence: true
end
