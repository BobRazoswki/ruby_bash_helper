require_relative "automatizer"
puts "May I ask you to specify the name of the project you want to start sir ?"
value = STDIN.gets.chomp
puts "Thanks you sir, your request is processing"
Automatizer.run_gulp value
Automatizer.run_vim value
Automatizer.root_directory value
