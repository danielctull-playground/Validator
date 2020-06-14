
import XCTest
import Validator

final class ValidatorTests: XCTestCase {

    struct Person {
        let name: String
        let age: Int
    }

    func testOne() {

        let person = Person(name: "a", age: 20)
        let validator = Validator<Person>()
            .age { $0 > 18 }
            .age { $0.isMultiple(of: 2) }
            .name { $0.count > 0 }
            .name { $0.contains("a") }

        XCTAssert(validator.validate(person))
    }
}
