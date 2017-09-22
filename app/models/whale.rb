class Whale < ApplicationRecord
  def self.save
    Whale.create(name: "Will 2")
  end

  
end
