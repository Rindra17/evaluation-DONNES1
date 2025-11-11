--1

select Employee.id, Employee.first_name, Employee.last_name from Employee
  left join Team on Employee.id = Team.id_employee
  where Team.id_employee is null;

--2

select Employee.id, Employee.first_name, Employee.last_name from Employee
  where id_leave is null;

--3

select Leave.id as id_conge, Leave.start_date as debut_conge, Leave.end_date as fin_conge,
  Employee.first_name as prenom, Employee.last_name as nom,
  Team.name as equipe
  from Leave
  inner join Employee on leave.id = Employee.id_leave
  left join Team on Employee.id = Team.id_employee;

--4

select contract_type as type_contrat, count(*) as nombre_employes
  from Employee
  group by contract_type;
