//
//  SignSelectionViewController.swift
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
class SignSelectionViewController : MoppViewController {
    @IBOutlet weak var centerViewCenterCSTR: NSLayoutConstraint!
    @IBOutlet weak var centerViewOutofscreenCSTR: NSLayoutConstraint!
    @IBOutlet weak var centerViewKeyboardCSTR: NSLayoutConstraint!
    @IBOutlet var signMethodButtons: [UIButton]!
    @IBOutlet weak var containerView: UIView!
    
    weak var mobileIdEditViewControllerDelegate: MobileIDEditViewControllerDelegate!
    weak var idCardSignViewControllerDelegate: IdCardSignViewControllerDelegate!
    
    var containerPath: String!
    
    var isSwitchingBlockedByTransition: Bool = false
    
    enum SignMethodButtonID: String {
        case mobileID
        case idCard
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        localizeButtonTitles()
    }

    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .portrait
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        changeSignMethod(newSignMethod: .mobileID)
        
        view.backgroundColor = UIColor.black.withAlphaComponent(0.0)
        
        UIView.animate(withDuration: 0.35) {
            self.view.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        }
        
        centerViewCenterCSTR.priority = .defaultLow
        centerViewOutofscreenCSTR.priority = .defaultHigh
        
        view.layoutIfNeeded()
        
        UIView.animate(withDuration: 0.35, delay: 0.0, options: .curveEaseOut, animations: {
            self.centerViewCenterCSTR.priority = .defaultHigh
            self.centerViewOutofscreenCSTR.priority = .defaultLow
            self.view.layoutIfNeeded()
        }) { _ in
            
        }
    }
    
    func localizeButtonTitles() {
        signMethodButtons.forEach {
            let id = SignMethodButtonID(rawValue: $0.accessibilityIdentifier!)!
            switch id {
            case .idCard:
                $0.setTitle(L(.signTitleIdCard))
            case .mobileID:
                $0.setTitle(L(.signTitleMobileId))
            }
        }
    }
}

extension SignSelectionViewController {
    func changeSignMethod(newSignMethod: SignMethodButtonID) {
        let oldViewController = childViewControllers.first
        let newViewController: MoppViewController!
        
        switch newSignMethod {
        case .idCard:
            let idCardSignVC = UIStoryboard.signing.instantiateViewController(of: IdCardSignViewController.self)
                idCardSignVC.delegate = idCardSignViewControllerDelegate
                idCardSignVC.containerPath = containerPath
                idCardSignVC.keyboardDelegate = self
            newViewController = idCardSignVC
        case .mobileID:
            let mobileIdEditVC = UIStoryboard.signing.instantiateViewController(of: MobileIDEditViewController.self)
                mobileIdEditVC.delegate = mobileIdEditViewControllerDelegate
            newViewController = mobileIdEditVC
        }
        
        oldViewController?.willMove(toParentViewController: nil)
        addChildViewController(newViewController)
        
        oldViewController?.removeFromParentViewController()
        newViewController.didMove(toParentViewController: self)
    
        newViewController.view.translatesAutoresizingMaskIntoConstraints = false
    
        oldViewController?.view.removeFromSuperview()
        containerView.addSubview(newViewController.view)
    
        let margins = containerView.safeAreaLayoutGuide
        let leading = newViewController.view.leadingAnchor.constraint(equalTo: margins.leadingAnchor)
        let trailing = newViewController.view.trailingAnchor.constraint(equalTo: margins.trailingAnchor)
        let top = newViewController.view.topAnchor.constraint(equalTo: margins.topAnchor)
        let bottom = newViewController.view.bottomAnchor.constraint(equalTo: margins.bottomAnchor)
    
        leading.isActive = true
        trailing.isActive = true
        top.isActive = true
        bottom.isActive = true

        newViewController.view.updateConstraintsIfNeeded()
    }
    
    @IBAction func didTapSignMethodButton(sender: UIButton) {
        let id = SignMethodButtonID(rawValue: sender.accessibilityIdentifier ?? String())!
        if !sender.isSelected && !isSwitchingBlockedByTransition {
            selectButton(buttonID: id)
            changeSignMethod(newSignMethod: id)
        }
    }
    
    func selectButton(buttonID: SignMethodButtonID) {
        signMethodButtons.forEach {
            let darkColor = UIColor.moppTitle
            let lightColor = UIColor.white
            let id = SignMethodButtonID(rawValue: $0.accessibilityIdentifier ?? String())!
            if id == buttonID {
                // set selected state
                $0.backgroundColor = darkColor
                $0.setTitleColor(lightColor, for: .normal)
                $0.setTitleColor(lightColor, for: .selected)
                $0.setTitleColor(lightColor, for: .highlighted)
                $0.titleLabel?.font = UIFont(name: MoppFontName.allCapsBold.rawValue, size: 17.0)
                $0.isSelected = true
            } else {
                // set unselected state
                $0.backgroundColor = lightColor
                $0.setTitleColor(darkColor, for: .normal)
                $0.setTitleColor(darkColor, for: .selected)
                $0.setTitleColor(darkColor, for: .highlighted)
                $0.titleLabel?.font = UIFont(name: MoppFontName.allCapsRegular.rawValue, size: 17.0)
                $0.isSelected = false
            }
        }
    }
}

extension SignSelectionViewController : IdCardSignViewKeyboardDelegate {
    func idCardSignPIN2KeyboardWillAppear() {
        if DeviceType.IS_IPHONE_5 {
            self.centerViewCenterCSTR.priority = UILayoutPriority(rawValue: 700)
            self.centerViewKeyboardCSTR.priority = UILayoutPriority(rawValue: 750)
            UIView.animate(withDuration: 0.35, delay: 0.0, options: .curveEaseOut, animations: {
                self.view.layoutIfNeeded()
            }) {_ in }
        }
    }
    
    func idCardSignPIN2KeyboardWillDisappear() {
        if DeviceType.IS_IPHONE_5 {
            self.centerViewCenterCSTR.priority = UILayoutPriority(rawValue: 750)
            self.centerViewKeyboardCSTR.priority = UILayoutPriority(rawValue: 700)
            UIView.animate(withDuration: 0.35, delay: 0.0, options: .curveEaseOut, animations: {
                self.view.layoutIfNeeded()
            }) {_ in }
        }
    }
}