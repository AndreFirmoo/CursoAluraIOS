//
//  ViewController.swift
//  Alura VIagens
//
//  Created by Andre Firmo on 25/12/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    let listaViagens: Array<String> = ["Rio de Janeiro","Ceará", "São Paulo"]
    
    override func viewDidLoad() {
        self.tableView.dataSource = self
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

extension ViewController: UITableViewDataSource{
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaViagens.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = listaViagens[indexPath.row]
        return cell
    }
    
    
}
