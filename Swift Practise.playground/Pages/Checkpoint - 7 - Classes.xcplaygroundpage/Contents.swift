import Foundation

class Animal {
    var legs: Int
    
    init(legs: Int) {
        self.legs = legs
    }
}

class Dog: Animal {
    func speak() {
        print("Woof Woof !! Woof Woof")
    }
}

class Corgi: Dog {
    override func speak() {
        print("Corgi Wooh !!")
    }
}

class Poodle: Dog {
    override func speak() {
        print("Poodle Wooh !!")
    }
}

class Cat: Animal {
    let isTame: Bool
    
    init(legs: Int , isTame: Bool) {
        self.isTame = isTame
        super.init(legs: legs)
        print("Hey")
    }
    
    deinit {
        print("Bye")
    }
    
    func speak() {
        print("Meooh Meooh !!")
    }
}

class Persian: Cat {
    override func speak() {
        print("MEEOOOOHHUUUU")
    }
}

class Lion: Cat {
    override func speak() {
        print("ROAAAAAR")
    }
}

let corgi = Corgi(legs: 4)
corgi.speak()

let poodle = Poodle(legs: 4)
poodle.speak()

let persian = Persian(legs: 4, isTame: true)
persian.speak()

let lion = Lion(legs: 4, isTame: false)
lion.speak()

let dog = Dog(legs: 4)
dog.speak()

let cat = Cat(legs: 4, isTame: true)
cat.speak()
