class Employee
  attr_reader :salary

  def initialize(name, title, salary, boss)
    @name = name
    @title = title
    @salary = salary
    @boss = boss
    boss.employees << self unless boss.nil?
  end

  def bonus(multiplier)
    bonus = (@salary) * multiplier
  end
end

class Manager < Employee
  attr_reader :employees

  def initialize(name, title, salary, boss)
    super(name, title, salary, boss)
    @employees = []
  end

  def bonus(multiplier)
    bonus = (2) * multiplier
  end

end


p ned = Manager.new('Ned', 'Founder', '$1,000,000', nil)
p darren = Manager.new('Darren', 'TA Manager', '$78,000', ned)
p david = Employee.new('David', 'TA', '$10,000', darren)
p shawna = Employee.new('Shawna', 'TA', '$12,000', darren)


#
# class Animal
#   attr_reader :species
#
#   def initialize(species= 'homo sapiens')
#     @species = species
#   end
# end
#
# class Human < Animal
#   attr_reader :name
#
#   def initialize(name)
#     # super calls the original definition of the method
#     # If we hadn't passed "Homo Sapiens" to super, then `name` would have
#     # been passed by default.
#     super("the coolest in the world")#("Homo Sapiens")
#     @name = name
#   end
# end
#
# p mo = Human.new("Mo")
