//
//  Constant.swift
//  ios-base
//
//  Created by Özkan Bölükbaş on 1.03.2022.
//

import Foundation
import UIKit


struct Constants {

	struct Screen {
		static let screenWidth = UIScreen.main.bounds.size.width
		static let screenHeight = UIScreen.main.bounds.size.height
		static let bottomSafeAreaHeight = UIApplication.shared.windows.first?.safeAreaInsets.bottom ?? 0
	}

	struct Networking {
		static var baseURL: String {
			AppEnvironment.baseURL
		}
	}
}

