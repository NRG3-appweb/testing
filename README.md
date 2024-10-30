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



>  La formación del archivo.feature deberia de tener un nombre estandar para todos seria CodigoUserStory_Titulo.feature.


BackEnd
```gherkin

Feature: idicar que es lo que haria como develop.  
  Scenario: completar
    Given completar
    When completar
    Then completar.

    |ejm| ejm| 
```
> Aqui se pondria la imagen de las pruebas con postman de las pruebas con la api las cuales se subiran con sus respectivos nombres a la carperta resource.