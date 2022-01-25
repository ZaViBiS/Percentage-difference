/*
*  GPL-3.0
 *  Copyright (C) 2021-2022  ZaViBiS
*/
module main

import os
import version

fn main() {
	if '-v' in os.args {
		version.check()
		exit(0)
	}

	first, second, negative := get_args(os.args)

	if negative {
		if first < second {
			println('${cal(first, second):.4} %')
		} else {
			println('${cal(second, first):.4} %')
		}
	} else {
		if first > second {
			println('${cal(first, second):.4} %')
		} else {
			println('${cal(second, first):.4} %')
		}
	}
}

fn cal(first f64, second f64) f64 {
	return (first / second - 1) * 100
}

fn get_args(a []string) (f64, f64, bool) {
	mut args := a.clone()
	args.delete(0) // delete path to file
	for index, value in args {
		if value == '-n' {
			args.delete(index)
			return args[0].f64(), args[1].f64(), true
		}
	}
	return args[0].f64(), args[1].f64(), false
}
