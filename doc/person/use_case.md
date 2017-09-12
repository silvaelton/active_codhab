# Caso de uso módulo :Person

## Módulo
Person
Gestão de pessoas
Módulo desenvolvido para gerenciamento de funcionários da instituição.


## Caso de uso

### Funcionários

Gestão de funcionários da companhia.

```ruby
  tables:   [person_staffs, person_staff_versions]
  models:   [Staff, StaffVersion]
  domain:   [Staff::ManagerStaff]
```  
1. Toda nova atualização de `Staff` deverá ser gravada juntamente em `StaffVersion` para fins de histórico de atualização.
  
2. As atualizações marcadas como `blocked: true` na `Staff`, não deverão atualizar o registro original e sim gerar uma versão na `StaffVersion` com a flag `feedback: true` para que seja feita uma revisão antes da atualização. Se a revisão for aprovada, pegar a versão e atualizar o registro original no `Staff`. Isso ocorrerá em períodos específicos de atualização cadastral dos funcionários.
  
3. A `StaffVersion` guarda um campo do tipo `Jsonb`, este tipo de dado é especifico no uso do PostgreSQL >= 9.4



### Cargos

Gestão de cargos dos funcionários

```ruby
  tables:   [person_jobs]
  models:   [Job]
  domain:   [Staff::ManagerJob]
```  

1. CRUD simples para gestão de cargos.


### Feriados

```ruby
  tables:   [person_jobs]
  models:   [Job]
  domain:   [Staff::ManagerJob]
```  

### Setores

```ruby
  tables:   [person_jobs]
  models:   [Job]
  domain:   [Staff::ManagerJob]
```  

### Tipos de escolaridade

```ruby
  tables:   [person_jobs]
  models:   [Job]
  domain:   [Staff::ManagerJob]
```  

### Férias

```ruby
  tables:   [person_jobs]
  models:   [Job]
  domain:   [Staff::ManagerJob]
```  

### Abonos

```ruby
  tables:   [person_jobs]
  models:   [Job]
  domain:   [Staff::ManagerJob]
```  

### Tipos de contratação

```ruby
  tables:   [person_jobs]
  models:   [Job]
  domain:   [Staff::ManagerJob]
```  

### Emissão de folha de ponto

```ruby
  tables:   [person_jobs]
  models:   [Job]
  domain:   [Staff::ManagerJob]
```  
