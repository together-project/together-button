//
//  ServicesViewController.swift
//  together-button-develop
//
//  Created by otavio on 06/08/20.
//  Copyright © 2020 together. All rights reserved.
//

import UIKit

public class ServicesViewController: UIViewController {
    
    @IBOutlet weak var contentView: UIView!

    @IBOutlet weak var servicesTableView: UITableView!
    
    private let services = ServiceRepository.instance.retrieve()
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        self.setupLayout()
        
        self.servicesTableView.delegate = self
        self.servicesTableView.dataSource = self
    }
    
    private func setupLayout() {
        self.setupContentViewLayout()
    }
    
    private func setupContentViewLayout() {
        contentView.clipsToBounds = true
        contentView.layer.cornerRadius = 35
        contentView.layer.maskedCorners = [
            .layerMaxXMinYCorner,
            .layerMinXMinYCorner,
        ]
    }
    
    @IBAction func onBackButton(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    public func makeAPhoneCall(to number: String)  {
        let url: NSURL = URL(string: "TEL://" + number)! as NSURL
        UIApplication.shared.open(url as URL, options: [:], completionHandler: nil)
    }

}

extension ServicesViewController: UITableViewDataSource, UITableViewDelegate {
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.services.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ServicesTableViewCell", for: indexPath) as! ServicesTableViewCell
        cell.setup(service: services[indexPath.row])
        return cell
    }
    
    public func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        services[indexPath.row].number.call()
    }
    
}
