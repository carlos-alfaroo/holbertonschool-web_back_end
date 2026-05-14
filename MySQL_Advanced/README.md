# MySQL_Advanced

Este módulo cubre conceptos avanzados de MySQL aplicados al diseño y gestión de bases de datos relacionales para sistemas reales.

## Contenido

| Archivo | Descripción |
|---|---|
| `0-uniq_users.sql` | Creación de tabla con restricción UNIQUE |
| `1-country_users.sql` | Tabla con enumeración de países |
| `2-fans.sql` | Consulta con ORDER BY y agrupamiento |
| `3-glam_rock.sql` | Cálculo de bandas con mayor vida activa |
| `4-store.sql` | Trigger para decrementar inventario |
| `5-valid_email.sql` | Trigger para restablecer flag de validación |
| `6-bonus.sql` | Procedimiento almacenado con INSERT condicional |
| `7-average_score.sql` | Procedimiento para calcular promedio de calificaciones |
| `8-index_my_names.sql` | Índice sobre columna de nombres |
| `9-index_name_score.sql` | Índice compuesto sobre nombre y puntuación |
| `10-div.sql` | Función SQL para división segura |
| `11-need_meeting.sql` | Vista para filtrar estudiantes que necesitan tutoría |

## Requisitos

- MySQL 5.7 o superior
- Ubuntu 18.04 LTS
- Los archivos SQL deben ejecutarse directamente en el cliente MySQL

## Uso general

```bash
$ cat nombre_archivo.sql | mysql -uroot -p nombre_base_de_datos
```

## Conceptos cubiertos

- Restricciones (constraints): `UNIQUE`, `NOT NULL`, `ENUM`, `ON DELETE CASCADE`
- Índices simples y compuestos para optimización de consultas
- Vistas (`VIEW`) para simplificar consultas complejas
- Procedimientos almacenados (`STORED PROCEDURE`) con lógica condicional
- Disparadores (`TRIGGER`) para mantener la integridad de los datos
- Funciones personalizadas (`FUNCTION`) seguras ante errores
