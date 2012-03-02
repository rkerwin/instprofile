package LSC

class Person {
//People belong to institution    
 static belongsTo = [institution:Institution]
 //show the belonging relationship by showing last name
 String toString(){
         return "${lastName}"
     }
        
 static constraints = {
        firstName(blank:true)
        lastName(blank:false, maxSize:50)
        activeInd(inList:["Y", "N"])
        email(email:true)
        dateCreated()
        lastUpdated()
    }

String firstName
String lastName
String activeInd
String email
Date  dateCreated 
Date  lastUpdated
}
