require "./lib/student"

RSpec.configure do |config|
     config.formatter = :documentation
    end

RSpec.describe Student do
    describe "Instantiation" do
        it "It instantiates a new stdent" do
    # Setup
        student = Student.new("Sophocles", 1)
    # Execution

    # Assertion
        expect(student).to be_a Student
        end
    end

    describe "#name" do
        it "returns name of student" do

            student = Student.new("Sophocles", 1)
        
            expect(student.name).to eq("Sophocles")
        end
    end
    
    describe "#mod class" do
        it "returns mod of student" do

            student = Student.new("Sophocles", 1)
    
            expect(student.mod).to eq("1")
        end
    end
    
    describe "#skills" do
        it "returns skill of student" do

            student = Student.new("Sophocles", 1)

            expect(student.skills).to eq([])
        end
    end

    describe "#student_response" do
        it "returns skill of student" do

            student = Student.new("Sophocles", 1)

            expect(student.skills).to eq([])
        end
    end
end


