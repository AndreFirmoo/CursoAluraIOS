//
//  ViewController.swift
//  Alura VIagens
//
//  Created by Andre Firmo on 25/12/20.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var viewHoteis: UIView!
    @IBOutlet weak var viewPacotes: UIView!
    @IBOutlet weak var tableView: UITableView!
    let listaViagens: Array<Viagem> = ViagemDAO().retornaTodasAsViagens()
    
    override func viewDidLoad() {
        self.viewPacotes.layer.cornerRadius = 10
        self.viewHoteis.layer.cornerRadius = 10
        self.tableView.dataSource = self
        self.tableView.delegate = self
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

extension ViewController: UITableViewDataSource{
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return listaViagens.count
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ViagemTableViewCell
        let viagemAtual = listaViagens[indexPath.row]
        cell.ImagemViagem.image = UIImage(named: viagemAtual.caminhoImagem)
        cell.QuantidadeDiasLB.text = viagemAtual.quantidadeDeDias
        cell.TituloLB.text = viagemAtual.titulo
        cell.precoLB.text = viagemAtual.preco
        return cell
    }
}

extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 175
    }
    
}
