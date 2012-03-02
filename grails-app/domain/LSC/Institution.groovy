package LSC

class Institution {
//static searchable = true must be there for the searchable plugin   
 static searchable = true
 //Institution can have many persons and products
 static hasMany = [persons:Person, products:Product]
 //This changes the ugly id way of showing institution name when on modification, product, person
 String toString(){
         return "${name}"
     }
    static constraints = {
        //specifies the field order
        name(blank:false)
        city(blank:false)
        state(blank:false)
        country(blank:false)
        url(blank:false, url:true)
        factBookUrl(blank:true, url:true)
        dateCreated()
        lastUpdated()
    }
    String name
    String city
    String state
    String country
    String url
    String factBookUrl
    Date  dateCreated //Grails will automatically fill in the value 
    Date  lastUpdated //Grails will automatically fill in the value
}


