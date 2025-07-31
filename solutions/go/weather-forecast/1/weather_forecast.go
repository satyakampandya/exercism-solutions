// Package weather provides a function to get forecast of given city.
package weather

// CurrentCondition represents current condition.
var CurrentCondition string
// CurrentLocation represents current location.
var CurrentLocation string

// Forecast takes city and condition as arguments and returns forecast.
func Forecast(city, condition string) string {
	CurrentLocation, CurrentCondition = city, condition
	return CurrentLocation + " - current weather condition: " + CurrentCondition
}
