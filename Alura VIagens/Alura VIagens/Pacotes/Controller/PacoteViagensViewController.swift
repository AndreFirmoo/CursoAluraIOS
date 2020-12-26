//
//  PacoteViagensViewController.swift
//  Alura VIagens
//
//  Created by Andre Firmo on 26/12/20.
//

import UIKit

class PacoteViagensViewController: UIViewController {

    let listaViagens: Array<Viagem> = ViagemDAO().retornaTodasAsViagens()
    
    
    @IBOutlet weak var colecaoDePacotes: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        colecaoDePacotes.dataSource = self
        colecaoDePacotes.delegate = self
    }
}
extension PacoteViagensViewController : UICollectionViewDelegate{
    

}

extension PacoteViagensViewController: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        let largura = collectionView.bounds.width / 2
        return CGSize(width: largura-15, height: 160)
    }
}

extension PacoteViagensViewController : UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return listaViagens.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "celulaPacote", for: indexPath) as! CelulaViagemCollectionViewCell
        
        let dados = listaViagens[indexPath.item]
        
        cell.CidadeImagem.image = UIImage(named: dados.caminhoImagem)
        cell.CidadeLb.text = dados.titulo
        cell.PrecoLB.text = dados.preco
        cell.QuantidadeDeDiasLB.text = dados.quantidadeDeDias
        
        cell.layer.borderWidth = 0.5
        cell.layer.borderColor = CGColor(red: 85.0/255, green: 85.0/255, blue: 85.0/255, alpha: 1)
        cell.layer.cornerRadius = 10
        
        return cell
    }
}

