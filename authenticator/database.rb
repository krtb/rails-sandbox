users = [
    { username: 'kurt', password: 'password1' },
    { username: 'andrea', password: 'password2' },
    { username: 'tim', password: 'password3' },
    { username: 'roberto', password: 'password4' },
    { username: 'maria', password: 'password5' },
]

def auth_user(username, password, list_of_users)

    list_of_users.each do |user_record|
        if user_record[:username] == username && user_record[:password] == password
            return user_record # dont' have to break from method, like when puts-ing
        end
    end
    "Credentials where not correct" # in ruby last return is implied
end
     

puts "Welcome to the authenticator"
25.times { print "_" }
puts
puts "This program takes input from user and compare password."
puts "If password is correct, will puts password."

attempts = 1
while attempts < 4
    print "Username:"
    username = gets.chomp
    print "Password:"
    password = gets.chomp
    authentication = auth_user(username, password, users) # simply calling would not store what getting in return
    puts authentication
    puts "press n to quite or any other keey to continue: "
    input = gets.chomp.downcase 
    if input === "n"
        break
    else
    attempts += 1
    end
end
