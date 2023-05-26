fn main {
    loop {
        print "Infinite loop\n"
        break // sai do loop
    }

    loop 50 {
        print "hehe"
    }

    loop 10..50 {
        print "Hehe"
    }

    let! x = 10
    while x > 0 {
        print "Countdown: {}\n", x
        x--
    }

    let! x = 10
    until x < 0 {
        print "Countdown: {}\n", x
        x--
    }

    let! x = 0
    do {
        print "Count: {}\n", x
        x++
    } while x != 10

    let! x = 0
    do {
        print "Count: {}\n", x
        x++
    } until x == 10

    let numbers = [1, 2, 3, 4, 5]
    for let x, n = range numbers {
        print "[{}]: {}\n", x, n
    }

    for let i = 10; i > 0; i /= 2{
        print "{}\n", i
    }

    pulse func_name {
        print "acao executada em um marcador da funcao"
    }

    pulse before func_name {
        print "acao executada antes da funcao, que tem acesso as variaveis"
    }

    pulse after func_name {
        print "acao executada depois da funcao, e tem acesso as variaveis"
    }

    pulse until x < 3 {
        print "O loop so continua quando alguma acao especificada (e assincrona) ocorrer"
    }

    pulse 10 seconds {
        print "mesma coisa do pulse func_name, mas esta preso a funcao nativa de contagem de tempo"
        print "aqui o interessante é que esta função pode ser presa a um contador de click/frames"
        print "mas este deve ser implementado pelo programador"
    }
}