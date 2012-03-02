import LSC.Institution
import LSC.Person
class BootStrap {
    def init = { servletContext ->
        // Check whether the test data already exists.
        if (!Institution.count()) {
            new Institution(name: "University of New Mexico", city: "Albuquerque", state: "NM",
            country: "USA", url: "http://www.unm.edu/", factBookUrl: "http://www.unm.edu/").save(failOnError: true)
            new Institution(name: "Drexel University", city: "Philadelphia", state: "PA",
            country: "USA", url: "http://www.drexel.edu/", factBookUrl: "http://www.drexel.edu/").save(failOnError: true)
            new Institution(name: "Texas Tech University", city: "Lubbock", state: "TX",
            country: "USA", url: "http://www.ttu.edu/", factBookUrl: "http://www.ttu.edu/").save(failOnError: true)
        }
     
    
    def destroy = {
    }
}
}