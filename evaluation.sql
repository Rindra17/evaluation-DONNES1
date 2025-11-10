--1

select Employee.id, Employee.first_name, Employee.last_name from Employee
  left join Team on Employee.id = Team.id_employee
  where Team.id_employee is null;


