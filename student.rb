require_relative 'hash'

class Student

  include Hashing
  attr_accessor :name, :email
  attr_reader :password

  def initialize(name, email, password)
    @name = name
    @email = email
    @password = self.hash_string(password)
  end

end

student = Student.new('Nick', 'nick@webmaster.de', "123456")
puts student.auth("123456")


