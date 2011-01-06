class Film < ActiveRecord::Base

 has_many :comments, :dependent => :destroy

     def self.search(query)
  where("(tytul || rezyseria) like ?", "%#{query}%")
end

acts_as_taggable_on :tags
  ActsAsTaggableOn::TagList.delimiter = " "

 has_attached_file :photo, :styles => { :small => "150x150>" },
                  :url  => "/assets/films/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/films/:id/:style/:basename.:extension"

validates_attachment_presence :photo
validates_attachment_size :photo, :less_than => 1.megabytes
validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png'] 

end