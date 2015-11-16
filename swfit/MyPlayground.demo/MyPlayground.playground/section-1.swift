// Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

println("hello， playground")

var a="我时变量"
let b="我是常量"

let letInteger :int_fast32_t = 70;
let letDouble :Double = 70.0;
let letString :NSString = "HelloSwift"

//4.转换字符串：String()或\()
let myString = "myInt is "
let myInt = 94
let myString2 = myString + String(myInt)
let myString3="myInt is \(myInt)"


let label = "This is niu"
let width = 50
let labelwidth=label+String(width)

let apples = 3
let oranges = 5
let appleSummary = "I have \(apples) apples."
let fruitSummary = "I have \(apples + oranges) piec es of frui t."


println(">>>>>>>>>>>>>>>>>>")
//5.数组创建与调用
var array = ["one", "two", "three", "four"]
var getTwo=array[1];

//6.数据字典创建与调用
var dictionary=["oneName":"I am one value","twoName":"I am two value"];
var getTowValue=dictionary["twoName"];

//7.for语句
for item in array
{
    var i=item;
}

//8.函数
func getUserName(loginName:String)->String
{
    return"Lily";
}
//9.枚举
enum Week {
    case 星期一
    case 星期二
    case 星期三
    case 星期四
    case 星期五
    case 星期六
    case 星期天
}

//10.Switch语句
var today="星期一"
switch today
    {
        case "星期一":
        println("今天是星期一");
        case "星期二":
        println("今天是星期二");
        default:
        println("不知道今天星期几");
}




//11.类
//class Person :NSObject
//{
//    var userName:String;
//    var userAge=0;
//    //init()
//    {
//        userName="";
//    }
//}
// 
