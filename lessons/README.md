# Lessons

Here you will find the starter code for many of your lessons. Often, instructors will do code-alongs during lessons, and it can be helpful to follow along and take notes of your own.

Each folder is for a particular lesson and topic. Most of these will contain a README to give further instruction on how to best use these resources. Often, there will also be extra practice not covered during lessons in these folders. This is a great first place to look if you feel you need more practice on a topic.


``` > student = Student.new("Sophocles", 1)
=> #<Student:0x007fa2e9acd738>

student.name
=> "Sophocles"

student.mod
=> "1"

student.skills
=> []

student.say_mod
=> "I'm in Mod 1"

student.learn("testing")

student.skills
=> ["testing"]

student.learn("mocks")

student.skills
=> ["testing", "mocks"]

student.promote

student.say_mod
=> "I'm in Mod 2"
```