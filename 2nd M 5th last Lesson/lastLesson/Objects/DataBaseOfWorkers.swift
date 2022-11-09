
class DataBaseOfWorkers {
    private var arrayOfWorkers: [Worker] = []
    
    
        
    func addWorkerToArrayOfWorkers(model: Worker){
        arrayOfWorkers.append(model)
    }
    
    func dumpArrayOfWorkers(){
        dump(self.arrayOfWorkers)
    }
    
    
    func findWorkerBySalary(salary: Int) -> Worker{
        var model = Worker()
        for i in arrayOfWorkers{
            if i.getSalary() == salary{
                model = i
            }
        }
        return model
    }
    
    func findWorkerByOrganization(organization: String) -> Worker {
        var model = Worker()
        for i in arrayOfWorkers {
            if i.getOrganization() == organization {
                model = i
            }
        }
        return model
    }
    
    func findWorkerByAppointment(appointment: String) -> Worker {
        var model = Worker()
        for i in arrayOfWorkers {
            if i.getAppointment() == appointment {
                model = i
            }
        }
        return model
    }
    
    func countWorkers () -> Int{
        var numberWorker = 0
        for (index,item) in arrayOfWorkers.enumerated() {
            numberWorker += 1
            
        }
        return numberWorker
    }
}


