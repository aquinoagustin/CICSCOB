# COBOL + CICS Hello World

Este repositorio contiene un ejemplo sencillo de un programa COBOL que se ejecuta en un entorno CICS, mostrando un mensaje **"Hello World"** al usuario.

## 🖥️ Descripción del proyecto

- **Programa:** `CICSCOB`  
- **Transacción:** `ZHW0`  
- **Entorno:** IBM Z (TSO + región CICS proporcionada por IBMZ)  
- **Terminal de pruebas:** 3270  

El objetivo de este proyecto es servir como punto de partida para quienes deseen aprender a desarrollar aplicaciones transaccionales en **COBOL** utilizando **CICS** en mainframes IBM.

## 🚀 Compilación y despliegue

1. **Compilar el programa COBOL**  
   Se debe usar un JCL de compilación estándar que incluya soporte para CICS.  
   
2. **Registrar el programa en CICS**  
   - Definir el programa `CICSCOB` en CICS.  CEDA DEFINE PROGRAM(CICSCOB) 
   - Asociar la transacción `ZHW0` a dicho programa.  CEDA DEFINE TRANSACTION(ZHW0)

*(Estas definiciones pueden realizarse vía CEDA o por recursos predefinidos en el entorno que estés usando)*

## 📖 Código fuente explicado

El código fuente `CICSCOB.cbl` realiza:  
- Inicialización del entorno de ejecución CICS.  
- Uso de la instrucción `EXEC CICS SEND` para mostrar un mensaje en pantalla.  
- Finalización con `EXEC CICS RETURN`.

> Este flujo es común en cualquier aplicación básica de CICS, y sirve como plantilla para programas más complejos.
