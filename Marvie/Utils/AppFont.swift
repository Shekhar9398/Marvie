//
//  AppFont.swift
//  Marvie
//
//  Created by Shekhar Manwar on 10/06/25.
//

import SwiftUI

enum AppFont {
    static func boldSF(size: CGFloat) -> Font {
        Font.custom("SFProDisplay-Bold", size: size)
    }
    
    static func mediumSF(size: CGFloat) -> Font {
        Font.custom("SFProDisplay-Medium", size: size)
    }
    
    static func regularSF(size: CGFloat) -> Font {
        Font.custom("SFProDisplay-Regular", size: size)
    }
}

