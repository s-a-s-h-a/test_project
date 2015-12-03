class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  attr_accessible *attribute_names
   # покищо можеш просто запамятати. даємо доступ, щоб можна було редагувати всі поля

  # один автор може мати багато статей, 
   has_many :articles

   attr_accessible :password, :password_confirmation
end
