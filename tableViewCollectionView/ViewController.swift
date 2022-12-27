//
//  ViewController.swift
//  tableViewCollectionView
//
//  Created by Bjit on 12/12/22.
//

import UIKit

class ViewController: UIViewController {
    let item: [String] = ["item1","item2","item3","item4","item5","item6","item7"]
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
        tableView.dataSource = self
        // Do any additional setup after loading the view.
    }
}
extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return 1
        }
        return item.count
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0{
            return "First Sec"
        }else{
            return "Sceond Sec"
        }
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0{
        let cell = tableView.dequeueReusableCell(withIdentifier: "firstSection", for: indexPath)
            return cell
            
        }
        else {
        let cell = tableView.dequeueReusableCell(withIdentifier: "secSection", for: indexPath) as! secTwoTableViewCell
            cell.uiView.backgroundColor = UIColor.systemRed
            cell.labelView.text = item[indexPath.row]
            return cell
            
        }
    }
    
    
}
extension ViewController: UITableViewDelegate{
    
}
