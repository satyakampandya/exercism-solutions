// Package blackjack provides functions for making decisions related to the game of Blackjack.
package blackjack

// Card values
const (
	Ace       = 11
	TwentyOne = 21
	Twelve    = 12
	Sixteen   = 16
	Seven     = 7
	Seventeen = 17
	Eleven    = 11
	Twenty    = 20
)

// ParseCard returns the integer value of a card following blackjack ruleset.
func ParseCard(card string) int {
	switch card {
	case "ace":
		return Ace
	case "two":
		return 2
	case "three":
		return 3
	case "four":
		return 4
	case "five":
		return 5
	case "six":
		return 6
	case "seven":
		return 7
	case "eight":
		return 8
	case "nine":
		return 9
	case "ten", "jack", "queen", "king":
		return 10
	default:
		return 0
	}
}

// FirstTurn returns the decision for the first turn, given two cards of the
// player and one card of the dealer.
func FirstTurn(card1, card2, dealerCard string) string {
	var response string
	dealerCardValue := ParseCard(dealerCard)
	myCardSum := ParseCard(card1) + ParseCard(card2)

	switch {
	case ParseCard(card1) == Ace && ParseCard(card2) == Ace:
		response = "P" // Split
	case myCardSum == TwentyOne && (dealerCardValue != Ace && dealerCardValue != 10):
		response = "W" // Automatically win
	case myCardSum == TwentyOne && (dealerCardValue == Ace || dealerCardValue == 10):
		response = "S" // Stand
	case myCardSum >= Seventeen && myCardSum <= Twenty:
		response = "S" // Stand
	case (myCardSum >= Twelve && myCardSum <= Sixteen) && dealerCardValue < Seven:
		response = "S" // Stand
	case (myCardSum >= Twelve && myCardSum <= Sixteen) && dealerCardValue >= Seven:
		response = "H" // Hit
	case myCardSum <= Eleven:
		response = "H" // Hit
	}
	return response
}
