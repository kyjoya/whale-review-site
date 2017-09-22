class RideJob < ApplicationJob
  queue_as :default

  def perform(*args)
    puts "WeeeeEEeEEeEee we are riding the whale!"
  end
end
