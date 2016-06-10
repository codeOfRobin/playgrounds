//: Playground - noun: a place where people can play

protocol Printable {
    func description() -> String
}

protocol PrettyPrintable
{
    func prettyDescription() -> String
}

struct User: Printable, PrettyPrintable
{
    let name: String
    let age: Int
    let address: String
    func description() -> String {
        return "\(name) \(age)"
    }
    func prettyDescription() -> String {
        return "\n \(name)\n \(age)"
    }
}

let user = User(name: "Robin", age: 21, address: "none")

print(user.description())

