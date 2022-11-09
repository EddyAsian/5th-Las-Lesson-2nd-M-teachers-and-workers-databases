//
//  DataBase.swift
//  lastLesson
//
//  Created by Eldar on 6/11/22.
//

import Foundation

class DataBase{
    private var arrayOfHumans: [Human] = []
    
    func addHumanToArray(model: Human){
        arrayOfHumans.append(model)
    }
    
    func dumpArrayOfHumans(){
        dump(self.arrayOfHumans)
    }
 
    
    
    
//    один нюанс как использовать именно в базе human среди других баз и подсчитвать именно в этой базе
//    func countWorkers(){
//        var count = 0
//        for i in array{
//            if i is Human{
//                count += 1
//            }
//        }
//    }
//    возвращаем саму модель массив -> Human
    func findHumanByName(name: String) -> Human{
        var model = Human()
        for i in arrayOfHumans{
            if i.getName() == name{
                model = i
            }
        }
        //        if model.getName() == ""{
        //            print("No model found")
        //            return Human()
        //        }else{
        //            return model
        //        }
        
        return model
    }
    
    
    
    func findHumanByAge(age: Int) -> Human{
        var model = Human()
        for i in arrayOfHumans{
            if i.getAge() == age{
                model = i
            }
      }
        
    
        return model
    }
    
    
    func findHumanByLocation(location: String) -> Human {
        var model = Human()
        for i in arrayOfHumans {
            if i.getLocation() == location {
                model = i
            }
        }
        return model
    }
}


