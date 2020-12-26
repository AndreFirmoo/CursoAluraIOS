//
//  Viagens.swift
//  Alura VIagens
//
//  Created by Andre Firmo on 25/12/20.
//

import UIKit

class Viagem: NSObject {
    let titulo: String
    let quantidadeDeDias: String
    let preco: String
    let caminhoImagem: String
    
    init(titulo: String, quantidadeDeDias: String, preco: String, caminhoImagem: String) {
        self.titulo = titulo
        self.quantidadeDeDias = quantidadeDeDias
        self.preco = preco
        self.caminhoImagem = caminhoImagem
    }
}
