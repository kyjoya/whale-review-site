class AutoFreeJob < ApplicationJob
  queue_as :default

  def perform(*args)
    "puts Free Willy"
  end
end
