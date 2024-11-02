# Testing Suite Evidence

Plantilla para la documentacion:

### 1. **Unit Test**
* Clase: Indica el nombre de la clase que contiene el método a probar (ej. NombreClase).
* Método: Especifica el nombre del método a probar (ej. metodoClase).

* Comportamiento: Describe lo que hace el método y el comportamiento que se está validando (ej. "Valida si los datos de entrada son correctos").

* Resultado esperado: Explica el resultado que se espera. Por ejemplo: “El método metodoClase lanza una ValidationException cuando se recibe un dato en un formato incorrecto”.

### 2. **Integration Test**
* Componentes: Enumera los métodos y/o módulos que interactúan en la prueba (ej. AuthService.authenticateUser y UserRepository.findUser).

* Escenario: Describe cómo se integran los componentes y el contexto de la prueba (ej. "Validar que AuthService usa correctamente UserRepository para verificar credenciales de usuario").

* Resultado Explica el comportamiento esperado, por ejemplo: "authenticateUser devuelve true cuando los métodos funcionan correctamente con credenciales válidas, y false cuando no lo son".



>  La formación del archivo.feature deberia de tener un nombre estandar para todos seria CodigoUserStory_Titulo.feature. Condicion.feature.


BackEnd
```gherkin
TS001: 
Feature: idicar que es lo que haria como develop. en INGLES.  
  Scenario: completar
    Given completar
    When completar
    Then completar.

    |ejm| ejm| 
```
> Aqui se pondria la imagen de las pruebas con postman de las pruebas con la api las cuales se subiran con sus respectivos nombres a la carperta resource.

## Test Company

### 1. **Unit Test**
* Clase: CompanyQueryService
* Método: GetCompanyByIdQuery.
* Comportamiento: lo que realiza es obtener una compañia por su identificador.
* Resultado esperado:  El método GetCompanyByIdQuery lanza una exception cuando no encuentra la compañia que se esta buscando.
<img src="resource/UnitTestCompany.png" alt="Desarrollo de la test unitaria">
### 2. **Integration Test**
* Componentes: companyRepository.FindCompaniesByCompanyName y companyRepository.AddAsync.

* Escenario: AddAsync usa a FindCompaniesByCompanyName para validar qeu el nombre de la compañia no se repita para poder crear la compañia.

* Resultado: FindCompaniesByCompanyName devuelve una lista de compañias cuando busca el nombre de la compañia que se esta creando, lo cual se almacenara en existingCompany, la cual sera verificada por Any(), la caul retornara true si el nombre de la comapñia existe con el mensaje "The company name already exists" caso contario retornara un false y podra ser creada la compañia.
<img src="resource/IntegrationTestCompany.png" alt="Desarrollo del test Integration">

BackEnd
```gherkin
Feature: As a developer, I want to validate that I can find a company by its identifier and that duplicate companies with the same name cannot be created.

  Scenario: Retrieve a company by ID and handle not found case
    Given a company ID that does not exist in the system
    When I call the GetCompanyByIdQuery with this ID
    Then an exception should be thrown
    And the exception message should indicate that the company was not found

  Scenario: Prevent duplicate company names on creation
    Given a company with the name "Company1" already exists in the system
    When I attempt to create a new company with the name "Company1"
    Then FindCompaniesByCompanyName should return a list of companies matching this name
    And if Any() returns true, an exception should be thrown with the message "The company name already exists"
    And if Any() returns false, the new company should be successfully created

```
