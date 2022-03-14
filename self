class Employee:
    def _init__(self, name, l_name, position, year, month, day, new_graduate, ids):
            self.first_name = name
            self.last_name = l_name
            self.position = position
            self.year = year
            self.month = month
            self.day = day
            self.graduate = new_graduate
            self.id = ids


    def print(self):
        print(self.first_name)
        print(self.last_name)
        print(self.position)
        print(self.year)
        print(self.month)
        print(self.day)
        print(self.graduate)
        print(self.id)

    def self_first_name(self, name):
        self.first_name = name

    def self_last_name(self, last_name):
        self.last_name = last_name

    def self_birth_year(self, birth_year):
        self.birth_year = birth_year

    def self_birth_month(self, birth_month):
        self.birth_month = birth_month

    def self_birth_day(self, day):
        self.day = day

    def self_position(self, position):
        self.position = position

    def self_graduated(self, new_graduate):
        self.graduate = new_graduate

    def set_ids(self, ids):
        self.id = ids

    def get_first_name(self):
        return self.first_name

    def get_last_name(self):
        return self.last_name

    def get_birth_year(self):
        return self.birth_year

    def get_birth_month(self):
        return self.birth_month

    def get_birth_day(self):
        return self.day

    def get_position(self):
        return self.position

    def get_graduate(self):
        return self.graduate

    def get_id(self):
        return self.id


def id_func():
        while True:
            id_str = input("Insert ID")
            if id_str.isdigit():
                id_int = int(id_str)
                #self.ids = id_int
                return id_int
            else:
                print("Add numbers")


def first_name_func():
    while True:
        name = str(input("name"))
        if len(name.strip()) > 2:
            return name

def last_name_func():
        while True:
            l_name = str(input("Last name"))
            if len(l_name.strip()) > 2:
                #self.last_name = l_name
                return l_name


def birth_year_func():
        while True:
            birth_year_str = input("Birth Year")
            if birth_year_str.isdigit():
                birth_year = int(birth_year_str)
            if (birth_year >= 1900) and (birth_year <= 2004):
                #self.birth_year= birth_year
                return birth_year
            else:
                print("Years ranging from 1990-2004")


def birth_month_func():
        while True:
            birth_month_str = input("Birth month")
            if birth_month_str.isdigit():
                birth_month = int(birth_month_str)
            if (birth_month >= 1) and (birth_month <= 12):
               # self.birth_month = birth_month
                return birth_month
            else:
                print("Please enter as a number between 1 and 12")


def bday_func():
        while True:
            bday_str = input("Birth Day ")
            if bday_str.isdigit():
                bday = int(bday_str)
            if (bday >= 1) and (bday <= 31):
                #self.day = bday
                return bday
            else:
                print("Please enter as a number between 1 and 31")

def position_func():
        while True:
            position_str = input("Position")
            if len(position_str.strip()) > 2:
                position = str(position_str)
                #self.position = position_str
                return position
            else:
                print("Please enter your position")


def graduate_func():
        answers = ["yes", "no", "Yes", "No"]
        while True:
            graduate_str = input("Have you graduatd?")
            if graduate_str in answers:
               # self.graduate = graduate.str
                return graduate_str
            else:
                print("Please answer 'Yes' or 'No'")


def add_employee():
        ids = id_func()
        first_name = first_name_func()
        last_name = last_name_func()
        bday = bday_func()
        birth_month = birth_month_func()
        birth_year = birth_year_func()
        pos = position_func()
        grad = graduate_func()

        employees = {
            "ID": ids,
            "First name": first_name,
            "Last name": last_name,
            "Birth Year": birth_year,
            "Birth Month": birth_month,
            "Birth Day": bday,
            "Position": pos,
            "University": grad,
    }
        return employees

""""     
        while True:
            employee_dict.append(employee)# update function
            return employee
"""

if __name__ == '__main__':

    """
        print("Select operation.")
        print("1.Add an Employee")
        print("2.Remove employee")
        print("3.Get a list of employees")
        print("4.Retreive employee (By ID)")
        print("5.Update employee data")
        print("6.Quit")
    """


    employees_list = []
    employee_dict = {}
    employee_count = input("How many employees do you wish to add ")

    for index in range(int(employee_count)):

        employee_first_name = input("Please enter first name: ")
        employee_last_name = input("Please enter last name: ")
        employee_birth_year = input("Please enter your birth year: ")
        employee_birth_month = input("Please enter your birth month: ")
        employee_day = input("Please enter your birth day: ")
        employee_position = input("Please enter your position: ")
        employee_graduate = input("Is the employee a graduate? ")
        employee_id = input("Please enter the employees id: ")

        employee = Employee(employee_first_name, employee_last_name, employee_birth_year, employee_birth_month, employee_day, employee_position, employee_graduate, employee_id)

        print(employee)
        employee.print()
        employee_dict[employee_first_name, employee_last_name, employee_birth_year, employee_birth_month,
                            employee_day, employee_position, employee_graduate, employee_id] = employee

        employee.print()
        print(employee)
        employees_list.append(employee)


        print("--------------------------")
       # employees_list.append(add_employee())
       # print(employees_list)
        print("----------------------")


    for employee_key in employee_dict:
        print(employee_key)
        print(employee_dict[employee_key])
        employee_dict[employee_key].print()
        print(employee_dict)
