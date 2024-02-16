Clear-Host

$mensaxeDespedida = "Ata Logo!"

function menu {
    Write-Output "------ CALCULADORA ------"
    Write-Output "1. Sumar"
    Write-Output "2. Restar"
    Write-Output "3. Multiplicar"
    Write-Output "4. Dividir"
    Write-Output "5. Salir"
    Write-Output "---------------------------"

    Write-Output "6. Mostrar archivos do directorio actual"
}

function subMenu {
    Write-Output "--- Elixe unha das 2 opci�ns ---"
    Write-Output "a"
    Write-Output "b"
}



function directorioActual {
    $directorioActual = Get-Location
    return $directorioActual
}

function ingresarNumero {
    $n1 = Read-Host "Dime o número 1: "
    $n2 = Read-Host "Dime o número 2: "
    return $n1, $n2
}

function sumar {
    param (
        [int]$n1,
        [int]$n2
    )

    $resultado = $n1 + $n2
    return $resultado
}

function restar {
    param (
        [int]$n1,
        [int]$n2
    )

    $resultado = $n1 - $n2
    return $resultado
}

function multiplicar {
    param (
        [int]$n1,
        [int]$n2
    )

    $resultado = $n1 * $n2
    return $resultado
}

function dividir {
    param (
        [int]$n1,
        [int]$n2
    )

    $resultado = $n1 / $n2
    return $resultado
}

menu

$opcion = Read-Host "Elixe unha opción: "


while($opcion -ne "5" ){

switch ($opcion) {
    "1" {
        $n1, $n2 = ingresarNumero
        $resultado = sumar $n1 $n2
        Write-Output "O resultado da suma: $resultado"
    }

     "2" {
        $n1, $n2 = ingresarNumero
        $resultado = restar $n1 $n2
        Write-Output "O resultado da resta: $resultado"
    }

     "3" {
        $n1, $n2 = ingresarNumero
        $resultado = multiplicar $n1 $n2
        Write-Output "O resultado da multiplicacion: $resultado"
    }

     "4" {
        $n1, $n2 = ingresarNumero
        $resultado = dividir $n1 $n2
        Write-Output "O resultado da division: $resultado"
    }

     "6" {
     directorioActual
     
     }

    }

    Start-Sleep -s 2
    menu
    $opcion = Read-Host "Elixe unha opción: "  
}

 Write-Output $mensaxeDespedida