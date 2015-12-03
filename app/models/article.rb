class Article < ActiveRecord::Base
  attr_accessible *attribute_names	
  
  # одна стаття привязана до 1 автора
  belongs_to :author, class_name: User
  attr_accessible :author

  
  # зробим щоб картинку можна було загрузити
  has_attached_file :avatar
  attr_accessible :avatar
  # має бути помилка. потім покажу
end
