//
//  MenuViewController.swift
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
class MenuViewController : MoppModalViewController {

    @IBOutlet weak var versionLabel     : UILabel!
    @IBOutlet weak var helpButton       : UIButton!
    @IBOutlet weak var introButton      : UIButton!
    @IBOutlet weak var documentsButton  : UIButton!
    @IBOutlet weak var settingsButton   : UIButton!
    @IBOutlet weak var aboutButton      : UIButton!

    enum Section {
        case header
        case items
    }

    let sections: [Section] = [.header, .items]

    enum MenuItemID {
        case help
        case containersHistory
        case settings
        case about
        case diagnostics
    }

    let menuItems: [(title: String, imageName: String, id: MenuItemID)] = [
        (L(.menuHelp), "icon_help white", .help),
        (L(.menuRecentContainers), "icon_files white", .containersHistory),
        (L(.menuSettings), "icon_settings white", .settings),
        (L(.menuAbout), "icon_info white", .about),
        (L(.menuDiagnostics), "icon_graph white", .diagnostics)
        ]

    @IBAction func dismissAction() {
        presentingViewController?.dismiss(animated: true, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        versionLabel.text = "Version " + MoppApp.versionString
        
        lightContentStatusBarStyle = true
    
        let blurLayer = CALayer()
        if let filter = CIFilter(name: "CIGaussianBlur") {
            blurLayer.backgroundFilters = [filter]
            view.layer.addSublayer(blurLayer)
        }
    }
}

extension MenuViewController : UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section_: Int) -> Int {
        let section = sections[section_]
        switch section {
        case .header:
            return 1
        case .items:
            return menuItems.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let section = sections[indexPath.section]
        switch section {
        case .header:
            let cell = tableView.dequeueReusableCell(withType: MenuHeaderCell.self, for: indexPath)!
                cell.delegate = self
            return cell
        case .items:
            let title = menuItems[indexPath.row].title
            let iconName = menuItems[indexPath.row].imageName
            let cell = tableView.dequeueReusableCell(withType: MenuCell.self, for: indexPath)!
                cell.populate(iconName: iconName, title: title)
            return cell
        }

    }
}

extension MenuViewController : UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let section = sections[indexPath.section]
        if section == .items {
            switch menuItems[indexPath.row].id {
            case .help:
                let currentPreferredLanguage = (Locale.preferredLanguages.first ?? String()).lowercased()
                var helpUrl: URL!
                if currentPreferredLanguage.hasPrefix("et") {
                    helpUrl = URL(string: "https://www.id.ee/index.php?id=10583")
                }
                else if currentPreferredLanguage.hasPrefix("ru") {
                    helpUrl = URL(string: "https://www.id.ee/index.php?id=30515")
                }
                else {
                    helpUrl = URL(string: "https://www.id.ee/index.php?id=30466")
                }
                if helpUrl != nil {
                    MoppApp.shared.open(helpUrl, options: [:], completionHandler: nil)
                }
            case .containersHistory:
                DispatchQueue.main.async(execute: {
                    self.dismiss(animated: true, completion: {
                        let recentContainersViewController = UIStoryboard.recentContainers.instantiateInitialViewController()!
                            recentContainersViewController.modalPresentationStyle = .overFullScreen
                        MoppApp.instance.rootViewController?.present(recentContainersViewController, animated: true, completion: nil)
                    })
                })
                break
            case .settings:
                DispatchQueue.main.async(execute: {
                    self.dismiss(animated: true) {
                        let settingsViewController = UIStoryboard.settings.instantiateInitialViewController(of: SettingsViewController.self)
                            settingsViewController.modalPresentationStyle = .overFullScreen
                        MoppApp.instance.rootViewController?.present(settingsViewController, animated: true, completion: nil)
                    }
                })
            case .about:
                break
            case .diagnostics:
                DispatchQueue.main.async(execute: {
                    self.dismiss(animated: true) {
                        let diagnosticsViewController = UIStoryboard.settings.instantiateViewController(of: DiagnosticsViewController.self)
                            diagnosticsViewController.modalPresentationStyle = .overFullScreen
                        MoppApp.instance.rootViewController?.present(diagnosticsViewController, animated: true, completion: nil)
                    }
                })
            }
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let section = sections[indexPath.section]
        switch section {
        case .header:
            return 100
        case .items:
            return 48
        }
    }
}

extension MenuViewController : MenuHeaderDelegate {
    func menuHeaderDismiss() {
        dismiss(animated: true, completion: nil)
    }
}
