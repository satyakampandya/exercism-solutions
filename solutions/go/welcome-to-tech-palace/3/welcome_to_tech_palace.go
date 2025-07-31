package techpalace

import "strings"

const asterisk = "*"

// WelcomeMessage returns a welcome message for the customer.
func WelcomeMessage(customer string) string {
	return "Welcome to the Tech Palace, " + strings.ToUpper(customer)
}

// AddBorder adds a border to a welcome message.
func AddBorder(welcomeMsg string, numStarsPerLine int) string {
	borderMsg := strings.Repeat(asterisk, numStarsPerLine)
	return borderMsg + "\n" + welcomeMsg + "\n" + borderMsg
}

// CleanupMessage cleans up an old marketing message by removing asterisks and trimming whitespace.
func CleanupMessage(oldMsg string) string {
	return strings.TrimSpace(strings.Replace(oldMsg, asterisk, "", -1))
}
