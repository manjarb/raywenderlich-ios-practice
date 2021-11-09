//
//  ViewController.swift
//  MVVMRxSwift
//
//  Created by Varis Darasirikul on 8/11/2021.
//

import UIKit
import RxSwift
import RxCocoa

class ViewController: UIViewController {
    
    let disposeBag = DisposeBag()
    @IBOutlet weak var tableView: UITableView!
    
    private var viewModel = RestaurantsListViewModel()
    
//    init(coder: NSCoder, viewModel: RestaurantsListViewModel) {
//        self.viewModel = viewModel
//        super.init(coder: coder)
//    }
//
//    required init?(coder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        viewModel.fetchRestaurantViewModels().bind(to: tableView.rx.items(cellIdentifier: "cell")) {
            index, viewModel, cell in
            cell.textLabel?.text = viewModel.displayText
        }.disposed(by: disposeBag)
    }

    
}

