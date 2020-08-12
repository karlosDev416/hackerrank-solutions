import UIKit

func getMaximumHourglassSum(_ arr:[[Int]])->Int {
    var max = Int.min
    for i in 0...3 {
        for j in 0...3 {
            let total = arr[i][j]+arr[i][j+1]+arr[i][j+2]+arr[i+1][j+1]+arr[i+2][j]+arr[i+2][j+1]+arr[i+2][j+2]
            if total > max {
                max = total
            }
        }
    }
    return max
}

//Test case #0
let arr =
[[1,1,1,0,0,0],
[0,1,0,0,0,0],
[1,1,1,0,0,0],
[0,0,2,4,4,0],
[0,0,0,2,0,0],
[0,0,1,2,4,0]]

print(getMaximumHourglassSum(arr))
