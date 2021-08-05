/*Условие:
 Представьте себя средневековым фермером, который пришел к странному открытию. Вы купили 1 новорожденная пару кроликов в начале месяца. Дальше наблюдается такая статистика:
 В конце первого месяца по-прежнему только одна пара кроликов, но уже спарившаяся.
 В конце второго месяца первая пара рождает новую пару и опять спаривается.
 В конце третьего месяца первая пара рождает еще одну новую пару и спаривается, вторая пара только спаривается.
 В конце четвертого месяца первая пара рождает еще одну новую пару и спаривается, вторая пара рождает новую пару и спаривается, третья пара только спаривается.
 Вы заметили, что кролей скоро станет слишком много и задались вопросом, сколько из них можно продать, чтобы начать с начала.

 Нужно:
 Определить, сколько кролей вы сможете продать после N месяцев, при этом у вас должно остаться 2 кроля как было в первый месяц.
 Использовать для решения любой рекурсивный или нерекурсивный подход.
 */

import UIKit

//recursive approach for fibonacci numbers, used as example:
/*
func fibbonachi(_ n: Int) -> Int{
     
    if n == 0{
         
        return 0
    }
    else if n == 1{
         
        return 1
    }
    return fibbonachi(n-1) + fibbonachi(n-2)
}
var z = fibbonachi(6)
*/

//Recursive approach for rabbits:
func fibonacciRabbitsR(_ months: Int) -> Int {
    if months == 0 || months == 1 {return 2}
    else if months == 2 {return 4}
    
    return fibonacciRabbitsR(months - 1) + fibonacciRabbitsR(months - 2)
}

let months = 5
print("After \(months) you will have \(fibonacciRabbitsR(months) - 2) rabbits for sale")



