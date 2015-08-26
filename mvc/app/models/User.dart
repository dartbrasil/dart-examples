part of mvc;

class User {
    
    int id;
    String nome;
    int rg;
    String cpf;
    bool ativo;
    
    User(){
        this.ativo = true;
    }
    
    int getId(){
        return this.id;
    }
    
    void setId(id){
        this.id = id;
    }
    
    String getNome(){
        return this.nome;
    }
    
    void setNome(nome){
        this.nome = nome;
    }
    
    int getRg(){
        return this.rg;
    }
    
    void setRg(rg){
        this.rg = rg;
    }
    
    String getCpf(){
        return this.cpf;
    }
    
    void setCpf(cpf){
        this.cpf = cpf;
    }
    
    bool isAtivo(){
        return this.ativo ? 'Sim' : 'Não';
    }
    
    void setAtivo(ativo){
        this.ativo = ativo;
    }
    
    void showInfo() => print("Nome: ${this.nome} \nRG: ${this.rg} \nCPF: ${this.cpf} \nAtivo: ${this.isAtivo()}\n");
}