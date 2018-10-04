require_relative('../db/sql_runner.rb')
require('pry')


class Student

  attr_reader :idea
  attr_accessor :f_name, :l_name, :house, :age

  def initialize(options)
    @id = options['id'].to_i
    @f_name = options['f_name']
    @l_name = options['l_name']
    @house = options['house']
    @age = options['age'].to_i

  end

  def save()
    sql = "INSERT INTO students
    (
      f_name,
      l_name,
      house,
      age
    )
    VALUES(
      $1, $2, $3, $4
    )
    RETURNING *"
    values = [@f_name, @l_name, @house, @age ]
    student_data = SqlRunner.run(sql, values)
    @id = student_data.first()['id'].to_i
  end

  def self.all()
    sql = " SELECT * FROM students"
    students = SqlRunner.run(sql)
    result = students.map { |student| Student.new(student) }
# binding.pry
    return result
  end

  def self.delete_all()
    sql = "DELETE FROM students;"
    SqlRunner.run(sql)
  end

  def self.find(id)

    sql = "SELECT * FROM students WHERE id = $1"

    values = [id]

    student = SqlRunner.run(sql, values)
    # binding.pry
    result = Student.new(student.first)

    return result
  end

end
