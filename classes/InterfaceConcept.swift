protocol MyProtocol{
    func doSomething()
    func doAnotherThing()
    func calculateSum(_ a:Int,_ b:Int)->Int
}
class MyClass:MyProtocol{
    func doSomething(){
        print("Doing something...")
    }
    func doAnotherThing(){
        print("Doing Another Thing...")
    }
    func calculateSum(_ a:Int,_ b:Int)->Int{
        return a+b
    }
    //swift dont need override in protocols
    //but is required in case of overriding a method of a class
}
var myObj=MyClass()
myObj.doSomething()
myObj.doAnotherThing()
print(myObj.calculateSum(5,10))