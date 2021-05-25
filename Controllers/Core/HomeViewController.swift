//
//  HomeViewController.swift
//  Reps
//
//  Created by Scott Colas on 3/28/21.
//

import UIKit

final class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    

    private let noActivityLabel: UILabel = {
        let label = UILabel()
        label.text = "No Companies"
        label.textColor = .secondaryLabel
        label.textAlignment = .center
        label.isHidden = true
        return label
    }()
    
    private var models: [Company] = []
    
    private var viewModels: [CompanyCellViewModel] = []
    private let tableView: UITableView = {
        let table = UITableView(frame: .zero, style: .grouped)
        table.register(CompanyTableViewCell.self, forCellReuseIdentifier: CompanyTableViewCell.identifier)
        return table
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemPink
        
        view.addSubview(tableView)
        tableView.delegate = self
        tableView.dataSource = self
        fetchNotifications()
        
       
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        tableView.frame = view.bounds
    }
    
    private func fetchNotifications(){
        
        
        
        self.models = []
        self.createViewModels()
        
    }
    
    private func createViewModels(){
        viewModels.append(
            CompanyCellViewModel(companyName: "Elevation Worship",
                                 profilePictureUrl: URL(fileURLWithPath: ""),
                                 date: "5/20/21"
            )
        )
        viewModels.append(
            CompanyCellViewModel(companyName: "Transformation Chruch",
                                 profilePictureUrl: URL(fileURLWithPath: ""),
                                 date: "5/20/21"
            )
        )
        viewModels.append(
            CompanyCellViewModel(companyName: "1416 Fairfiled ave",
                                 profilePictureUrl: URL(fileURLWithPath: ""),
                                 date: "5/20/21"
            )
        )
        viewModels.forEach{ model in
            models.append(
                Company(id: "1", companyName: model.companyName, companyWebsite: "soctt.colas", companyPhone: "", username: "", password: "", email: "", createDate: "", postUrlString: "")
            )

        }
    }

    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModels.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(
                withIdentifier: CompanyTableViewCell.identifier,
                for: indexPath
        ) as? CompanyTableViewCell else {
            fatalError()
        }
        cell.configure(with: viewModels[indexPath.row])
        cell.delegate = self
        return cell
        
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = CompanyProfileViewController(company: models[indexPath.row])
        self.navigationController?.pushViewController(vc, animated: true)
    }

}

extension HomeViewController: CompanyTableViewCellDelegate{
    func companyTableViewCell(_ cell: CompanyTableViewCell, didTapHomeComapany viewModel: CompanyCellViewModel) {
        //let vc = NotificationViewController()
      //  self.navigationController?.pushViewController(vc, animated: true)
    }
    
 
    
    
}
