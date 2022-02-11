PASS = "SecreT"
loop do
  puts ">> Please enter your password:"
  break if gets.chomp == PASS
  puts ">> Invalid password!"
end
puts "Welcome"
=begin Recursive way
  def request_pwd(pass)
  puts ">> Please enter your password:"
  return if gets.chomp == pass
  puts ">> Invalid password!"
  request_pwd(pass)
end
pass = "SecreT"
request_pwd(pass)
puts "Welcome"
=end