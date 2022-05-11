class UpdateUserJob < ApplicationJob
  queue_as :default

  def perform(user_id)
    user = User.find(user_id)
    puts "performing Clearbit Api for #{user.email}"
    sleep 2
    puts "Done with Clearbit call !"
  end
end
