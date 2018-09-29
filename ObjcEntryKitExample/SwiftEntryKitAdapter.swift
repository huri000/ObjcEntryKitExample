//
//  SwiftEntryKitAdapter.swift
//  ObjcEntryKitExample
//
//  Created by Daniel Huri on 9/29/18.
//  Copyright © 2018 huri. All rights reserved.
//

import Foundation
import SwiftEntryKit

public class SwiftEntryKitAdapter: NSObject {

    @objc public func displayCustomAttributes() {
        var attributes: EKAttributes = .bottomFloat
        attributes.hapticFeedbackType = .success
        attributes.displayDuration = 3
        attributes.screenBackground = .clear
        attributes.entryBackground = .clear
        attributes.screenInteraction = .forward
        attributes.entryInteraction = .absorbTouches
        
        attributes.entranceAnimation = .init(translate: .init(duration: 0.5, spring: .init(damping: 0.9, initialVelocity: 0)),
                                             scale: .init(from: 0.8, to: 1, duration: 0.5, spring: .init(damping: 0.8, initialVelocity: 0)),
                                             fade: .init(from: 0.7, to: 1, duration: 0.3))
        attributes.exitAnimation = .init(translate: .init(duration: 0.5),
                                         scale: .init(from: 1, to: 0.8, duration: 0.5),
                                         fade: .init(from: 1, to: 0, duration: 0.5))
        attributes.popBehavior = .animated(animation: .init(translate: .init(duration: 0.3),
                                                            scale: .init(from: 1, to: 0.8, duration: 0.3)))
        attributes.shadow = .active(with: .init(color: .black, opacity: 0.3, radius: 6))
        attributes.positionConstraints.verticalOffset = 10
        attributes.positionConstraints.size = .init(width: .offset(value: 20), height: .intrinsic)
        attributes.positionConstraints.maxSize = .init(width: .constant(value: UIScreen.main.minEdge), height: .intrinsic)
        attributes.statusBar = .dark
        SwiftEntryKit.display(entry: NibExampleView(), using: attributes)
    }
}
