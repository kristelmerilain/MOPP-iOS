//
//  DataFilePreviewViewController.swift
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
import WebKit

class DataFilePreviewViewController : MoppViewController {
    @IBOutlet weak var webView: UIWebView!
    var previewFilePath: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let url = URL(fileURLWithPath: previewFilePath)
        setupNavigationItemForPushedViewController(title: url.lastPathComponent)
        webView.loadRequest(URLRequest(url: url))
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        LandingViewController.shared.presentButtons([])
    }
}
