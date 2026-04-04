package main

import "testing"

// Array Slice Demo
func TestArrays(t *testing.T) {
	ar := []int{1, 2, 3, 4, 5}
	arCap := cap(ar)
	arLen := len(ar)
	if arCap != arLen {
		t.Errorf("Capacity != length, cap=%d, len=%d", arCap, arLen)
	}

	sliced := ar[1:3]
	slicedCap := cap(sliced)
	if slicedCap != 4 {
		t.Error()
	}
	slicedLen := len(sliced)
	if slicedLen != 2 {
		t.Error()
	}

	if slicedCap == slicedLen {
		t.Errorf("Capacity == length, cap=%d, len=%d", slicedCap, slicedLen)
	}
	appended := append(sliced, 6)
	t.Log(appended) // [2 3 6]
	t.Log(ar)       // [1 2 3 *6* 5] underlying array changed
}
