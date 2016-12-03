def create_role(type_of)
  Role.find_or_create_by({type_of: type_of})
end

create_role('student')
create_role('mentor')
create_role('admin')
