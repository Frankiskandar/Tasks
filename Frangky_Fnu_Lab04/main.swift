//
//  main.swift
//  Frangky_Fnu_Lab04
//
//  Created by Fnu Frangky on 11/3/17.
//  Copyright © 2017 Fnu Frangky. All rights reserved.
//
//  Fnu Frangky
//  TUID: 915362898  (tug37915)
//  iOS Programming Lab 04
//  Purpose:
//

import Foundation

let currentDate = Date()

var dateComponents19 = DateComponents()
dateComponents19.year = 2017
dateComponents19.month = 12
dateComponents19.day = 12
dateComponents19.timeZone = TimeZone(abbreviation: "")
dateComponents19.hour = 8
dateComponents19.minute = 20

let userCalendar19 = Calendar.current
let someDateTime19 = userCalendar19.date(from: dateComponents19)

var dateComponents = DateComponents()
dateComponents.year = 2018
dateComponents.month = 7
dateComponents.day = 12
dateComponents.timeZone = TimeZone(abbreviation: "")
dateComponents.hour = 8
dateComponents.minute = 20

let userCalendar = Calendar.current
let someDateTime = userCalendar.date(from: dateComponents)

var task1 = Task(text: "frank", dueDate: currentDate, priority: .medium, completed: false)
var task2 = Task(text: "christ", dueDate: currentDate as Date, priority: .low, completed: true)
var task3 = Task(text: "leo", dueDate: currentDate as Date, priority: .high, completed: true)
var task4 = Task(text: "ronald", dueDate: someDateTime!, priority: .medium, completed: false)
var task5 = Task(text: "King Kong", dueDate: currentDate as Date, priority: .medium, completed: true)

var tasks = TaskList()

//print(task1.toString())

//adding tasks
tasks.add(task1)
tasks.add(task2)
tasks.add(task3)
tasks.add(task4)
tasks.add(task5)

// adding duplicate task
// works
tasks.add(task2)

// print all task
tasks.listTasks()

// remove all completed task
// does not work
//tasks.removeCompletedTasks()

// remove particular task
// works
//tasks.remove(task1)
//tasks.remove(task4)
//// print all task
//tasks.listTasks()

// remove all tasks
// works
//tasks.removeAllTasks()


// returns NSArray of specified priority
//var arrayx  :NSArray = tasks.tasks(priority: .medium) as NSArray
//print(arrayx.count)
//for element in arrayx {
//    print(element)
//}
//print(arrayx[)




// print all task
//works
//tasks.listTasks()

//////////////////////////////
// NSARRAY THING GOES HERE


//var array :NSArray = tasks.completeTasks() as NSArray
//print(array.count)
//print(array)

//var array = NSArray()
//print(tasks.completeTasks().count)
//print(tasks.incompleteTasks().count)



//NSDATE STUFF
//var arrayx  :NSArray = tasks.pastDueTasks() as NSArray
//print(arrayx.count)
//for element in arrayx {
//    print(element)
//}

var arrayx  :NSArray = tasks.tasksBetween(currentDate, and: someDateTime19!) as NSArray
print(arrayx.count)
for element in arrayx {
    print(element)
}


