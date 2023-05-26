obj Dog {
    name: string

    fn speak() => string {
        return "Bark!"
    }
}

fn makeItSpeak(s Speaker) {
    print s.speak()
}

trait Speaker {
    fn speak() => string
}

fn main() {
    let! d Dog
    d.name = "Rover"
    makeItSpeak(d)
}