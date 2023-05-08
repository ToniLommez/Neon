// Estrutura em Neon
obj Person {
    name: string
    age: int
    height: float
}

// Interface para conversão entre linguagens
obj PersonInterface {
    name: []char
    age: i64
    height: f64
}

// Converter de Neon para C
fn to_person(person: Person) => PersonInterface {
    PersonInterface {
        name: to_c_string(person.name),
        age: to_c_int(person.age),
        height: to_c_float(person.height)
    }
}

// Converter de C para Neon
fn from_person(person_interface: PersonInterface) => Person {
    Person {
        name: from_c_string(person_interface.name),
        age: from_c_int(person_interface.age),
        height: from_c_float(person_interface.height)
    }
}

// Chama uma função em uma DLL externa
fn call_dll(dll_path: string, function_name: string, args: ...) => any {
    // Carrega a DLL
    let dll_handle = load_dll dll_path?

    // Obtém o ponteiro para a função na DLL
    let function_ptr = get_dll_function dll_handle function_name?
  
    // Chama a função na DLL
    let result = call_dll_function_ptr function_ptr, args
  
    // Descarrega a DLL
    unload_dll dll_handle
  
    result
}
