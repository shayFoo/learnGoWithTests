package iteration

import "strings"

func Repeat(character string, repeat uint16) string {
	var repeated strings.Builder
	for range repeat {
		repeated.WriteString(character)
	}
	return repeated.String()
}
