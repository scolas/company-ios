//
//  CompanyTableViewCell.swift
//  Reps
//
//  Created by Scott Colas on 5/14/21.
//

import UIKit
protocol CompanyTableViewCellDelegate: AnyObject{
    func companyTableViewCell(_ cell: CompanyTableViewCell,
                              didTapHomeComapany viewModel: CompanyCellViewModel)
}
class CompanyTableViewCell: UITableViewCell {
    static let identifier = "CompanyTableViewCell"
    
    weak var delegate: CompanyTableViewCellDelegate?
    
    private var viewModel: CompanyCellViewModel?
    
    private let lable: UILabel = {
        let label = UILabel()
        label.numberOfLines = 0
        label.font = .systemFont(ofSize: 18)
        return label
        
    }()
    override func layoutSubviews() {
        super.layoutSubviews()
        lable.frame = contentView.bounds
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        contentView.clipsToBounds = true
        contentView.addSubview(lable)
        let tap = UITapGestureRecognizer(target: self, action: #selector(didTapCompany))
        lable.addGestureRecognizer(tap)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @objc func didTapCompany(){
        guard let vm = viewModel else {
            return
        }
        delegate?.companyTableViewCell(self, didTapHomeComapany: vm)
    }
    
    public func configure(with viewModel: CompanyCellViewModel){
        self.viewModel = viewModel
        lable.text = viewModel.companyName
    }
}
