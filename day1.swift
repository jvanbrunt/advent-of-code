import Foundation
if let resource = Bundle.main.path(forResource: "input", ofType: "txt") {
    let input = try String(contentsOfFile: resource)
    let inputs = input.split(separator: "\n").map { Int($0)! }.sorted()
    var left = 0
    var right = inputs.count - 1
    while left < right {
        if inputs[left] + inputs[right] == 2020 {
            print("\(inputs[left]) + \(inputs[right]) = 2020. Multiplied together = \(inputs[left] * inputs[right])")
            break
        } else if inputs[left] + inputs[right] < 2020 {
            left += 1
        } else {
            right -= 1
        }
    }
    for index in 0..<(inputs.count - 2) {
        var left = index + 1
        var right = inputs.count - 1
        while left < right {
            if inputs[index] + inputs[left] + inputs[right] == 2020 {
                print("\(inputs[index]) + \(inputs[left]) + \(inputs[right]) = 2020. Multiplied together = \(inputs[index] * inputs[left] * inputs[right])")
                break
            } else if inputs[index] + inputs[left] + inputs[right] < 2020 {
                left += 1
            } else {
                right -= 1
            }
        }
    }
}
