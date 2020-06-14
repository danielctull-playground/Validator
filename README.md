# Validator

A potentially silly type to hold validations of other types. 

``` swift
struct Person {
    let name: String
    let age: Int
}

let validator = Validator<Person>()
    .age { $0 > 18 }
    .age { $0.isMultiple(of: 5) }
    .name { $0.count > 0 }
    .name { $0.contains("a") }
    
validator.validate(Person(name: "Daniel", age: 35)) // True
validator.validate(Person(name: "Daniel", age: 15)) // False
validator.validate(Person(name: "Daniel", age: 34)) // False
validator.validate(Person(name: "", age: 35)) // False
validator.validate(Person(name: "Dniel", age: 35)) // False
```
