class Article
  include Mongoid::Document
  include Mongoid::Timestamps
  belongs_to :user, foreign_key: :user_id, :class_name => 'User'
  field :title, type: String
  field :description, type: String
  
  validates :title, presence: true
  validates :description, presence: true
  validates :user_id, presence: true
 end

