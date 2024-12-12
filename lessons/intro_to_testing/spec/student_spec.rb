# Add the 2 requires you will need here
require "rspec"
require "./lib/student"

# gem rspec to run tests
  # starter tools to test our code


describe Student do
  describe '#initialize' do
    it 'is an instance of student' do
      # write the code to initialize a new student object
      student = Student.new("Penelope")

      expect(student).to be_a(Student)
    end
    # test it has a name
    it "can tell us it's name" do
      student1 = Student.new("Penelope")
      student2 = Student.new("Hannah")
      
      expect(student1.name).to eq("Penelope")
      expect(student2.name).to eq("Hannah")
    end
    
    # test it has cookies
    it "starts with an empty list of cookies" do
      student = Student.new("Penelope")

      expect(student.cookies).to eq([])
    end
  end
  
  describe "instance methods" do
   # test it can add cookies
    it "can add cookies to it's cookie list" do 
      student = Student.new("Penelope")
      
      student.add_cookie('Chocolate Chunk')
      student.add_cookie('Snickerdoodle')

      expect(student.cookies).to eq(["Chocolate Chunk", "Snickerdoodle"])
      expect(student.cookies.length).to eq(2)
   end
  end
end
