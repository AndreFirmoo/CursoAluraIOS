//
//  PacoteViagensViewController.swift
//  Alura VIagens
//
//  Created by Andre Firmo on 26/12/20.
//

import UIKit

class PacoteViagensViewController: UIViewController {

    @IBOutlet weak var colecaoDePacotes: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        colecaoDePacotes.dataSource = self
        colecaoDePacotes.delegate = self
    }
}
extension PacoteViagensViewController : UICollectionViewDelegate{
    
}
extension PacoteViagensViewController : UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "celulaPacote", for: indexPath) as! CelulaViagemCollectionViewCell
        return cell
    }
    
    
}
