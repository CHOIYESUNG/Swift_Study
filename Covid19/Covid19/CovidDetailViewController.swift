//
//  CovidDetailViewController.swift
//  Covid19
//
//  Created by Y3SUNG on 2022/08/31.
//

import UIKit

class CovidDetailViewController: UITableViewController {
    
    @IBOutlet weak var newCaseCell: UITableViewCell!
    @IBOutlet weak var totalCaseCell: UITableViewCell!
    @IBOutlet weak var recoveredCell: UITableViewCell!
    @IBOutlet weak var deathCell: UITableViewCell!
    @IBOutlet weak var percentageCell: UITableViewCell!
    @IBOutlet weak var overseasInflowCell: UITableViewCell!
    @IBOutlet weak var regionalOutbreakCell: UITableViewCell!
    
    var covideOverview: CovidOverView?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.configureView()
    }
    
    func configureView() {
        guard let covideOverview = self.covideOverview else { return }
        self.title = covideOverview.countryName
        self.newCaseCell.detailTextLabel?.text = "\(covideOverview.newCase)명"
        self.totalCaseCell.detailTextLabel?.text = "\(covideOverview.totalCase)명"
        self.recoveredCell.detailTextLabel?.text = "\(covideOverview.recovered)명"
        self.deathCell.detailTextLabel?.text = "\(covideOverview.death)명"
        self.percentageCell.detailTextLabel?.text = "\(covideOverview.percentage)%"
        self.overseasInflowCell.detailTextLabel?.text = "\(covideOverview.newFcase)명"
        self.regionalOutbreakCell.detailTextLabel?.text = "\(covideOverview.newCcase)명"
    }
}
