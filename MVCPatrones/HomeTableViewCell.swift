//
//  HomeTableViewCell.swift
//  MVCPatrones
//
//  Created by ibautista on 2/10/23.
//

import UIKit

class HomeTableViewCell: UITableViewCell {

    // MARK: Outlets
    @IBOutlet weak var viewHomeCell: UIView!
    @IBOutlet weak var imageHomeCell: UIImageView!
    @IBOutlet weak var nameHomeCell: UILabel!
    
    
    override func awakeFromNib() { // Se llama la primera vez y prepara la celda
        super.awakeFromNib()
        viewHomeCell.layer.cornerRadius = 4.0
        viewHomeCell.layer.shadowColor = UIColor.gray.cgColor
        viewHomeCell.layer.shadowOffset = .zero
        viewHomeCell.layer.shadowOpacity = 0.7
        viewHomeCell.layer.shadowRadius = 4.0
        
        imageHomeCell.layer.cornerRadius = 4.0
        imageHomeCell.layer.opacity = 0.7
    }
    
    override func prepareForReuse() {  // limpia las celdas para ir cargando mas datos, no las carga todas de golpe
        super.prepareForReuse()
        imageHomeCell = nil
        nameHomeCell = nil
    }
    
    func updateViews() {
        
    }
    
}
