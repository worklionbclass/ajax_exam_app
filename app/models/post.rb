class Post < ApplicationRecord
    # dependent 필수
    has_many :likes, dependent: :destroy
    has_many :liked_users, through: :likes, source: :user
    
    # dependent 필수
    has_many :comments, dependent: :destroy
end
