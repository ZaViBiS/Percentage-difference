/*
*  GPL-3.0
 *  Copyright (C) 2021  ZaViBiS
*/
module version

import net.http

pub fn check() {
	new_ver := http.get(version_url) or {
		println(err)
		exit(1)
	}
	if new_ver.text.f64() != ver {
		println('update available $ver -> $new_ver')
	} else {
		println('the latest version is already installed.')
	}
}
