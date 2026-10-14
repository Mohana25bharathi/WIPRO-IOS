
import Foundation

// 1. Optional variable
var studentName: String? = "Mohana"
var email: String? = nil

print("----- Optional Values -----")
print(studentName as Any)
print(email as Any)

// 2. Nil-coalescing operator
print("\n----- Nil Coalescing -----")


print(studentName ?? "Name not available")
print(email ?? "Email not available")

// 3. Optional binding using if let
print("\n----- If Let -----")

if let name = studentName {
    print("Student Name: \(name)")
} else {
    print("Student name is missing")
}

// 4. Optional binding using guard let
func displayEmail(_ email: String?) {
    guard let validEmail = email else {
        print("Email is not available")
        return
    }

    print("Email: \(validEmail)")
}

print("\n----- Guard Let -----")
displayEmail(email)
displayEmail("mohana@example.com")

// 5. Optional value changed to nil
print("\n----- Optional Check -----")
studentName = nil

if let name = studentName {
    print("Name: \(name)")
} else {
    print("No student name found")
}
