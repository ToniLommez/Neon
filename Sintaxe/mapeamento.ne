fn main {
    // slice
    let! c = [1, 2, 3]

    // tupla 
    let! b = (1, 2, 3) // imutavel

    // encadeado
    let! a = <1, 2, 3> // nil implicito ao final
    let! q = <a, 4>

    let! a = 1 -> 2 -> 3 // aberto para debate
    let! q = a -> 4



    // map
    let! x: |(int, int): float|
    let! y: |int: float|

    // obj
    let w = person{a: 1, b: 2, c: 3}
    let z = person{1, 2, 3}
}