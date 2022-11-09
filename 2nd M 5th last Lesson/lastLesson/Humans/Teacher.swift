class Teacher: Human{
    
    private var lesson: String = ""
    private var experience: Int = 0
    
    override init(){
        super.init()
    }
    
    
    
    
    init(name: String, age: Int, location: String, lesson:String, experience:Int) {
        self.lesson = lesson
        self.experience = experience
        super.init(name: name, age: age, location: location)
    }
    
    func getNameOfTeacher() -> String {
        getName()
    }

    func getLesson()->String{
        return self.lesson
    }
}

