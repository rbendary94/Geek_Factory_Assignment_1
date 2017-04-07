
import UIKit

print("Insertion Sort")
func sortArrayINT(arr: [Int]) -> Array<Int> {
    var array = arr
    let count = arr.count - 1

    for i in 0...count {
        let index = array[i]
        var j = i
        while ( j > 0 && array[j-1] > index) {
            array[j] = array[j-1]
            j = j-1;
        }
      array[j] = index

    }
    
    return array
}

sortArrayINT(arr: [29,20,73,34,64])

func sortArraySTRING(arr: [String]) -> Array<String> {
    var array = arr
    let length = arr.count - 1
    
    var stringSizes = [Int]()
    for s in array {
        stringSizes.append(s.characters.count)
    }
    
    for i in 0...length {
        let index = stringSizes[i]
        let ch = array[i]
        var j = i
        while ( j > 0 && stringSizes[j-1] > index) {
            stringSizes[j] = stringSizes[j-1]
            array[j] = array[j-1]
            j = j-1;
        }
        stringSizes[j] = index
        array[j] = ch
    }
    
    return array
}

sortArraySTRING(arr: ["Rana", "Nesreen","hi", "hala"])

func sortArrayGENERIC<T : Comparable>(arr: Array<T>) -> Array<T>? {
    var array = arr
    if array.isEmpty { return nil }
    
    for i in 0..<array.count {
        let index = array[i]
        var j = i
        while (j > 0 && array[j-1] > index) {
            array[j] = array[j-1]
            j = j-1
        }
        array[j] = index
        
    }
    return array
}

sortArrayGENERIC(arr: ["Rana", "Nesreen","hi", "bye"])
sortArrayGENERIC(arr: [29,20,73,34,64])



