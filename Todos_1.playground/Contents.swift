/*
ToDos_1.playground

Based on Sessions 1-3 (Basics | DataTypes | Operators, Strings & Characters, Control Flow), create a playground that will manage your todos. You will need to:

Print all your todos (small description)
Print a single todo
Add a todo
Update a todo
Delete a todo
Submit your github repository url

===============
  Sample code
===============
// nested tuple

var records = (
    (id: 1, title: "Record 1", date: "01-31-16", desc: "My first record", assigned: (first: "First", last: "Last")),
    (id: 2, title: "Record 2", date: "01-31-16", desc: "My second record", assigned: (first: "First", last: "Last"))
)

// need nested for loops for each nested tuple

let recordsMirror = Mirror(reflecting: records)
for case let (label?, record) in recordsMirror.children {
    
    print(label)
    
    let recordMirror = Mirror(reflecting: record)
    for case let (label?, tuple) in recordMirror.children {
        
        let tupleMirror = Mirror(reflecting: tuple)
        if tupleMirror.children.count > 0 {
            
            for case let (label?, value) in tupleMirror.children {
                
                print("\t\t\(value)")
            }
        } else {
            print("\t\(tuple)")
        }
    }
}
*/


import Foundation

// nested tuple

var records = (
    (id: 1, title: "Record 1", date: "01-31-16", desc: "My first record", assigned: (first: "First", last: "Last")),
    (id: 2, title: "Record 2", date: "01-31-16", desc: "My second record", assigned: (first: "First", last: "Last")),
    (id: 3, title: "Record 3", date: "01-31-16", desc: "My thirdrecord", assigned: (first: "First", last: "Last")),
    (0,"","","",("","")),
    (0,"","","",("","")),
    (0,"","","",("",""))
)


//Print all your todos (small description)
print ("\nPrinting description of all todos\n")
var recordsMirror = Mirror(reflecting: records)
for case let (label?, record) in recordsMirror.children {
    var id = "", description = ""
    var count = 0
    let recordMirror = Mirror(reflecting: record)
    for case let (label?, tuple) in recordMirror.children {
        count++
        if (count == 1) && (String(tuple) == "0"){
            break
        }
        if count == 1 {
            id = String(tuple)
        }
        if count == 4 {
            description = String(tuple)
            print("TODO: \(id) \tDescription: \(description)")
        }
    }
}


//Print a single todo
print("\nPrinting a single todo\n")
print ("id:\t\t\t\t\t\(records.2.id)")
print ("title:\t\t\t\t\(records.2.title)")
print ("date:\t\t\t\t\(records.2.date)")
print ("desc:\t\t\t\t\(records.2.desc)")
print ("assigned->first:\t\(records.2.assigned.first)")
print ("assigned->last:\t\t\(records.2.assigned.last)")


//Add a todo
print ("\nAdding a todo\n\nBefore add:")
recordsMirror = Mirror(reflecting: records)
for case let (label?, record) in recordsMirror.children {
    var id = "", description = ""
    var count = 0
    let recordMirror = Mirror(reflecting: record)
    for case let (label?, tuple) in recordMirror.children {
        count++
        if (count == 1) && (String(tuple) == "0"){
            break
        }
        if count == 1 {
            id = String(tuple)
        }
        if count == 4 {
            description = String(tuple)
            print("TODO: \(id) \tDescription: \(description)")
        }
    }
}
records.3=(id: 4, title: "Record 2", date: "01-31-16", desc: "My forth record added", assigned: (first: "First", last: "Last"))
print ("After add:")
recordsMirror = Mirror(reflecting: records)
for case let (label?, record) in recordsMirror.children {
    var id = "", description = ""
    var count = 0
    let recordMirror = Mirror(reflecting: record)
    for case let (label?, tuple) in recordMirror.children {
        count++
        if (count == 1) && (String(tuple) == "0"){
            break
        }
        if count == 1 {
            id = String(tuple)
        }
        if count == 4 {
            description = String(tuple)
            print("TODO: \(id) \tDescription: \(description)")
        }
    }
}

//Update a todo
print ("\nUpdating a todo\n\nBefore update:")
recordsMirror = Mirror(reflecting: records)
for case let (label?, record) in recordsMirror.children {
    var id = "", description = ""
    var count = 0
    let recordMirror = Mirror(reflecting: record)
    for case let (label?, tuple) in recordMirror.children {
        count++
        if (count == 1) && (String(tuple) == "0"){
            break
        }
        if count == 1 {
            id = String(tuple)
        }
        if count == 4 {
            description = String(tuple)
            print("TODO: \(id) \tDescription: \(description)")
        }
    }
}
records.1.desc = "My second record updated"
print ("After update:")
recordsMirror = Mirror(reflecting: records)
for case let (label?, record) in recordsMirror.children {
    var id = "", description = ""
    var count = 0
    let recordMirror = Mirror(reflecting: record)
    for case let (label?, tuple) in recordMirror.children {
        count++
        if (count == 1) && (String(tuple) == "0"){
            break
        }
        if count == 1 {
            id = String(tuple)
        }
        if count == 4 {
            description = String(tuple)
            print("TODO: \(id) \tDescription: \(description)")
        }
    }
}

//Delete a todo
print ("\nDeleting a todo\n\nBefore delete:")
recordsMirror = Mirror(reflecting: records)
for case let (label?, record) in recordsMirror.children {
    var id = "", description = ""
    var count = 0
    let recordMirror = Mirror(reflecting: record)
    for case let (label?, tuple) in recordMirror.children {
        count++
        if (count == 1) && (String(tuple) == "0"){
            break
        }
        if count == 1 {
            id = String(tuple)
        }
        if count == 4 {
            description = String(tuple)
            print("TODO: \(id) \tDescription: \(description)")
        }
    }
}
records.1=(0,"","","",("",""))
print ("After delete:")
recordsMirror = Mirror(reflecting: records)
for case let (label?, record) in recordsMirror.children {
    var id = "", description = ""
    var count = 0
    let recordMirror = Mirror(reflecting: record)
    for case let (label?, tuple) in recordMirror.children {
        count++
        if (count == 1) && (String(tuple) == "0"){
            break
        }
        if count == 1 {
            id = String(tuple)
        }
        if count == 4 {
            description = String(tuple)
            print("TODO: \(id) \tDescription: \(description)")
        }
    }
}
