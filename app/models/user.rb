class User < ApplicationRecord
   has_secure_password
   
   
   
   before_save do 
      self.email = email.downcase 
   end
    
end