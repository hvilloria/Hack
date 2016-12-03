def create_user(email, password, name, last_name, dni, role)
  User.find_or_create_by({email: email}) do |user|
    user.password = password
    user.name = name
    user.last_name = last_name
    user.dni = dni
    user.role = Role.find_by(type_of: role)
  end
end

create_user('user1@gmail.com', '123456789', 'Daniel', 'Colas', '21657571', 'student')
create_user('user2@gmail.com', '987654321', 'Edkaryd', 'Jimenez', '21437499', 'student')
