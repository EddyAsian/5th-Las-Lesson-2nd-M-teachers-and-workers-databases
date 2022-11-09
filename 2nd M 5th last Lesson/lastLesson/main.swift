import Foundation

// Классы:
//Организация - разные страны либо в одной стране (н-р филиал в россии или кр)

// Склад
//Внутри страны
//Зарубежом

// Службы доставки ( типа DHL, Sdek и др кто занимается этим - установить цену за доставку)
//Международные
//Внутри страны

// Протоколы:
//Способность выполнить доставку зарубеж
//Способность выполнить доставку внутри страны

// Модели:
//Товар который могут поставить эти оранизации
//Клиенты междунар или оптовики или розничные клиенты

//если организация подписана на протокол внутри страны, то она работает только со службой доставки, которая также подписана на протокол внутри страны.  если организация подписана на протокол за рубеж и у нее есть товар который заказал клиент за рубеж то работаем со службой международной доставки . создаем экземпляр класса, потом подготовим массив с клиентами и массив с товарами ( двухмерный массив- а) внутри страны; б) за рубежом и клиенты также внутри страны и за рубежом. по организациям- если например она принадлежит сша, то она может пыполнять доставку внутри страны или международные, смотря на какой протокол она подписана. далее в зависимости от модели если у клиента желаемая страна Турция и наша организация может работать со службой доставки, которая выполняет международные доставки ( подписана на этот протокол) то уже работаем с ней, и если у нашей организации нету способности выполнять международные перевозки то выдаем в консоль: Клиенту рекомендуется сменить службу доставки. также у нас должны быть установлены цены на доставку в зависимости от веса. н-р клиент просит товар в количестве 200 штук, и логика такая: сперва проверяется его наличие на складе ( внутри страны или зарубежом) всего создаем 4 страны: Россия, США, Турция, Кыргызстан. если клиент просит доставить товар в турцию, то смотрим на каком складе есть товары в определенном кол-ве - сколько запрошено клиентом, далее смотрим в какую страну надо(турция) и пишем Такая то цена доставки, наш товар находится на таком то складе. Также могут быть склады, которые принадлежат не только 1 компании а является общим складом (для 2 - 3 организаций). служба доставки работает сама по себе (какая то поставляет международные, какая то внутри страны). В проекте вся логика должна быть в main а все остальное долнжо быть в отдельном swift файле: Классы, Склады, Службы доставки, Протоколы, Модели. В консоль должны быть выведено 5-6 разных кейсов ответов: где то доставка пройдет успешно, где то нужна будет междунарожная доставка, где то товаров не хватит на складе и придется добавить наценку на службу доставки чтобы приаезти часть товаров из другого склада (учитывать вес товара, также поставкв в турцию с 1 кг дешевле поставки в США ха 1 кг товара). протоколы создадим для того чтобы н-р если у нас есть 5 классов и 3 из них подписаны на них а остальные 2 класса не подписаны, то используя полиморфизм мы помещаем в 1 массив только те которые подписаны на какой то протокол (среди многих классов организаций лишь те кто подписан на протокол доставка зарубеж будет учитываться, остальные не подписанные под него передадут заказ дальше другим без выполнения)






// для классов вывод из приватности   private var model: String
//func getModeel() -> String{
//    return self.model
//}
//func setModel(model: String){
//    self.model = model
//
//}
//var car = Car (model: "Audi")
//car.setModel(model: "Mercedes")
//далее если есть приватная функция и надо ее вывести:

class Car{
    private var model: String
    init(model: String) {
        self.model = model
    }
    private func printModel(){
        print("Model changed to \(self.model)")
    }
    func setModel(model: String){
        self.model = model
        printModel()
    }
}
var car = Car(model: "Audi")

car.setModel(model: "Mercedes")









//Добавить базы данных для Рабочих и Учителей
//Добавить разные дополнительные свойства для рабочих и учителей
//Создать новые методы для поиска по разным параметрам
//В конце вывести сколько людей вообщем, сколько рабочих и учителей

//расширим и добавим dataBase н-р worker dataBase, teacher dataBase, св-ва у рабочих компания где они работают, зарплата или др, у учителей предмет который они преподают или др. и создадим методы (поиск рабочих по месту работы, у учителей поиск по предмету)

var dataBase = DataBase()

var human = Human(name: "Adam", age: 16, location: "China")
var secondHuman = Human(name: "Jack", age: 20, location: "USA")
var thirdHuman = Human(name: "Aibek", age: 18, location: "Kyrgyzstan")

dataBase.addHumanToArray(model: human)
dataBase.addHumanToArray(model: secondHuman)
dataBase.addHumanToArray(model: thirdHuman)

//dataBase.dumpArray()
//dump(dataBase.findHuman(name: "Jack"))

var found = dataBase.findHumanByName(name: "Aibek")
var found2 = dataBase.findHumanByAge(age: 20)
var found3 = dataBase.findHumanByName(name: "Sultan")
var found4 = dataBase.findHumanByAge(age: 15)

if found.getName() == ""{
    print("no model found")
}else{
    print("\(found.getName()) - \(found.getAge()). is in array")
}

if found3.getName() == ""{
    print("no model found")
}else{
    print("\(found2.getName()) - \(found2.getAge()). is in array")
}


print("---------------------------")
print("")
print("")



//создадим базу данных работников
var worker = Worker(name: "Anara", age: 18, location: "Bishkek", organization: "BeautySalone", salary: 24000, appointment: "makeup artist")
var worker2 = Worker(name: "Samat", age: 30, location: "Talas", organization: "ElectrocityWorld", salary: 19000, appointment: "engineer")
var worker3 = Worker(name: "Oleg", age: 41, location: "Chuiskaya oblast", organization: "CarService", salary: 42000, appointment: "mechanic")


var dataBaseOfWorkers = DataBaseOfWorkers()

dataBaseOfWorkers.addWorkerToArrayOfWorkers(model: worker)
dataBaseOfWorkers.addWorkerToArrayOfWorkers(model: worker2)
dataBaseOfWorkers.addWorkerToArrayOfWorkers(model: worker3)
dataBaseOfWorkers.dumpArrayOfWorkers()



print("-----------------------------")
print("")


var searchWorkerSalary = dataBaseOfWorkers.findWorkerBySalary(salary: 19000)
var searchWorkerOrganization = dataBaseOfWorkers.findWorkerByOrganization(organization: "BeautySalone")
var searchWorkerAppointment = dataBaseOfWorkers.findWorkerByAppointment(appointment: "mechanic")

if searchWorkerSalary.getSalary() <= 0  {
    print("no worker found, try again another parametres")
}else{
    print(" found: \(searchWorkerSalary.getNameOfWorker()) with salary : \(searchWorkerSalary.getSalary())")
}


if searchWorkerSalary.getOrganization() == ""{
    print("no worker found")
}else{
    print(" found: \(searchWorkerOrganization.getNameOfWorker()) in a Company: ~\(searchWorkerOrganization.getOrganization())~")
}

if searchWorkerAppointment.getAppointment() == ""{
    print("no worker found")
}else{
    print(" found: \(searchWorkerAppointment.getNameOfWorker()) with profession: \(searchWorkerAppointment.getAppointment())")
}


print("-----------------------------")
print("")



////создадим базу данных учителей
var teacher = Teacher(name: "Olga", age: 39, location: "Tokmok", lesson: "Geograрhy", experience: 6)
var teacher2 = Teacher(name: "Dmitrii", age: 41, location: "Naryn", lesson: "Literature", experience: 5)
var teacher3 = Teacher(name: "Ruslan", age: 51, location: "Osh", lesson: "History", experience: 9)
var teacher4 = Teacher(name: "Georgii", age: 51, location: "Belovodsk", lesson: "Math", experience: 11)

var dataBaseofTeachers = DataBaseofTeachers()
dataBaseofTeachers.addTeacherToArray(model: teacher)
dataBaseofTeachers.addTeacherToArray(model: teacher2)
dataBaseofTeachers.addTeacherToArray(model: teacher3)
dataBaseofTeachers.addTeacherToArray(model: teacher4)
dataBaseofTeachers.dumpArrayOfTeachers()


print("-----------------------------")
print("")


var sarchTeacherLesson = dataBaseofTeachers.findTeacherLesson(lesson: "Geograрhy")

if sarchTeacherLesson.getLesson() == ""  {
    print("no teacher found")
}else{
    print("found: \(sarchTeacherLesson.getNameOfTeacher()), lesson: \(sarchTeacherLesson.getLesson())")
}




print("-----------------------------")
print("")



var countWorkersAndTeachers = dataBaseofTeachers.countTeachers() + dataBaseOfWorkers.countWorkers()

print("There are: \(dataBaseOfWorkers.countWorkers()) workers in all companies")
print("There are: \(dataBaseofTeachers.countTeachers()) teachers at the school database")
print("There are: \(countWorkersAndTeachers) people in all databases")
