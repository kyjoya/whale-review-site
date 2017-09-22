desc "Some Whales 4 U"
task :save => :environment do
  puts "Waiting on the whales..."
  Whale.get_data
  puts "Yay we Freed Willy!"
end
