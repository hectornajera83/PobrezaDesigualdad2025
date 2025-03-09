cd "C:\Users\PUED-UNAM\Dropbox\Clase Desigualdad y Pobreza\Clases\Ejercicio Movilidad Social"

use "base_final.dta", clear
**Exploración de la base
codebook
list in 1/10

//TABLA DE MOVILIDAD DE RECURSOS	
***Comparación de quintiles hogar origen y hogar destino

tab quintil_or quintil_des [aw=factor], matcell(freq1) matrow(names1) matcol(names2)

* Crear un archivo de Excel y exportar las tabla
putexcel set "tabla_quintiles.xlsx", replace

* Exportar la tabla
putexcel A1 = "Tabla 1: quintilp vs quintilent"
putexcel A2 = matrix(names1), names
putexcel B2 = matrix(names2), names
putexcel B3 = matrix(freq1)

//TABLA DE MOVILIDAD OCUPACIONAL
***Comparación de clases entre padres y entrevistados
* Generar las tablas
tab clasep clasent [aw=factor], matcell(freq1) matrow(names1) matcol(names2)
tab clasem clasent [aw=factor], matcell(freq2) matrow(names3) matcol(names4)

* Crear un archivo de Excel y exportar las tablas
putexcel set "tablas_ocupacion.xlsx", replace

* Exportar la primera tabla
putexcel A1 = "Tabla 1: clasep vs clasent"
putexcel A2 = matrix(names1), names
putexcel B2 = matrix(names2), names
putexcel B3 = matrix(freq1)

* Exportar la segunda tabla
putexcel A20 = "Tabla 2: clasem vs clasent"
putexcel A21 = matrix(names3), names
putexcel B21 = matrix(names4), names
putexcel B22 = matrix(freq2)

//TABLA DE MOVILIDAD EN EDUCACIÓN
***Comparación entre niveles educativos de padres y entrevistados
* Generar las tablas
tab educ_p educ_ent [aw=factor], matcell(freq1) matrow(names1) matcol(names2)
tab educ_m educ_ent [aw=factor], matcell(freq2) matrow(names3) matcol(names4)

* Crear un archivo de Excel y exportar las tablas
putexcel set "tablas_educacion.xlsx", replace

* Exportar la primera tabla
putexcel A1 = "Tabla 1: educp vs educent"
putexcel A2 = matrix(names1), names
putexcel B2 = matrix(names2), names
putexcel B3 = matrix(freq1)

* Exportar la segunda tabla
putexcel A20 = "Tabla 2: educm vs educent"
putexcel A21 = matrix(names3), names
putexcel B21 = matrix(names4), names
putexcel B22 = matrix(freq2)
