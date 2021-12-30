//
//  Constants.swift
//  ios-pwa-wrapper
//
//  Created by Martin Kainzbauer on 29/10/2017.
//  Copyright © 2017 Martin Kainzbauer. All rights reserved.
//

import UIKit

// Basic App-/WebView-configuration
let appTitle = "Manduu"
let webAppUrl = URL(string: "https://client.manduu.work")
let allowedOrigin = "manduu.work"
let menuButtonTitle = NSLocalizedString("menu", comment: "")
let menuButtonJavascript = """
    $('.navbar-toggler').click();
"""
let useUserAgentPostfix = true
let userAgentPostfix = "iOSApp"
let useCustomUserAgent = true
let customUserAgent = "Mozilla/5.0 (iPhone; CPU iPhone OS 11_0_1 like Mac OS X) AppleWebKit/604.2.10 (KHTML, like Gecko) Mobile/15A8401"

// UI Settings
let changeAppTitleToPageTitle = true
let forceLargeTitle = false
let enableBounceWhenScrolling = true

// change Menu button depending on screen width
// IMPORTANT: do not enable this yet, it's still buggy
let changeMenuButtonOnWideScreens = false
let wideScreenMinWidth = CGFloat(993) // your CSS Media Query px-breakpoint
let alternateRightButtonTitle = NSLocalizedString("share", comment: "")
let alternateRightButtonJavascript = """
    $('#share-link').click();
"""

// Colors & Styles
let useLightStatusBarStyle = false
let navigationBarColor = getColorFromHex(hex: 0x2fa910, alpha: 1.0)
let navigationTitleColor = getColorFromHex(hex: 0x0000, alpha: 1.0)
let navigationButtonColor = navigationTitleColor
let progressBarColor = getColorFromHex(hex: 0x4CAF50, alpha: 1.0)
let offlineIconColor = UIColor.darkGray
let buttonColor = navigationBarColor
let activityIndicatorColor = navigationBarColor

// Color Helper function
func getColorFromHex(hex: UInt, alpha: CGFloat) -> UIColor {
    return UIColor(
        red: CGFloat((hex & 0xFF0000) >> 16) / 255.0,
        green: CGFloat((hex & 0x00FF00) >> 8) / 255.0,
        blue: CGFloat(hex & 0x0000FF) / 255.0,
        alpha: CGFloat(alpha)
    )
}
