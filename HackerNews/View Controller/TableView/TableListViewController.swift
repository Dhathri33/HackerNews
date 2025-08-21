//
//  TableListViewController.swift
//  HackerNews
//
//  Created by Dhathri Bathini on 8/21/25.
//

import UIKit

struct User {
    var id: Int
    var name: String
    var email: String
    var city: String
}

class TableListViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var listTableView: UITableView!
    
    var userList: [User] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        listTableView.dataSource = self
        listTableView.delegate = self
        
        let objUser1: User = User(id: 1, name: "Dhathri", email: "dhathri@gmail.com", city: "Hyderabad")
        let objUser2: User = User(id: 2, name: "Aditi", email: "aditi@gmail.com", city: "Mumbai")
        let objUser3: User = User(id: 3, name: "Anu", email: "anu@gmail.com", city: "Bengaluru")
        let objUser4: User = User(id: 4, name: "Sruthi", email: "sruthi@gmail.com", city: "Chennai")
        userList.append(objUser1)
        userList.append(objUser2)
        userList.append(objUser3)
        userList.append(objUser4)
        
    }
    
    // MARK: Data Source Methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        userList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as? Cell else {
            return UITableViewCell()
        }
        
        let user: User = userList[indexPath.row]
        cell.cellTitleLabel.text = user.name
        cell.cellSubtitleLabel.text = user.email
        return cell
    }
    
    // MARK: Delegate Methods
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let objUser: User = userList[indexPath.row]
        print("Selected User Details: ")
        print("Name: \(objUser.name)")
        print("Email: \(objUser.email)")
        print("City: \(objUser.city)")
    }
}
