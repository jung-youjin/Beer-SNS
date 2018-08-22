class Brewerypost < ActiveRecord::Base
    mount_uploader :storeimage, ImageUploader
    mount_uploader :menuimage, ImageUploader
    has_and_belongs_to_many :beerdbs
end
