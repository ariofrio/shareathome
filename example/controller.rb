require 'shareathome/controller'

controller = ShareAtHome::Controller.new 'shareathome-example'

# Send 50 tasks with no input
50.times do
  controller.queue.send_message ""
end

