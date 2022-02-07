/*
*  GPL-3.0
 *  Copyright (C) 2021-2022  ZaViBiS
*/
module version

import net.http

pub fn check() {
	new_ver := http.get(version_url) or {
		println('well managed to get the latest version')
		exit(1)
	}.text.f64()

	if new_ver != ver {
		println('update available $ver -> $new_ver')
	} else {
		println('the latest version is already installed.\n   $ver')
	}
}
