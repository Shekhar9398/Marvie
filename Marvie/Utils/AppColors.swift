////
////  AppColors.swift
////  Marvie
////
////  Created by Shekhar Manwar on 10/06/25.
////

import SwiftUI

enum AppColor {
    static let red = Color("appRed")
    static let lightRed = Color("lightRed")
    static let darkRed = Color("darkRed")
    
    static let orange = Color("appOrange")
    static let lightOrange = Color("lightOrange")
    static let darkOrange = Color("darkOrange")
    
    static let yellow = Color("appYellow")
    static let lightYellow = Color("lightYellow")
    static let darkYellow = Color("darkYellow")
    
    static let green = Color("appGreen")
    static let lightGreen = Color("lightGreen")
    static let darkGreen = Color("darkGreen")
    
    static let blue = Color("appBlue")
    static let lightBlue = Color("lightBlue")
    static let darkBlue = Color("darkBlue")
    
    static let purple = Color("appPurple")
    static let lightPurple = Color("lightPurple")
    static let darkPurple = Color("darkPurple")
    
    static let white = Color("appWhite")
    static let gray1 = Color("gray1")
    static let gray2 = Color("gray2")
    static let gray3 = Color("gray3")
    
    static let accentGreen = Color("accentGreen")
    static let darkBackground1 = Color("darkBackground1")
    static let darkBackground2 = Color("darkBackground2")
    static let darkBackground3 = Color("darkBackground3")
    
    /// Returns a random color from the main color set
      static var randomColor: Color {
          let allColors: [Color] = [
              red, orange, yellow, green, blue, purple,
              lightRed, lightOrange, lightYellow, lightGreen, lightBlue, lightPurple,
              darkRed, darkOrange, darkYellow, darkGreen, darkBlue, darkPurple,
              accentGreen, gray1, gray2, gray3
          ]
          return allColors.randomElement() ?? red
      }
}
