// tipos de erros

// retorno full nil/default para erro
let dll_handle = load_dll dll_path?
    
// retorno para erro com escolha de retorno
let dll_handle = load_dll dll_path? => nil true 23
    
// ação pos erro + retorno
let dll_handle = load_dll dll_path? {
    execucao_de_acao
    => nil true 23
} 

// ação pos erro 
let dll_handle = load_dll dll_path? {
    acao_bizarra_aleatoria
}

// ação pos erro + desempacotamento
let dll_handle = load_dll dll_path? {
    case e
        of e.nilPointer => acao_aleatoria
        of e.fatal => die
    else => sei_la
}
