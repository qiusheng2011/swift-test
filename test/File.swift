//
//  File.swift
//  
//
//  Created by gxz on 16/2/25.
//
//

import Foundation
import UIKit


func  run(){

var emptyString=""

var anotherEmptyString=String()

if emptyString.isEmpty{
   print("Nothing to see here")
}


var variableString="Horse"
variableString+="and carriage"

var constantString="Highlander"
constantString+=" and another Highlander"


for character in "hahahahaha".characters
{
    print(character)
}


let exclemationMark: Character="!"

let catCharacteres:[Character]=["1","2","3"]

let catString=String(catCharacteres)

print(catString)

let  string1="hello"
let string2="three"

var welcome=string1+string2

var  insturction="lookover"

insturction+=string2


welcome.append(exclemationMark)
// welcome



let multiplier=3
let message="\(multiplier) times 2.5 is \(Double(multiplier)*2.5)"


welcome.insert("!",atIndex:welcome.endIndex)


let aabbbb:[String]=[
"Act1 Scene 1:Veroa, A public plcace",
    "Act1 Scene 2:Capulet's mansion",
    "Act1 Scene  3:A room in Capilet's mansion",
    "Act1 Scene 4 :A street outside Capulet's mansion",
    "Act1 Scene 5: The Greet  Hall in Capulet's mansion",
    "Act2 Scene 1: Outside Friar Lawrence's cell",
    "Act2 Scene 2:Capulet's orchard",
    "Act2 Scene 3：Outside Friar Lawrence's cell",
    "Act2 Scene4: A street in Verona",
    "Act2  Scene5: Capulet's mansion",
    "Act2  Scene6:Friar Lawrence's cell"
];




var  act1SceneCount=0
for scene  in aabbbb{
    if scene.hasPrefix("Act1"){
        ++act1SceneCount
    }
    
}

print("three are \(act1SceneCount) scenes in Act 1 ")

var mansionCount=0
var cellCount=0
for scene in aabbbb
{
    if scene.hasSuffix("Capulet's mansion")
    {
        ++mansionCount
    }
    else if scene.hasSuffix("Friar Lawrence's cell"){
        ++cellCount
        
    }
}
print("\(mansionCount) mansion scenes;\(cellCount)cell scenes")

var someInts=[Int]()
print("someInts is of type[Int] with \(someInts.count) items")

// 


var  shoppingList=["Eggs","Milk"]

print("THe shopping lisr contains \(shoppingList.count)items")


if shoppingList.isEmpty{
    print("The shopping list is empty.")
}
else
{
    print("the shopping list is not empty")
}


shoppingList.append("gaoxuzhao")

shoppingList+=["wanghaiyue"]

var firstItem=shoppingList[0]

shoppingList.insert("hahahahaha",atIndex:0)


for index in 1...16
{
    print("\(index) times 5  is \(index*5)")
}

let base=3
let power=10
var answer=10
for  _ in 1...power
{
    answer*=base
}

print("\(base) to the power of \(power) is \(answer)")


for var index=0 ;index<3;++index
{
    print("index is \(index)")
}



func sayHello(personName:String)->String{
    let greeting="hello,"+personName+"!"
    return greeting
}

sayHello("gaoxuzhao")


func sayHelloWorld()->String{
    
    return "hello,world"
}
print(sayHelloWorld())

func sayHelloTo(personName:String,alreadyGreeted:Bool
)->String
{
    if alreadyGreeted
    {
        return sayHelloWorld()
    }
    else
    {
        return sayHello(personName)
        
    }
}



func sayGoodbye(personName:String)->String
{
    return "\(personName)bye bye";
}


func printAndCount(stringToPrint:String)->Int
{
    print(stringToPrint)
    return stringToPrint.characters.count
}

func printWithoutCounting(stringToPrint:String)
{
    printAndCount(stringToPrint)
    
}


printAndCount("hello,world")

func minMax(arrayt:[Int])->(min:Int,max:Int)?{
    
    if arrayt.isEmpty { return nil }
    var currentMin=arrayt[0]
    var currentMax=arrayt[1]
    for value in arrayt
    {
        if value<currentMin
        {
            currentMin=value
        }
        if value>currentMax
        {
            currentMax=value
        }
    }
    
    return (currentMin,currentMax)
    
}


func sayHelloAlgin(to personName:String,say word:String)->String
{
    
    
    return "[@\(personName)]:\(word)"
    
}


sayHelloAlgin(to:"gaoxuzhao",say:"you are best ")

func alignRight(var string:String, totalLength:Int,pad:Character)->String{
    let amountToPad=totalLength-string.characters.count
    if amountToPad<1{
        
        return string
    }
    let padString=String(pad)
    for _ in 1...amountToPad
    {
        string=padString+string
    }
    
    return string

}

let originakString="Hello"
let paddedString=alignRight(originakString,totalLength:10,pad:"-")


func swapTwoInts(inout a:Int,inout _ b:Int)
{
    let temporaryA=a
    a=b
    b=temporaryA
}


func addTwoInts(a: Int, _ b:Int)->Int
{
    return a+b
    
}

func multiplyTwoInts(a:Int,_ b:Int)->Int{
    return a*b
    
}


func printHelloWorld(){
    
    print("helloWorld")
}



var mathFunction:(Int,Int)->Int=addTwoInts

func printMathResult(mathFunction:(Int,Int)->Int,_ a:Int,_ b:Int){
    print("Result:\(mathFunction(a,b))")
}


printMathResult(addTwoInts,3,4)



func chooseStepFunction(backward:Bool)->(Int)->Int
{
    func IntMuliSelf(a:Int)->Int
    {
        return a*a
    }
    let funcMath=IntMuliSelf;

    
    return funcMath
}

var reversed=[1,2,3,4,45,56]

reversed.sort({
    (a:Int,b:Int)->Bool in
    return a>b
})


reversed.sort({s1,s2 in s1>s2})



func makeIncrementor(forIncrement amount:Int)->()->Int{
    var runningTotal=0
    func incrementor()->Int
    {
        runningTotal+=amount
        return runningTotal
    }
    return incrementor
    
}

class  SomeClass{
    
    var x=10
    func doSomeThing()
    {
//        someFunctionWithEscapingClosure{self.x=100}
//        someFunctionWithNoescapeClosure{x=200}
    }
}



let instance=SomeClass()

instance.doSomeThing()


    enum SomeEnumeration:Int{
    case one=1
    case two
    case  three
    case  four
}



let first_=SomeEnumeration(rawValue:2)

struct Resolution {
    var width=0
    var height=0
}

class  VideoMode {
    var resolution=Resolution()
    var interlaced=false
    var framerate=0.0
    var name:String?
}


let someResolution=Resolution()
let someVideoMode=VideoMode()


print("The width of someResolution is \(someResolution.width)")

print("The width of someVideoMode is\(someVideoMode.resolution.width)")



//someVIdeoMode.resolution

    someVideoMode.resolution.width=1280
    
    
    
    
    let vga=Resolution(width:640,height:480)
    
    print("vga:\(vga)")
    
    let hd=Resolution(width:1920,height:1080)
    var cinema=hd
    
    cinema.width=1080
    cinema.height=540
    
    print("hd:\(hd) \n cniema:\(cinema)")
    
    enum CompassPoint{
        case North, South,East,West
    }
    
    var currentDirection=CompassPoint.North
    
    let rememberDirection=currentDirection
    
    currentDirection = .West
    
    
    if rememberDirection == .North {
        print(" The rememberDirection is still .north")
    }
    else
    {
         print("The remember Direction is not .north")
    }
    
    let tenEighty=VideoMode()
    tenEighty.resolution=hd
    tenEighty.interlaced=true
    tenEighty.name="1080i"
    tenEighty.framerate=25.0
    
    let alseTenEighty=tenEighty
    
    alseTenEighty.framerate=30.0
    
    print("tenEighty.framerate is \(tenEighty.framerate)")
    
    // 本页包含内容：
    // 存储属性 、计算属性、属性观察器、全局变量、局部变量、类型属性
    // 属性将特定的值和类、结构体、枚举关联。存储属性存储常量或者变量作为实例的一部分，二计算属性
    // 计算属性可以用于类、结构体和枚举，存储属性只能用于类和结构体
    /*
      存储属性和计算属性通常与特定类型的市里的关联。但是，属性也可以直接作用于类型本身
    这种类型称为类型属性。
    另外，还可以定义属性观察器来监控属性值的变化，以此来触发一个自定义的操作。
    属性观察器可以添加到自己定义的存储属性上，也可以添加到从父类继承的属性上。
    
    存储属性
    简单的来说，一个存储属性就是存储在特定的类或者结构体的实例里的一个常量或者变量
    存储属性可以是变量存储属性，也可以是常量存储属性。
    可以在定义存储属性的时候指定默认值，请参考默认构造器。也可以在构造过程中设置或者修改
    修改存储属性的值，甚至修改常量存储属性的值，请参考构造过程中的常量属性的修改
     下面的例子的定义了一个名为FixedLengthRange 的结构体。 它描述了一个在创建后无法
    修改值域宽度的区间
    */
    struct FixedLengthRange{
        var firstValue: Int
        let length:Int
    }
    var rangeOfTHreeItems=FixedLengthRange(firstValue: 10, length: 200)
    rangeOfTHreeItems.firstValue=1
    
    print("fixedLengthRange:\(rangeOfTHreeItems)")
    /*
     FixedLengthRange 的实例包含一个名为fistValue的变量存储属性和一个名为length的
    常量存储属性。在上面的例子中，length 在创建的实例的时候被初始化，因为他是一个
    常量存储属性，所以之后无法 修改它的值
    常量结构体的存储属性
    
    如果创建了一个结构体的实例并将其赋值给一个变量，则无法修改该实例的任何属性
    即使定义了变量存储属性
    */
     let rangeOfFourItems=FixedLengthRange(firstValue: 0, length: 4)
    
    
    
    /*
    
     因为rangeFOurItems 被声明成了常量（用let 关键字），即使firstValue是一个
    变量属性。
    
    延迟存储属性
    延迟存储属性是指当第一次被调用的时候 才会计算其初始值的属性。 在属性声明前使用lazy
    来标识一个延迟存储属性。
    注意：必须将延迟属性声明成变量（使用关键字var ），因为属性的初始值在实例构造完成之后才会得到。
    而常量属性早构造过程完成之前必须要有初始值，因此无法声明成延迟属性。
    
    延迟属性很有用，当属醒的值依赖于在实例的构造过程结束后才会知道具体值的外部因素
    时，或者当获得属性的初始值需要复杂或者大量计算时，可以只在需要的时候计算它
    
    下面的例子使用了延迟存储属性来避免复杂类中不必要的出事话。 例子中定义了
    DataImporter 和 DataManager 两个类， 下面是部分代码
    
    */
    
    
    class DataImporter{
        // dataImporter 是一个负责将外部文件中的数据导入的类
        // 这个类的初始化会消耗不少时间
        
        var fileName="data.txt"
        
    }
    
    class DataManager{
        lazy var importer=DataImporter()
        var data=[String]()
        
        
    }
    
    
    let  manager=DataManager()
    
    manager.data.append("onedata")
    
    manager.data.append("two")
    
    
    
    
    /*
     DataManger 类包含一个名为data 的存储属性，初始值是一个空字符串（String ）
    数组。这里没有给出全部的代码只需知道DataManager 类的目的是管理和提供对这个字符串
    数组的访问即可
    
     datamanager的一个功能是从文件导入的数据，该功能有DataImporter 类提供
    ，dataImporter 完成初始化需要消耗不少时间，因为它的实例的在初始化时可能需要打开文件
    ，还要读取文件内容到内存。
    datamanager 管理数据是也不从文件导入数据，所以当datamanger 的实例被创建的时候
    没必要创建一个dataImporter 的实例，更明智的做法是第一次用到dataimporter的时候
    才去创建它
    
    由于使用了lazy， importer 属性只有在第一次被访问的时候才去创建它 
    
    比如访问它的属性fileNam时 
    
    
    
    */
    
     print(manager.importer.fileName)
    
    /*
     注意：如果一个被标记为lazy的属性在没初始化时就同时被多个线程访问，则无法保证该属性只会被初始化一次
    存储属性和实例变量
    如果您有过Objective-c 经验，应该知道Ovjective-c 为类实例存储值和引用两种方法。除了
    属性之外，还可以使用变量作为属性值的后端存储。
    
    swift 编程语言中把这些理论统一用属性来实现。Swift中的属性没有对应的实例
    变量，属性的后端存储也无法直接访问。这就避免了不同场景下访问方式的困扰
    同时也将属性的定义简化成一个语句。属性的全部信息--包括命名、类型、和内存管理特征
    -- 都在唯一一个地方（类型定义中）定义。」
    
    计算属性
    除存储属性外，类、结构体和枚举可以定义计算属性。计算属性不直接存储值而是提供一个getter
    和一个可选的setter，；来间接获取和设置其他属性或者变量的值。
    
    
    
    
    */
    
    struct Point {
        var x=0.0,y=0.0
        
    }
    struct Size{
        
        
        var width=0.0,height=0.0
    }
    
    struct Rect{
     
          var origin=Point()
          var size=Size()
        var center:Point{
            get{
                let centerx=origin.x+(size.width/2)
                let centery=origin.y+(size.height/2)
                return Point(x: centerx, y: centery)
            }
            
            set(newCenter){
                origin.x=newCenter.x-(size.width/2)
                origin.y=newCenter.y-(size.height/2)
                
            }
        }
    }
      
   var square=Rect(origin: Point(x: 0.0, y: 0.0), size:Size(width: 100, height: 200))
    
    let initalSquareCenter=square.center
    print("square.center(x:0 y:0, width:100 height:200 ) is\(initalSquareCenter)" )
    
    square.center=Point(x: 15.0, y: 15.0)
    print(square)
    
    
    
    
    
    /*
      这个例子定义了三个结构体来描述几何形状
    
    Point 封装了一个（x,y）的坐标
    size封装了一个width和一个 height
    
    Rect 表示一个有原点和尺寸的矩形
    
    rect 也提供了一个名为center的计算属性 一个矩形的中心点可以从原点（origin）和尺寸
    （size）算出，所以不需要将它以显示声明的point来保存。Rect的计算属性center提供了自定义dgetter'
    和setter 来获取和设置矩形的中心点，就像他有一个存储属性一样
    
    上述的例子中创建了一个名为square的rect实例，初始值原点是（0，0），宽度和高度都是10
     如下图蓝色正方形所示
    square的center属性可以通过点运算符（square.center）来访问，这会低昂用该属性的get特热来
    获取他的值。跟直接返回已经存在的值不同。getter 实际上通过计算后返回一个新的Point来
    表示square的中心点。如代码所示，他正确返回了中心点（5，5）
    
    
    center属性之后被设置了一个新的值（15，15），表示向右上方移动的正方形如下图橙色正发型所示的位置
    
    设置属性测特热的值会调用他的setter 来修改属性origin 的x 和y的支付从而实现移动
    正方形到新的位置。
    
    便捷的色图特热的声明
    
    如果计算你属性的setter 没有定义表示新值的参数名，则可以默认的名称newValue 
    下面是使用了便捷setter声明的Rect结构体代码
    
    
    */
    struct AlternativeRect{
    
        var origin=Point()
        var size=Size()
        var center:Point {
            
            
            get{
                
                let centerx=origin.x+(size.width/2)
                let centery=origin.y+(size.height/2)
                
                return  Point(x: centerx, y: centery)
            }
            
            set{
                
                origin.x=newValue.x-size.width
                origin.y=newValue.y-size.height
                
                
            }
            
        }
        
    }
    
    
    
    
    
    
    /*
      只读计算属性
    只有getter 没有setter 的计算属性就是只读计算属性。只读计算属性总是返回一个值
    可以通过点运算符访问，但不能设置新的值
    注意：必须使用var 关键字定义计算属性，包括只读计算属性因为它们的值不是固定的
    let 关键字只用来声明常量属性，表示初始化后再也无法修改的值
    
    
    只读计算属性的声明的可以去掉get关键字和花括号：
    
    
    */
    struct Cuboid{
        var width=0.0, height=0.0,depth=0.0
        var volume:Double{
            
            return width*height*depth
        }
    }
    
    
    let fourByFiveBytwo=Cuboid(width: 3, height: 4, depth: 4)
    
     print("fourbyfivebyTwo de 体积是\(fourByFiveBytwo.volume)")
    /*
    
    这个例子定义了一个名为cuboid 的结构体，表示三维空间的立方体，包含width、height和depth
    属性。结构体还有一个名为Volum的只读属性用来返回立方体的体积。为Volum提供setter毫无意义
    因为无法确定如何修改width、height和 Depth 三者的值来匹配新的Volum 然而，Cuboid 
    提供一个只读属性来让外部用户直接获取体积是很有用的。
    属性观察器
    属性观察器监控和响应属性值得变化，每次属性被设置值得时候都会调用属性观察器，甚至新值和
    当前值相同的时候也不例外。
    可以为除了延迟存储属性之外的其他的存储属性添加属性观察器，也可以通过重写属性的方式为继承
    的属性（包括存储属性和计算属性）添加属性观察器，属性重写请参考重写
    
    注意：不需要为非重写的计算属性添加属性观察器
    
    
    可以为属性添加如下的一个或全部观察器：
    willset 在新的值被设置之前调用
    didset 在新的值被设置之后立即调用
    
    willset 观察器会在新的属性值作为常量参数传入，在willset 的实现代码中课哟i为这个参数
    指定一个名称，如果不指定参数仍然课哟ing，这时使用默认newValue 表示 
    
    类似的 didset 观察器会将就旧的属性值作为参数传入，可以未改参数的明明或者使用默认参数明OldVlue
    
    
     
    注意：父类的属性在子类的构造器中被赋值时，它在父类中的willset 和didset 观察器会被调用
    
    有关构造器的代理的更多的信息，请参考置类型的构造器代理和类的构造器代理规则
    
    这里是一个willset 和didset 的实际例子，其中定义了一个名为stepCounter的类，用来统计一个人不行是的
    总数。这个类可以跟记不起或者其他日常锻炼的统计装置的输入数据配合使用 
    
    
    
    */
    
class StepCounter {
    var totalSteps:Int=0
    {
            willSet(newTotalValue){
                
                
                print("即将赋值的新值\(newTotalValue)")
                
            }
            didSet{
                if totalSteps > oldValue
                {
                    
                    
                    print("新值为：\(totalSteps) , 旧值为\(oldValue),差值为：\(totalSteps-oldValue)")
                }
                
                
            }
            
            
    
    }
    
    
}
    
    
    let stepCounter=StepCounter()
    stepCounter.totalSteps=200
    
    stepCounter.totalSteps=360
    
    
    

    
    /*
     StepCounter 类定义了一个Int 类型的属性TotalSteps 他是一个存储属性，
    包含wiilset 和dididset 观察器
    
    当totalSteps 被设置新值的时候，它的willset 和 DidSet 观察器都会被调用，设置新值
    和当前值完全相同时也会被调用
    
    例子中的willset 观察钱将会表示新值的参数自定义New TotalSteps 这个观察器
    知识简单的将新的值输出。
    didset 观察器在totalSteps 的值改变后被调用，它把新值和旧值进行了对比，如果总步数增加爱了
    就输出一个消息表示增加了多少步。didSet 没有为旧值提供自定义名称，所以默认值oldValue 表示
    表示旧值的参数名
    
    如果在一个属性的didSet观察器里为他赋值，这个值会替换之前设置的值
    
    
    全局变量和局部变量「
     计算属性和属性观察器所描述的功能也可以用于全局饿变量和局部变量。全局变量是在
    函数、方法、闭包或者任何类型之外的定义的变量。 局部变量实在函数方法或者闭包内部定义的变量
    前面的章节提到的全局或者局部变量都输存储型变量，跟存储属性类似，他为特定的类型的值提供存储控
    空间
    另外 在全局或者局部范围都可以定义计算型变量和为存储型变量定义观察器。计算型变量
    跟计算属性一样返回一个计算结果而不是存储的值，声明的格式也完全一样
    注意：
     全局的常量或者变量都是延迟计算的，跟延迟存储属性相似，不同的地方在意，全局的常量或变量
    不需要标记lazy 修饰符
    局部范围的常量或变量从不延迟计算
    
    类型属性
    实例属性属于一个特定类型的实例，每创建一个实例，实例都拥有属于自己的一套属性值
    实例之间的属性相互独立。也可以为类型本身定义属性，无论穿件多少个该类型的实例，这些属性
    都只有唯一一份，这种属性就是类型属性
    
    类型属性用于定义某个类型所有的实例共享的数据，比如所有实例都能用的一个厂常量(就像C语言的静态常量
    ）或者所有实例都能访问的一个变量就像c语言的静态变量
    存储型类型属性可以是变量或者常量，计算型类型属性跟市里的计算属性一样只能定义成变量属性
    
    注意：
    跟实例的存储型属性不同，必须给存储型类型属性指定默认值，为类型本身没有构造器，也就无法
    在初始化过程中使用构造器给类型属性赋值
    存储型类型属性是延迟初始化的，它们只有在第一次被放韦德时候才会被初始化，计是他们被多个线程同时访问
    系统也保证只会对其进行一次初始化，并且不需要对其使用lazy修饰符
    
    类型属性语法
    
    在c或者objective-c中，与某个类型关联的静态常量和静态变量，是作为全局静态变量定义的，
    但是在Swift中，类型属性是作为类型定义的一部分写在类型最外层的花括号里面，因此他的
    作用范围也就在类型支持的范围内。
    使用关键字 static 来定义类型属性。 在为类型定义计算类型属性时，可以改用关键字class 
    
    来支持子类对父类的实现进行重写。下面的例子演示了存储型和计算型类型属性的语法
    
    */
    
    struct SomeStructure{
        static var storedTypeProperty="SomeValue"
        static var computedTypeProperty:Int{
            
            return 1
        }
    }
    
    
    enum SomeEnumerationer{
        static var storedTypeProperty="Some value"
        static var computedTypeProterty:Int{
            return 6
        }
    }
    
    
    class SomeClasser{
        static var storedTypeProperty="sonme value"
        static var computedTypeProperty:Int{
            return 107
        }
    }
    
    
    /*
     注意：例子中的计算型类型的属性是只读的，但也可以定义可读可写的计算型类型属性，跟计算型实例属性的语法相同
    获取和设置类型属性的值
    跟实例属性一样，类型属性也是通过点运算符来访问。但是，类型属性是通过类型本身来访问，而不是通过实例
    
    */
    print(SomeStructure.storedTypeProperty)
    
    SomeStructure.storedTypeProperty="ANother value"
    
    print(SomeEnumerationer.storedTypeProperty)
    
    print(SomeEnumerationer.computedTypeProterty )
    
    print(SomeClasser.computedTypeProperty)
    
    
    /*
    
    下面的例子定义了一个结构体，使用两个存储类型属性来表示两个声道的音量，每个声道具有0到10 之间的整数音量
    下面展示了如何把两个声道结合来模拟立体声的音量，当声道的音量0，没有一个灯会亮；当
    当声道的音量是10 ，所有的灯点亮。本图汇总，左声道的音量就是9，右声道的音量是7
    */
    
    struct AudioChannel{
        
        static let thresholdLevel=10
        static var maxInputLevelForAllChannels=0
        
    
     var currentLevel:Int=0{
        didSet{
            if currentLevel > AudioChannel.thresholdLevel
            {
                
                currentLevel=AudioChannel.thresholdLevel
            }
            if currentLevel > AudioChannel.maxInputLevelForAllChannels{
                
                AudioChannel.maxInputLevelForAllChannels=currentLevel
            }
            
        }
        
        
    }
}


/*
  结构AudioChannel定义了2哥存储型类型属性来实现上述功能。第一个是thresholdLevl，表示音量的最大上限阀值，它是一个值为10的常量对所有的实例都可见，如果音量高于10 则取最大上限值10

第二个类型属性是变量存储型属性maxInputLevelForAllchannels，它用来便是所有的AudioChannel 的实例最大音量，初始值是0 
AudioChannel也定义了一个名为currentLevel 的存储型实例属性，表示当前的声道现在的音量，取值为0到10 。 属性currentLevel 包含didiSet 属性观察器来检查每次设置后的属性值，他做如下两个检查。
如果currentLevel的新值大于允许的阀值thresholdLevel，属性观察器currentLevel的值限定为阀值thressholdLevel
如果修正后的currentlevel 的值大于静态类型属性maxInputLevelForAllChannels的值，属性观察器就将新值保存在maxInputLevelAllChannel中、

注意：在第一个检查过程总，didSet 属性观察器将currentLevel设置成了不同的值，但这不会造成属性观察器被再次调用




*/
    class Counter{
        var count=0
        
        
        func increment(){
            
            count++
        }
        
        func incrementBy(amount:Int){
            
            count+=amount
        }
        
        func reset(){
            count=0
        }
    }
    
    
/*
    self 代表实例的本身  当实例方法的某个参数名称和实例的某个属性名称相同的时候，在这种情况下，参数名称享有优先权 ，并且在引用属性时必须使用一个更为严格的方式，这时 你可以使用self 属性系那个来区分参数名称和属性名称。
    在实例方法中修改值类型
*/
    
    struct NewPoint{
      var x=0.0 ,y=0.0
        mutating func moveByX(deltax:Double,y deltaY:Double){
            y+=deltaY
            x+=deltax
            
        }
    
    }
    
    
    var someNewPoint=NewPoint(x: 10, y: 2.0)
    
     someNewPoint.moveByX(10, y: 4.0)
    
    print("someNewPoint:\(someNewPoint)")
    
    
/*
    注意:不能在结构体类型的常量上调用可变方法因为其属性不能被改变，即使其属性为变量属性
*/
    enum TriStateSwitch{
        case off,low,High
        mutating func next(){
            switch self{
            case off:
                self=low
            case low:
                self=High
            default:
                break;
            }
        }
        
        
    }
    
    struct TimesTable{
        let multiplier:Int
        
        subscript(index:Int)->Int
            {
            return multiplier*index
        }
        
    }
    
    
    
    
/*
    
    一个类可以继承另一个类的方法，属性，和其他特性。当一个类继承其他类时，继承类叫子类，被继承的类叫超类。在swift中 继承是区分类与其他类型的基本特征。
    在swfit 中类可以调和和访问超类的方法，属性和下标，并且可以重写这些方法，属性和下标来优化或者修改它们的行为。swift 会检查你的重写的定义在超类中是或否有匹配的定义，以此确保你的重写行为是正确的，
    可以为类中继承来的属性添加属性观察器，这样依赖，当属性值改变时，类就会被通知到。可以为任何属性添加属性观察器。无论他原本被定义为存储型属性，还是计算型属性
    
    定义一个基类 
    不继承于其他类的类称之为基类
    注意:swift 中的类并不是从一个通用的基类继承而来的。如果你不为你的顶一个类指定一个超类的话,这个就自动成基类
    
    
    
*/
    class Vehicle {
        var currentSpeed=0.0
        var descript:String{
            
            return "traveling at \(currentSpeed)"
        }
        func makeNoise(){
            
        }
}
    
    let someVehicle=Vehicle()
    someVehicle.currentSpeed=98
    print(someVehicle.descript)
    class Bicycle:Vehicle{
        var hasBasket=false
    }
    
    let bicycle=Bicycle()
    bicycle.hasBasket=true
    
    bicycle.currentSpeed=15.0
    print(bicycle.descript)
    
    class Tandem:Bicycle{
        
        var currentNumberOfPassengers=0
        
    }
    
    let tandem=Tandem()
    
    tandem.currentNumberOfPassengers=4;
    tandem.hasBasket=true
    tandem.currentSpeed=10.0
    
    print(tandem.descript)
    
    
    
    class TrainTandem{
        
        
        
    }
    
    
    
/*
    构造过程
    存储属性的初值赋值
    自定义构造构造过程
    默认构造器
    值类型的构造器代理
    类的继承和构造过程
    可失败构造器
    必要构造器
    通过闭包或者函数设置属性的默认值
    
    构造过程是使用类，结构体或者枚举类型的实例之前的准备过程。在新实例可用前必须执行这个过程，具体操作包括设置实例中每个存储型属性的初始值和执行其他必须的设置或者初始化工作；
    通过定义构造器来（INitializers）来实现构造过程，这些构造器可以看作是
    用来创建特定类型新实例的特殊方法。与Object-c 中的构造器不同，swift构造器无需返回值，他们的主要任务是保证新势力在第一次使用前完成正确的初始化
    累的实例也可以通过定义析构器（deinitializer）在实例释放之前执行特定的清除工作。
    
    存储舒心的初始赋值 ）
    类和结构体在创建实例时，必须为所有存储属性设置合适的初始值。存储型属性的值不能处于一个未知的状态。
    你可以在构造器中存储型属性赋初值，也可以在定义属性时为期设置默认值。以下小节将详细介绍这两种方法
    注意当你为存储型属性设置默认值或者在构造器为其赋值的时，他们的值是被直接设置的，不会触发任何属性观察者
    
    构造器
    构造器在穿件某个特定类型的新实例时被调用。他的最简形式类似与一个不带任何参数的实例方法，以关键字init 命名
*/
    
    struct Fahrenheit{
        var temperature:Double
        init(){
            temperature=32.0
        }
    }
    
    var f=Fahrenheit()
    print("the default temperature is\(f.temperature) Fahrenheit")
    
    
    
    
    
/*
    默认属性值
    如前所述，你可以在析构器中为存储型属性设置初始值。同样的，你也可以在属性声明时为其设置默认值。
    
    
*/
    struct Celsius{
        
        var temperatureInCelsius:Double
        init(fromFahrenheit fahrenheit:Double)
        {
            temperatureInCelsius=(fahrenheit-32.0)/1.8
        }
        init(fromkelvin kelvin:Double)
        {
            temperatureInCelsius=kelvin-273.150
        }
    }
    let boilingPointOfWater=Celsius(fromFahrenheit: 212.0)
    
    let freezingPoiintOfwater=Celsius(fromkelvin: 273.15)
    
    
    
    
    
    
/*
    
    构造器的继承和重写
    跟Object-c 中的子类的不同，swift 中的子类默认情况下不会继承父类的构造器。swift 的这种机制可以防止一个父类的简单构造器被一个专业的子类继承，
    并被错误第用来创建子类的实例
    
    
    
    
    构造器的自动继承
    
     如上所述，子类在默认的情况下，不会继承父类的构造器。但是如果满足他特定条件，父类构造器是可以被自动继承。在实践中，这意味这对于许多场景常见场景，你不必重写父类累的构造器，并且可以在安全的情况下以最小的代价继承 父类的构造器。
    
    假设你为子类中引入的所有的新属性提供了默认值，以下2个规则适用：
    规则一:
          如果子类没有定义任何制定构造器，他将自动继承所有父类的指定构造器
    规则二
          如果子类提供了所有父类的指定构造器的实现---无论是通过规则1继承过来的还是提供了自定义的实现，他都将自动继承所有父类的便利构造器
    
*/
    
    class Food {
        var name:String
        
        init(name:String){
            self.name=name
        }
        convenience init (){
            self.init(name:"gaoxuzhao")
        }
        
    }
    
    let erha=Food(name: "erha");
    let mysterMeat=Food()
    
    
    class RecioeIngredient:Food{
        
        var quantity:Int
        init(name:String,quantity:Int){
            self.quantity=quantity
            super.init(name: name)
        }
        
        override convenience init(name:String)
        {
            
            self.init(name:name,quantity:1)
            
        }
    
        
    }
    
    
    
    
    class ShoppingListItemObject:RecioeIngredient{
        
        var purchased=false
        var descrption:String{
            
            var output="\(quantity)* \(name)"
            
            output += purchased ? "ok" : "error"
            
             return output
            
        }
        
    }
    
    
    
    
/*
    
    析构器只适用于类类型，当一个类的实例被释放之前，析构器会被立刻调用。析构器用关键字deinit来标示，类似与构造器要用init 来标示
    析构过程原理
    swift 会自动释放不再需要的实例以释放资源。如自动引用计数章节中所述，swift 通过自动引用计数ARC 处理实例的内存管理。通常当你的实例被释放时不需要手动地去清理。但是当使用自己的资源时，你可能需要进行一些额外的清理。例如，如果创建了一个自定义的类来发开一个文件，并写入一些数据，你可能需要在类实例被释放之前手动去关闭该文件。
    
    在类的定义中，每个类最多只能有个析构器，而且析构器不带任何参数，如下所示：
     deinit{
    
    }
析构器恨死在实例释放发生前被自动调用。你不能主动调用析构器并且在子类析构器实现的最后，父类的析构器会被自动调用。即使子类没有提供自己的析构器，父类的析构器也同样会被调用。
    
    
    因为直到实例的析构器被调用后，实例才会被释放，所以析构器可以访问实例的所有属性，并且可以根据那些属性可以修改他们的行为。
    
    析构器实践
    这是一个析构器实践的例子。这个例子描述一个简单的游戏，这里定义了两种新类型，分别是bank 和player。bank 类管理一种虚拟硬币，确保流通的硬币的流通数量永远不可能超过10000 在游戏汇总有且只能有一个bank存在，因此bank用类实现，并使用静态属性和静态方法来存储和管理当前状态
*/
    
    class Bank{
       static var coinsInbank=10_000
        static func vendCoins(var numberOfCoinsToVend:Int)->Int
        {
            
            numberOfCoinsToVend=min(numberOfCoinsToVend,coinsInbank)
             coinsInbank -= numberOfCoinsToVend
            return numberOfCoinsToVend
            
            
        }
        
        static func receiveCoins(coins:Int)
        {
            
            coinsInbank+=coins
        }
    
    
    }
    
    
    class Player{
        
        var coinsInpurse:Int
        init(coins: Int)
        {
            coinsInpurse = Bank.vendCoins(coins)
        }
        
        func winCoins(coins:Int)
        {
            coinsInpurse += Bank.vendCoins(coins)
        }
        
        deinit{
            
             Bank.receiveCoins(coinsInpurse)
            
        }
        
        
    }
    
    
    var playerOne1:Player? = Player(coins: 999)
    
    print("playerOne1's coins is \(playerOne1!.coinsInpurse)")
    
/*
    
    
    无主引用不会牢牢保持住引用的实例。和弱引用不同的是，无主引用是永远有值的
    因此，无主引用总是被定义为非可选类型。你可以在声明属性或者变量时，在前面加上关键字unowned 表示这是一个无主引用。
    由于无主引用是非可选类型，你不需要在使用他的时候将它展开。无主引用总是可以被直接访问。不过ARC 无法在是i了被销毁后将无主引用设为nil，因为非可选类型的变量不允许被赋值为nil
    
*/
/*
*/
/*
*/
/*
*/











}