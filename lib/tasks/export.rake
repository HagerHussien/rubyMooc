namespace :export do
  desc "Prints users.all in a seeds.rb way."
  task :seeds_format => :environment do
    Users.order(:id).all.each do |user|
      puts "Users.create(#{user.serializable_hash.delete_if {|key, value| ['created_at','updated_at','id'].include?(key)}.to_s.gsub(/[{}]/,'')})"
    end
  end
end