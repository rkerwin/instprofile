package LSC

class Product {
static belongsTo = [institution:Institution]
static hasMany = [modifications:Modification]
String toString(){
         return "${product}"
     }
    static constraints = {
        product(blank:false)
        productDescription(blank:true)
        activeInd(inList:["Y", "N"])
        dateCreated()
        lastUpdated()
    }
    String product
    String productDescription
    String activeInd
    Date  dateCreated 
    Date  lastUpdated
}
