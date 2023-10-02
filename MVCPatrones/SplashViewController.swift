//
//  SplashViewController.swift
//  MVCPatrones
//
//  Created by ibautista on 2/10/23.
//

import UIKit

class SplashViewController: UIViewController {

    // MARK: - Outlets
    @IBOutlet weak var activityIndicator: UIActivityIndicatorView!
    
    // MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()

    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if(!activityIndicator.isAnimating){
            activityIndicator.startAnimating()
        }
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        activityIndicator.stopAnimating()
    }
    
    // Método de carga de datos:
    private func loadData() {
        DispatchQueue.main.asyncAfter(deadline: .now() + .seconds(3)) {
            let nextVC = HomeTableViewController()
            self.navigationController?.setViewControllers([nextVC], animated: true)
            
        }
    }


}
