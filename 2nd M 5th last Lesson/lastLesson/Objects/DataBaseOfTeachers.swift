//
//  DataBaseOfTeachers.swift
//  lastLesson
//
//  Created on 10/11/22.
//

import Foundation


class DataBaseofTeachers {
    private var arrayOfTeachers: [Teacher] = []
    
    
   
    
    func addTeacherToArray(model: Teacher){
        arrayOfTeachers.append(model)
    }
    
    func dumpArrayOfTeachers(){
        dump(self.arrayOfTeachers)
    }
    
    
    func findTeacherLesson(lesson: String) -> Teacher{
        var model = Teacher()
        for i in arrayOfTeachers{
            if i.getLesson() == lesson{
                model = i
            }
        }
        return model
    }
    
    func countTeachers() -> Int {
        var numberTeacher = 0
        for (index,item) in arrayOfTeachers.enumerated() {
           numberTeacher += 1
            
        }
        return numberTeacher
    }
}


