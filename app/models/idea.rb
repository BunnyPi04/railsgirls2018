class Idea < ApplicationRecord
    mount_uploader :picture, PictureUploader
    has_many :comments
    has_many :claps
end
