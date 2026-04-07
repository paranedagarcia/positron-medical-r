# Positron-medical-R

para gestionar ambientes de desarrollo "renv"

Instalar el paquete `renv`
```r
install.packages("renv")
````
Inicializar el ambiente (solo la primera vez)
```r
renv::restore()
````

Para crear un ambiente nuevo
```r
renv::init()
````
This command creates the renv.lock file, the renv/ library folder, and a project-specific .Rprofile.


**Basic `renv` Workflow in Positron**

Once initialized, use these core commands to manage your environment: 
- `renv::snapshot()`: Saves the current state of your installed packages to the renv.lock file.
- `renv::restore()`: Reinstalls the exact versions of packages recorded in your lockfile (useful when moving to a new machine).
- `renv::status()`: Checks for differences between your lockfile and the packages actually installed in your project. 