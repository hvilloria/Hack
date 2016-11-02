class User < ApplicationRecord

  def searchName(user)
    self.where("name like ?", "%#{user}%")
  end

end
