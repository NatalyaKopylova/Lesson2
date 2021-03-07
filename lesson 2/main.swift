//  lesson 2
import Foundation

//MARK:-
//Задание 1
//четное или не четное
let a: Int = 5

func isEven(a: Int) -> Bool {
    return a % 2 == 0
}
print(isEven(a: a))

//MARK:-
//задание 2
//делится на 3 без остатка или нет
let b: Int = 5

func byThree(b: Int) -> Bool {
    return b % 3 == 0
}
print(byThree(b: b))

//MARK:-
//задание 3
//возрастающий массив из 100 чисел
//1 вариант
let arr = Array(0...99)
print(arr)

//2 вариант
var ar:[Int] = []
for i in 0...99 {
    ar.append(i)
}
print(ar)

//MARK:-
//задание 4
//удалаем все четные числа
for value in ar {
    if (value % 2) == 0 {
        ar.remove(at: ar.firstIndex(of: value)!)
    }
}
print(ar)
//удаляем все, что не делится на 3
for value in ar {
    if (value % 3) == 0 {
        ar.remove(at: ar.firstIndex(of: value)!)
    }
}
print(ar)

//MARK:-
//задание 5
//Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 50 элементов
var fibonachiArray = Array(0...1)

func fillFibonachiArray() {
    for _ in 0...50 {
        let nextNumber = fibonachiArray[fibonachiArray.count - 1] + fibonachiArray[fibonachiArray.count - 2]
        fibonachiArray.append(nextNumber)
    }
}
fillFibonachiArray()
print(fibonachiArray)

//MARK:-
//задание 6
//метод Эрастофена
let n: Int = 100
var integers = Array(2...n)
var p: Int? = integers[0]

func hasWhatDelete() -> Bool {
    let elementForDelete = integers.first(where: { element in
        element % p! == 0 && element > p!
    })
    return elementForDelete != nil
}

while hasWhatDelete() {
    integers = integers.filter({ element in
        return element % p! != 0 || element == p!
    })
    p = integers.first { element in
        return element > p!
        }
}
print(integers)



