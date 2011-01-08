class Comment < ActiveRecord::Base
  belongs_to :film

include Gravtastic
  is_gravtastic!

end