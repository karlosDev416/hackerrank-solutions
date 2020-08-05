import UIKit

func solve(meal_cost: Double, tip_percent: Int, tax_percent: Int) -> Void {
    let tip = meal_cost * Double(tip_percent)/100.0
    let tax = meal_cost * Double(tax_percent)/100.0
    let totalCost = meal_cost+tip+tax
    print(Int(round(totalCost)))
}

//Test case #0
solve(meal_cost: 12.00, tip_percent: 20, tax_percent: 8)
//Expected Output
//15

//Test case #1
solve(meal_cost: 15.50, tip_percent: 15, tax_percent: 10)
//Expected Output
//19



