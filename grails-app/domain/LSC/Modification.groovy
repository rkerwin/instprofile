package LSC

class Modification {

   //Modifications belong to products and institutions
static belongsTo = [product:Product, institution:Institution]
String toString(){
         return "${modName}"
     }
    static constraints = {
         modName(blank:false)
         modDesc(blank:false)
         activeInd(inList:["Y", "N"])
         dateCreated()
         lastUpdated()
    }
    String modName
    String modDesc
    String activeInd
    Date  dateCreated 
    Date  lastUpdated
}
