function menu {
    Write-Output "------ CALCULADORA ------"
    Write-Output "1. Sumar"
    Write-Output "2. Restar"
    Write-Output "3. Multiplicar"
    Write-Output "4. Dividir"
    Write-Output "5. Salir"
    Write-Output "---------------------------"
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

menu

$opcion = Read-Host "Elixe unha opción: "

switch ($opcion) {
    "1" {
        $n1, $n2 = ingresarNumero
        $resultado = sumar $n1 $n2
        Write-Output "O resultado da suma é: $resultado"
    }

     "2" {
        $n1, $n2 = ingresarNumero
        $resultado = restar $n1 $n2
        Write-Output "O resultado da resta é: $resultado"
    }
}