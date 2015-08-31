require_relative "automatizer"
puts "May I ask you to specify the name of the project you want to open sir ?"
value = STDIN.gets.chomp
puts "Thanks you, your request is processing"
Automatizer.run_gulp value
Automatizer.run_vim value
Automatizer.root_directory value
