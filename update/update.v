/*
 *  GPL-3.0
 *  Copyright (C) 2021  ZaViBiS
 */
module version

import net.http

fn check() {
	new_ver := http.get(version_url) or {
			println(err)
			return version
		}
	if new_ver.text.f64() != version {
		println('update available $version -> $new_ver')
	} else {
		println('the latest version is installed')
	}
}
