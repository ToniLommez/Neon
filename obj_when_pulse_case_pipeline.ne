obj Person {
    name: string
    age: int
    birthday: date = "10/04/2013"
    can_drink: bool

    fn to_string => string {
        "Name: {}, Age: {}", name, age
    }

    fn age {
        age++
    }

    when new_day {
        if birthday is date.Today {
            age
        }
    }
}

fn main {
    // Objeto
    let! p Person
    
    // Pipeline
    p.name = " alice "
        |> trim
        |> capitalize

    print "Person: {}" p

    // Evento de funcao
    pulse after p.age {
        if age == 18 then p.can_drink = True
    }

    // Disparo de evento - when -
    trigger new_day

    // Free
    p.free

    // Pattern Matching
    let value = 32
    case value
        of int => print "It's integer"
        of nil => print "It's nil"
    else => print "It's unknown"
}
