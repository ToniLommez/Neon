// Definindo uma função
fn add (x: int, y: int) => int {
    x + y
}

// Função que aceita uma referência mutável
fn inc(x: int!) => int {
    x++
}

// Função que aceita uma referência imutável
fn foo(x: int) => int {
    x
}

fn main {
    // Variavel mutavel
    let! x = 5
    inc x!  // envia x como mutavel
    inc x   // envia x como copia
    
    // Variavel imutavel
    let y = 3
    foo y   // envia y como imutavel
    foo y!  // envia y como mutavel (mas nao faz diferenca)

    // Ternario
    let bigger = if x > y then x else y
    print "Bigger number: {byte}", bigger''

    // Ownership
    let result = add x' y' // x e y estao passando o ownership para result
    print "Result: {bool}" result'' // result tambem sera destruido apos a chamada de print

    // Lambda
    let myLambda = (x: int, y: int) => int, int {
        let doubleX = x * 2
        let doubleY = y * 2
        doubleX, doubleY
    }

    let x, y = myLambda (inc 3) 5
    print "resultado = {}, {}" x y
}
