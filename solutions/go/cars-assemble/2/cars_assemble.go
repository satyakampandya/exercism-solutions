// Package cars provides functions for calculating working cars production rates and costs.
package cars

// carsPerHour is the number of minutes in an hour.
const carsPerHour = 60

// carsPerBatch represents the number of cars produced in a batch.
const carsPerBatch = 10

// costPerBatch is the cost of producing a batch of cars.
const costPerBatch = 95000

// costPerCar is the cost of producing a single car.
const costPerCar = 10000

// CalculateWorkingCarsPerHour calculates how many working cars are
// produced by the assembly line every hour.
func CalculateWorkingCarsPerHour(productionRate int, successRate float64) float64 {
	return float64(productionRate) * successRate / float64(100)
}

// CalculateWorkingCarsPerMinute calculates how many working cars are
// produced by the assembly line every minute.
func CalculateWorkingCarsPerMinute(productionRate int, successRate float64) int {
	return int(CalculateWorkingCarsPerHour(productionRate, successRate)) / carsPerHour
}

// CalculateCost works out the cost of producing the given number of cars.
func CalculateCost(carsCount int) uint {
	batches := carsCount / carsPerBatch
	singleCars := carsCount % carsPerBatch
	return uint((batches * costPerBatch) + (singleCars * costPerCar))
}
