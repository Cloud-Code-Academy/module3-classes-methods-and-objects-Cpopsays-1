// Use .apex files to store anonymous Apex.
// You can execute anonymous Apex in VS Code by selecting the
//     apex text and running the command:
//     SFDX: Execute Anonymous Apex with Currently Selected Text
// You can also execute the entire file by running the command:
//     SFDX: Execute Anonymous Apex with Editor Contents
public class Person {
        // Declare private two instance variables - (TEXT) name and (Number) age
        private String name;
        private Integer age;
        // Constructor to initialize the name and age
        public Person(String name, Integer age){
            this.name = name;
            this.age = age;
        }
        // Method introduceYourself that returns the details of the person        
        // Return a string in the format "Hello, my name is <name> and I am <age> years old."
        // For example, introduceYourself() should return a string like "Hello, my name is John Doe and I am 28 years old."

        
        public string introduceYourself(){
            return 'Hello, my name is ' +this.name +' and I am ' +this.age +' years old.';
        }
        // Getter method that returns the name of the person
        public String getNameMethod(){
            return name;
        }
        // Getter method that returns the age of the person
        public Integer getAgeMethod(){
            return age;
        }
        // Setter method that sets the name of the person
        //*I do not understand why I needed to add void to this method or if this is correct
        public void setPersonName(String name){
            this.name = name;
        }
        
        // Setter method that sets the age of the person
        //*I do not understand why I needed to add void to this method or if this is correct
        public void setPersonAge(Integer age){
            if (age > 0) {
                this.age = age;
            } else {
                system.debug('Age must be greater than 0');
            }
        }

    }
        List<String> results = new List<String>();
        // Create a new instance of Person class
        // Name the person 'John Doe' and set the age to 28
        Person newPerson = new Person('John Doe', 28);

        // Add the details of the person using the introduceYourself method
        results.add(newPerson.introduceYourself());
        // Get the name of the person using the getter method and add it to the list
        results.add(newPerson.getNameMethod());
        // Get the age of the person using the getter method and add it to the list
        results.add(String.valueOf(newPerson.getAgeMethod()));
        System.debug('%%%% ' +results); 
    
       