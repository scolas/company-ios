//
//  CompanyProfileViewController.swift
//  Reps
//
//  Created by Scott Colas on 5/20/21.
//

import UIKit

class CompanyProfileViewController: UIViewController {
    
    private let company: Company
    
    //shows profile details
    //banner, name , phone -chat - more icon, user name password, account number pin
    private var bannerImage: UIImageView = {
        let image = UIImage(named: "test")
        let bImage = UIImageView(image: image)
        return bImage
    }()
    
    
    private var nameLabel: UILabel = {
        let label = UILabel()
        label.text = "Church"
        return label
    }()
    
    private var phoneLabel: UILabel = {
        let label = UILabel()
        label.text = "203-685-3074"
        return label
    }()
    private var phoneIcon: UIImageView = {
        let image = UIImage(systemName: "suit.heart.fill")
        let phoneIcon = UIImageView(image: image)
        return phoneIcon
    }()
    

    private var chatIcon: UIImageView = {
        let image = UIImage(systemName: "house")
        let imageView = UIImageView(image: image)
        return imageView
    }()
    
    private var usernameText: UITextView = {
        let text = UITextView()
        text.text = "Scolas"
        return text
    }()
    
    private var passwordText: UITextView = {
       let text = UITextView()
        text.text = "bancroft123"
        return text
    }()
    
    
    
    init(company: Company ){
        self.company = company
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemTeal
        title = company.companyName
        view.addSubview(bannerImage)
        view.addSubview(nameLabel)
        nameLabel.text = company.companyName
        view.addSubview(phoneLabel)
        view.addSubview(phoneIcon)
        view.addSubview(chatIcon)
        view.addSubview(usernameText)
        view.addSubview(passwordText)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        bannerImage.frame = CGRect(x: 5, y: 100, width: view.width-10, height: 250)
        phoneIcon.frame = CGRect(x: 80, y: bannerImage.bottom, width: 100, height: 100)
        chatIcon.frame = CGRect(x: phoneIcon.width+150, y: bannerImage.bottom, width: 100, height: 100)
        nameLabel.frame = CGRect(x: 100, y: chatIcon.bottom, width: 100, height: 100)
        phoneLabel.frame = CGRect(x: 100, y: nameLabel.bottom, width: 100, height: 100)
        usernameText.frame = CGRect(x: 50, y: phoneLabel.bottom+5, width: 100, height: 25)
        passwordText.frame = CGRect(x: 50, y: usernameText.bottom, width: 100, height: 25)
        
    }
    
    

   

}
