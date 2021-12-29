/*
 *  GPL-3.0
 *  Copyright (C) 2021  ZaViBiS
 */
import os

import nedpals.vargs

fn main() {
	mut parameter := vargs.new(os.args, 0)
	parameter.parse()
	first := parameter.unknown[0].f64()
	second := parameter.unknown[1].f64()
	println(parameter)
	if 'n' in parameter.options {
		if first < second {
			println('${cal(first, second)} %')
		} else {
			println('${cal(second, first)} %')
		}
	} else {
		if first > second {
			println('${cal(first, second)} %')
		} else {
			println('${cal(second, first)} %')
		}
	}
}

fn cal(first f64, second f64) f64 {
	return (first/second-1)*100
}
