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
# => Toda nova atualização de `Staff` deverá ser gravada juntamente em `StaffVersion` para fins de histórico de atualização.
  
# => As atualizações marcadas como `blocked: true` na `Staff`, não deverão atualizar o registro original e sim gerar uma versão na `StaffVersion` com a flag `feedback: true` para que seja feita uma revisão antes da atualização. Se a revisão for aprovada, pegar a versão e atualizar o registro original no `Staff`. Isso ocorrerá em períodos específicos de atualização cadastral dos funcionários.
  
# => A `StaffVersion` guarda um campo do tipo `Jsonb`, este tipo de dado é especifico no uso do PostgreSQL >= 9.4




> Cargos

```ruby
  Job
```

> Feriados


```ruby
  Holiday
```

> Setores

```ruby
  Sector
```

> Tipos de escolaridade

```ruby
  EducationType
```

> Férias

```ruby
  Vacation
```

> Abonos

```ruby
  Allowance, AllowanceDate
```

> Tipos de contratação

```ruby
  ContractType
```

> Emissão de folha de ponto

```ruby
  StaffTimeSheet
```
