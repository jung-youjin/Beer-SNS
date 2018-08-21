class Brewerypost < ActiveRecord::Base
    mount_uploader :storeimage, ImageUploader
    mount_uploader :menuimage, ImageUploader
end
