/*Условие:
 У каждого из нас от рождения есть имя и фамилия, а также их транслитерация на английском языке (латиница). Представьте, что вам нужно объяснить иностранцу как вас зовут. Он не может разобрать ваше имя, когда вы называете его полностью. Поэтому вас попросили назвать имя по буквам, а иностранец записывает его на листике по одной букве с новой строки. Затем он ставит в листе прочерк (_), спрашивает еще и фамилию. Ваше терпение заканчивается и вы просто берете лист и вписываете фамилию самостоятельно. Но, для наглядности, разбиваете ее с новой строки по слогам. После этого, смутившийся иностранец с легкостью читает ваши имя и фамилию с листика.

 Нужно:
 Вывести в консоль ваши имя и фамилию так, как они будут записаны у иностранца на листе (после заполнения обоих имени и фамилии).*/

import UIKit

//func that checks if provided character is a vowel
func vowelCheck(char: Character) -> Bool {
    let vowels = "aeiouy"
    for vowel in vowels {if char == vowel {return true}}
    return false
}

//There is no 100% easy way to split any name into syllable accurately.
//I decided to count each separate vowel as an end to the syllable, except for the last one which might end in consonant(s).
//func that breaks down a string into syllables
func syllableParse(word: String) -> [String]{
    var pseudoSyllable = ""
    var forPrint: [String] = []
    
    for char in word {
        //For some reason it would not let me do pseudoSyllable += (String)char, so I had to use the String initialiser (Thank you stackoverflow)
        pseudoSyllable += String(char)
        if vowelCheck(char: char){
            forPrint.append(pseudoSyllable)
            pseudoSyllable = ""
            }
    }
    forPrint[forPrint.count-1] += pseudoSyllable
    return forPrint
}

//Main func that performs prints and doesn't return anything
func nameSpeller(fullName: String){
   /* print("Input your full name")
    if let fullName = readLine() {
        print("Hello, \(fullName)!")
    } else {
        print("No name, huh?")
    }
     Tried readLine, but it's not supported in playground =D
     */
    let firstName = (String)(fullName.split(separator: " ")[0])
    let lastName = (String)(fullName.split(separator: " ")[1])
    //split returns Substring which messes up type conversions later on, so converting it here
    for char in firstName {
        print(char)
        }
    print("----------")
    let printer = syllableParse(word: lastName)
    for syllable in printer{print(syllable)}
}

nameSpeller(fullName: "Stanislav Pupochkinissimo")

