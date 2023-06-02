fn main() {
    let x = 5
    let y = 10

    asm(x int, y int) => int {
        mov eax, x
        add eax, y
        ret
    } x, y
}