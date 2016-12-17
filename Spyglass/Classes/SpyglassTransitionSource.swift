//
//  SpyglassTransitionSource.swift
//  Spyglass
//
//  Created by Alexsander Akers on 9/3/2016.
//  Copyright © 2016 Pandamonia LLC. All rights reserved.
//

import UIKit

public protocol SpyglassTransitionSourceProvider {
    func transitionSource() -> SpyglassTransitionSource?
}

public protocol SpyglassTransitionSource {
    func userInfo(for transitionType: SpyglassTransitionType, from initialViewController: UIViewController, to finalViewController: UIViewController) -> SpyglassUserInfo?
    func snapshotView(for transitionType: SpyglassTransitionType, userInfo: SpyglassUserInfo?) -> UIView
    func sourceRect(for transitionType: SpyglassTransitionType, userInfo: SpyglassUserInfo?) -> SpyglassRelativeRect

    /* optional */ func sourceTransitionWillBegin(for transitionType: SpyglassTransitionType, viewController: UIViewController, userInfo: SpyglassUserInfo?)
    /* optional */ func sourceTransitionDidEnd(for transitionType: SpyglassTransitionType, viewController: UIViewController, userInfo: SpyglassUserInfo?, completed: Bool)
}

public extension SpyglassTransitionSource {
    func sourceTransitionWillBegin(for transitionType: SpyglassTransitionType, viewController: UIViewController, userInfo: SpyglassUserInfo?) {
    }

    func sourceTransitionDidEnd(for transitionType: SpyglassTransitionType, viewController: UIViewController, userInfo: SpyglassUserInfo?, completed: Bool) {
    }
}
