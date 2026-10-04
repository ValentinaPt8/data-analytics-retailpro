# RetailPro | Proyecto de Data Analytics

## Descripción
RetailPro es un proyecto de análisis de datos desarrollado a lo largo de diferentes módulos. El proyecto integra diseño de bases de datos, consultas SQL y análisis en Power BI para transformar datos de ventas en información útil para la toma de decisiones.

## Objetivo
Analizar la información comercial de RetailPro para identificar los productos con mayor facturación, los clientes de mayor valor y el comportamiento de las ventas, con el fin de generar información que apoye la toma de decisiones comerciales.

## Herramientas utilizadas
- SQL Server Management Studio (SSMS)
- SQL
- Power BI
- Power Query
- DAX
- GitHub

## Estructura del repositorio
- `Modulo_3`: creación de la base de datos, tablas y carga de datos.
- `Modulo_4`: consultas SQL orientadas al análisis del negocio.
- `Modulo_5`: consultas con JOIN para relacionar la información de las diferentes tablas.
- `Modulo_6`: archivos correspondientes al proceso de análisis y visualización en Power BI.

## Ejecución de los scripts SQL
1. Abrir SQL Server Management Studio (SSMS).
2. Conectarse a una instancia de SQL Server.
3. Abrir el archivo `.sql` correspondiente al módulo que se desea ejecutar.
4. Ejecutar primero el script de creación de la base de datos y las tablas.
5. Verificar que la base de datos y sus registros se hayan creado correctamente.
6. Ejecutar posteriormente las consultas de análisis de los módulos siguientes.

## Principales análisis realizados
Durante el proyecto se desarrollaron consultas para analizar ventas, productos, clientes y categorías. También se utilizaron funciones de agregación, CTE, CASE y JOIN para responder preguntas de negocio y obtener información relevante para el análisis comercial. Entre los resultados obtenidos se identificó que el producto ID 1 concentró aproximadamente el 55,9 % de la facturación total y que el cliente ID 1 fue el cliente recurrente con mayor gasto.

## Visualización y análisis
En Power BI se trabajó la transformación de datos mediante Power Query, el modelado de relaciones, una tabla calendario y medidas DAX para analizar indicadores como ventas totales, ventas acumuladas y comparación con períodos anteriores. Como parte de la validación del modelo, se verificaron las relaciones entre las tablas y el comportamiento de las medidas DAX mediante una matriz de análisis por mes y año.

## Autora
Valentina Piscal
