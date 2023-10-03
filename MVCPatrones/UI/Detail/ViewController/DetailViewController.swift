//
//  DetailViewController.swift
//  MVCPatrones
//
//  Created by ibautista on 3/10/23.
//

import UIKit

class DetailViewController: UIViewController {
    var characterData: CharacterModel?
    
    // Outlets
    @IBOutlet weak var imageDetail: UIImageView!
    @IBOutlet weak var nameDetail: UILabel!
    @IBOutlet weak var descriptionDetail: UITextView!
    
    // Livevcycle
    override func viewDidLoad() {
        super.viewDidLoad()
        updateView(characterData: characterData)
        

        // Do any additional setup after loading the view.
    }
    
    func updateView(characterData: CharacterModel?) {
        update(name: characterData?.name)
        update(image: characterData?.image)
        update(description: characterData?.description)
    }
    
    // Metodos privados:
    func update(name: String?){
        nameDetail.text = name ?? ""
    }
    
    func update(image: String?) {
        imageDetail.image = UIImage(named: image ?? "")
    }
    
    func update(description: String?) {
        descriptionDetail.text = description ?? ""
    }
}
