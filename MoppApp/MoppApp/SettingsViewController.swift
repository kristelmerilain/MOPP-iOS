//
//  SettingsViewController.swift
//  MoppApp
//
/*
 * Copyright 2017 - 2021 Riigi Infosüsteemi Amet
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
class SettingsViewController: MoppViewController {
    private(set) var timestampUrl: String!
    @IBOutlet weak var tableView: UITableView!
    
    enum Section {
        case header
        case fields
    }
    
    enum FieldId {
        case rpuuid
        case timestampUrl
    }
    
    struct Field {
        enum Kind {
            case inputField
            case choice
            case timestamp
        }
        
        let id: FieldId
        let kind: Kind
        let title: String
        let placeholderText: NSAttributedString
        let value: String
        
        init(id:FieldId, kind:Kind, title:String, placeholderText:NSAttributedString, value:String) {
            self.id = id
            self.kind = kind
            self.title = title
            self.placeholderText = placeholderText
            self.value = value
        }
    }
    
    var sections:[Section] = [.header, .fields]
    
    var fields:[Field] = [
        Field(
            id: .rpuuid,
            kind: .inputField,
            title: L(.settingsRpUuidTitle),
            placeholderText: NSAttributedString(string: L(.settingsRpUuidPlaceholder), attributes: [NSAttributedString.Key.foregroundColor: UIColor.moppPlaceholderDarker]),
            value: DefaultsHelper.rpUuid
        ),
        Field(
            id: .timestampUrl,
            kind: .timestamp,
            title: L(.settingsTimestampUrlTitle),
            placeholderText: NSAttributedString(string: L(.settingsTimestampUrlPlaceholder), attributes: [NSAttributedString.Key.foregroundColor: UIColor.moppPlaceholderDarker]),
            value: DefaultsHelper.timestampUrl ?? MoppConfiguration.tsaUrl!
        )
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timestampUrl = DefaultsHelper.timestampUrl
        
        tableView.estimatedRowHeight = 100
        tableView.rowHeight = UITableView.automaticDimension
    }
        
    override var supportedInterfaceOrientations: UIInterfaceOrientationMask {
        return .portrait
    }
}

extension SettingsViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section_: Int) -> Int {
        switch sections[section_] {
        case .header:
            return 1
        case .fields:
            return fields.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch sections[indexPath.section] {
        case .header:
            let headerCell = tableView.dequeueReusableCell(withType: SettingsHeaderCell.self, for: indexPath)!
                headerCell.delegate = self
                headerCell.populate(with:L(.settingsTitle))
            return headerCell
        case .fields:
            let field = fields[indexPath.row]
            switch field.kind {
            case .inputField:
                let fieldCell = tableView.dequeueReusableCell(withType: SettingsFieldCell.self, for: indexPath)!
                    fieldCell.delegate = self
                    fieldCell.populate(with: field)
                switch field.id {
                case .rpuuid:
                    fieldCell.textField.isSecureTextEntry = true
                    fieldCell.textField.keyboardType = .default
                    break
                default: break
                }
                return fieldCell
            case .timestamp:
                let timeStampCell = tableView.dequeueReusableCell(withType: SettingsTimeStampCell.self, for: indexPath)!
                    timeStampCell.delegate = self
                    timeStampCell.populate(with: field)
                return timeStampCell
            case .choice:
                let choiceCell = tableView.dequeueReusableCell(withType: SettingsChoiceCell.self, for: indexPath)!
                    choiceCell.populate(with: field)
                return choiceCell
            }
        }
    }
    
    @objc func editingChanged(sender: UITextField) {
        let text = sender.text ?? String()
        if (text.count > 11) {
            sender.deleteBackward()
        }
    }
}

extension SettingsViewController: SettingsHeaderCellDelegate {
    func didDismissSettings() {
        dismiss(animated: true, completion: nil)
    }
}

extension SettingsViewController: SettingsFieldCellDelegate {
    func didEndEditingField(_ fieldId: SettingsViewController.FieldId, with value:String) {
        switch fieldId {
        case .rpuuid:
            DefaultsHelper.rpUuid = value
            break
        default:
            break
        }
    }
}

extension SettingsViewController: SettingsTimeStampCellDelegate {
    func didChangeTimestamp(_ fieldId: SettingsViewController.FieldId, with value: String?) {

#if USE_TEST_DDS
        let useTestDDS = true
#else
        let useTestDDS = false
#endif
        MoppLibManager.sharedInstance()?.setup(success: {
            MSLog("success")
        }, andFailure: { [weak self] error in
            let nsError = error! as NSError
            self?.errorAlert(message: L(.genericErrorMessage), title: nsError.userInfo["message"] as? String)
            }, usingTestDigiDocService: useTestDDS, andTSUrl: DefaultsHelper.timestampUrl ?? MoppConfiguration.getMoppLibConfiguration().tsaurl,
               withMoppConfiguration: MoppConfiguration.getMoppLibConfiguration())
    }
}
