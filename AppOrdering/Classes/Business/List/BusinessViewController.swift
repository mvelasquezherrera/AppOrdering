//
//  BusinessViewController.swift
//  AppOrdering
//
//  Created by Marcelo Stefano Velasquez Herrera on 17/03/24.
//

import UIKit

class BusinessViewController: UIViewController {
    
    @IBOutlet private weak var tlvBusiness: UITableView!
    
    private var listAdapter: ListBusinessAdapter!
    private var presenter: BusinessViewPresenterProtocol!
    
    lazy var refreshControl: UIRefreshControl = {
        let resfresh = UIRefreshControl()
        resfresh.addTarget(self, action: #selector(self.pullToRefresh(_:)), for: .valueChanged)
        return resfresh
    }()

}

extension BusinessViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Business"
        self.navigationController?.navigationBar.prefersLargeTitles = true
        self.presenter = BusinessViewPresenter(controller: self)
        self.listAdapter = ListBusinessSimpleAdapter(controller: self)
        self.presenter.didLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
}

extension BusinessViewController {
    
    @IBAction func pullToRefresh(_ sender: UIRefreshControl) {
        self.presenter.pullToRefresh()
    }
}

extension BusinessViewController: BusinessViewProtocol {
    
    func showLoading(_ isShow: Bool) {
        DispatchQueue.main.async {
            isShow ? self.refreshControl.beginRefreshing() : self.refreshControl.endRefreshing()
        }
    }
    
    func addPullToRefresh() {
        self.tlvBusiness.addSubview(self.refreshControl)
    }
    
    func setupAdapters() {
        self.listAdapter.setTableView(self.tlvBusiness)
    }
    
    func reloadTableWithData(_ arrayData: [Any]) {
        DispatchQueue.main.async {
            self.listAdapter.arrayData = arrayData
            self.tlvBusiness.reloadData()
        }
    }
}
