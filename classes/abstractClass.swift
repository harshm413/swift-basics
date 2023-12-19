class Vehicle{
    var brand:String=""
    var _model:String=""
    private var __year:Int=0

    init(brand:String,model:String,year:Int){
        self.brand=brand
        self._model=model
        self.__year=year
    }
    func startEngine(){
        print("Error:Implement this method in child class")
    }

    func getInfo()->String{
        return "\(brand) \(_model) \(__year)"
    }
}

class Car:Vehicle{
    private var numberOfDoors:Int=0
    init(brand:String,model:String,year:Int,numberOfDoors:Int){
        super.init(brand:brand,model:model,year:year)
        self.numberOfDoors=numberOfDoors
    }

    override
    func startEngine(){
        print("Car engine started.")
    }

    func getModel(){
        print(_model)
    }
}
 
var myCar=Car(brand:"Toyota",model:"Camry",year:2022,numberOfDoors:4)
myCar.getModel()
print("\(myCar._model)")
print("\(myCar.brand)")
print(myCar.getInfo())
myCar.startEngine()