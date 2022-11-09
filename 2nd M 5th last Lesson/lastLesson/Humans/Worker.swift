class Worker: Human{
    private var organization: String = ""
    private var salary: Int = 0
    private var appointment: String = ""
    
     override init(){
         super.init()
     }
    
    
    
    
    init(name: String, age: Int, location: String, organization: String, salary: Int, appointment: String) {
        self.organization = organization
        self.salary = salary
        self.appointment = appointment
        super.init(name: name, age: age, location: location)
    }
    
    func getNameOfWorker() -> String {
        getName()
    }

    func getSalary()->Int{
        return self.salary
    }
    func getOrganization() -> String {
        return self.organization
    }
    func getAppointment() -> String {
        return self.appointment
    }
}

