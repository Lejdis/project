class Film < ActiveRecord::Base
     def self.search(query)
  where("(tytul || rezyseria) like ?", "%#{query}%")
end
end
