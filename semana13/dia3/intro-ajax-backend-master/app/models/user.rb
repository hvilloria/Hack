class User < ApplicationRecord

  def self.searchName(user)
    @name=self.where("name like ?", "%#{user}%")
  end

end
