class BestFreeWillyJob < ApplicationJob
  queue_as :default

  def perform(*args)
    "puts best free willy movie"
  end
end
