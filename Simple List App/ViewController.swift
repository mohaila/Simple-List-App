//
//  ViewController.swift
//  Simple List App
//
//  Copyright © 2019 mohaila. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    private let companies = ["3M Canada Company", "Aboriginal Peoples Television Network Inc. / APTN", "Accenture Inc.", "AccorHotels", "ACL Services Ltd.", "Adobe Systems Canada Inc.", "Agriculture Financial Services Corporation / AFSC", "Air Canada", "Alberta Health Services / AHS", "ArcelorMittal Dofasco G.P.", "Bank of Canada", "BASF Canada Inc.", "BC Public Service", "Bell Canada", "Best Buy Canada Ltd.", "Canada Revenue Agency / CRA", "Canadian Heritage", "Canadian Nuclear Laboratories Ltd.", "Canadian Tire Corporation Limited", "Cargill Limited", "CBCL Limited", "Ceridian HCM Inc.",   "Children's Aid Society of Toronto", "CIBC", "Cisco Systems Canada Co.", "College of Physicians and Surgeons of British Columbia, The", "CWB National Leasing Inc.", "Desjardins Group / Mouvement des caisses Desjardins", "Diamond Schmitt Architects Inc.", "Digital Extremes Ltd.", "Emera Inc.", "Export Development Canada", "Fidelity Canada", "Ford Motor Company of Canada, Limited",
    ]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return companies.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let ident = "BasicCell"
        let cell = tableView.dequeueReusableCell(withIdentifier: ident, for: indexPath)
        
        // configure the cell
        cell.textLabel?.text = companies[indexPath.row]
        cell.imageView?.image = UIImage(named: "top")
        
        return cell
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
}

