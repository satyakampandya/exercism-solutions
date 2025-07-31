// Package purchase provides functions for making decisions related to purchasing vehicles.
package purchase

import "fmt"

const (
    carLicense    = "car"
    truckLicense  = "truck"
    maxResellRate = 0.80
    midResellRate = 0.70
    minResellRate = 0.50
)

// NeedsLicense determines whether a license is needed to drive a type of vehicle.
// Only "car" and "truck" require a license.
func NeedsLicense(kind string) bool {
    return kind == carLicense || kind == truckLicense
}

// ChooseVehicle recommends a vehicle for selection.
// It always recommends the vehicle that comes first in lexicographical order.
func ChooseVehicle(option1, option2 string) string {
    var choice string
    if option1 < option2 {
        choice = option1
    } else {
        choice = option2
    }
    return fmt.Sprintf("%s is clearly the better choice.", choice)
}

// CalculateResellPrice calculates how much a vehicle can resell for at a certain age.
func CalculateResellPrice(originalPrice, age float64) float64 {
    if age < 3 {
        return originalPrice * maxResellRate
    } else if age >= 3 && age < 10 {
        return originalPrice * midResellRate
    } else {
        return originalPrice * minResellRate
    }
}
