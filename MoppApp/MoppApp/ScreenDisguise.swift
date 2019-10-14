//
//  ScreenDisguise.swift
//  MoppApp
//
/*
 * Copyright 2017 Riigi Infosüsteemide Amet
 *
 * This library is free software; you can redistribute it and/or
 * modify it under the terms of the GNU Lesser General Public
 * License as published by the Free Software Foundation; either
 * version 2.1 of the License, or (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
 * Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301  USA
 *
 */

import Foundation
import UIKit


public class ScreenDisguise {
    public static let shared = ScreenDisguise()
    private var viewController: ScreenDisguiseViewController? = nil
    
    private init() {}
    
    public func show() {
        viewController = ScreenDisguiseViewController()
        guard let tempOverlay = viewController else {
            return
        }
                
        if let topViewController = topViewController() {
            let blurEffect = UIBlurEffect(style: .light)
            let effectView = UIVisualEffectView(effect: blurEffect)
            
            tempOverlay.view.addSubview(effectView)
            
            effectView.translatesAutoresizingMaskIntoConstraints = false
            effectView.frame = UIScreen.main.bounds

            topViewController.view.addSubview(tempOverlay.view)
            
            tempOverlay.view.translatesAutoresizingMaskIntoConstraints = false
            tempOverlay.view.frame = UIScreen.main.bounds
            
            guard let parent = topViewController.presentingViewController else {
                return
            }
            
            parent.view.superview?.addSubview(tempOverlay.view)
            
            let tempMainController = UIViewController()
            
            tempMainController.addChildViewController(tempOverlay)
            tempMainController.view.frame = UIScreen.main.bounds
            tempMainController.view.addSubview(tempOverlay.view)
            tempMainController.modalPresentationStyle = .overFullScreen
            
            topViewController.present(tempMainController, animated: true, completion: nil)
    }

        tempOverlay.show()
    }

    public func topViewController() -> UIViewController? {
        if let rootViewController = UIApplication.shared.keyWindow?.rootViewController {
            if let targetPresentedViewController = rootViewController.presentedViewController {
                return targetPresentedViewController
            } else {
                return rootViewController
            }
        }
        return nil
    }

    public func hide() {
        guard let tempOverlay = viewController else {
            // Cleanup disguise view controller
            if let topViewController = topViewController() {
                topViewController.dismiss(animated: true, completion: nil)
                for vc in topViewController.childViewControllers {
                    if vc is ScreenDisguiseViewController {
                        vc.removeFromParentViewController()
                        vc.view.removeFromSuperview()
                    }
                }
            }
            return
        }
        
        tempOverlay.dismiss(animated: true, completion: nil)
        
        tempOverlay.hide() {
            tempOverlay.removeFromParentViewController()
            tempOverlay.view.removeFromSuperview()
            self.viewController = nil
        }
    }
}
