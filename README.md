# RetailPro - Proyecto de Análisis de Datos

## Descripción

RetailPro es un proyecto de análisis de datos orientado al análisis de ventas. El objetivo es estudiar la evolución y variación de las ventas e identificar qué productos y clientes tienen mayor incidencia en los resultados, generando información útil para la toma de decisiones comerciales.

El proyecto integra distintas etapas del proceso analítico, desde la creación y consulta de una base de datos hasta la limpieza, transformación, modelado y análisis de la información.

## Herramientas utilizadas

- SQL Server
- SQL Server Management Studio (SSMS)
- Power Query
- Power BI
- DAX
- GitHub

## Estructura del proyecto

El repositorio contiene los archivos desarrollados durante las distintas etapas de RetailPro.

Entre los principales scripts SQL se encuentran:

- `m3_ventas_tech_db.sql`: creación y carga inicial de la base de datos.
- `m4_consultas_negocio.sql`: consultas SQL orientadas al análisis de negocio.
- `m5_consultas_joins.sql`: consultas que utilizan JOIN para integrar información de distintas tablas.

También se incluyen archivos de Power BI correspondientes a las etapas de limpieza y transformación mediante Power Query, modelado de datos y creación de medidas DAX.

## Ejecución de los scripts SQL

Para ejecutar el proyecto en SQL Server:

1. Abrir SQL Server Management Studio (SSMS).
2. Conectarse a una instancia de SQL Server.
3. Ejecutar primero `m3_ventas_tech_db.sql` para crear y cargar la base de datos `Ventas_Tech_DB`.
4. Verificar que la base de datos haya sido creada correctamente.
5. Ejecutar `m4_consultas_negocio.sql` para obtener los análisis de negocio.
6. Ejecutar `m5_consultas_joins.sql` para consultar información integrada de las diferentes tablas.
7. Revisar los resultados obtenidos en cada consulta.

## Flujo general del proyecto

El proyecto sigue el siguiente flujo de trabajo:

1. Creación y estructuración de la base de datos.
2. Desarrollo de consultas SQL para responder preguntas de negocio.
3. Uso de JOIN para integrar información de clientes, productos, categorías y ventas.
4. Limpieza y transformación de datos mediante Power Query.
5. Modelado de datos en Power BI.
6. Creación y validación de medidas DAX.
7. Análisis de los resultados para apoyar la toma de decisiones.

## Autor

Proyecto desarrollado como parte de un proceso de formación en análisis de datos.
