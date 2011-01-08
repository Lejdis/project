class Film < ActiveRecord::Base

 has_many :comments, :dependent => :destroy
<<<<<<< HEAD
 validates_associated :comments, :dependent => :destroy

def self.search(query)
=======

     def self.search(query)
>>>>>>> ef25687cb52f2e47778fc37f12bf07aab7e3eb80
  where("(tytul || rezyseria) like ?", "%#{query}%")
end

acts_as_taggable_on :tags
  ActsAsTaggableOn::TagList.delimiter = " "

 has_attached_file :photo, :styles => { :small => "150x150>" },
                  :url  => "/assets/films/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/films/:id/:style/:basename.:extension"

<<<<<<< HEAD
validates_attachment_presence :photo, :message => 'musi zostac dodany'
validates_attachment_size :photo, :less_than => 1.megabytes
validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png'] 

validates_presence_of :tytul, :message => 'musi zostac podany'
validates_format_of :data, :with => /^(19|20)\d\d[-](0[1-9]|1[012])[-](0[1-9]|[12][0-9]|3[01])$/i, :message => 'zla, dobry format to (r-m-d)'

=======
validates_attachment_presence :photo
validates_attachment_size :photo, :less_than => 1.megabytes
validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png'] 

>>>>>>> ef25687cb52f2e47778fc37f12bf07aab7e3eb80
end