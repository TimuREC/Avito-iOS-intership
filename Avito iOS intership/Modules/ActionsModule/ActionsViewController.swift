//
//  ActionsViewController.swift
//  Avito iOS intership
//
//  Created by Timur Begishev on 31.12.2020.
//

import UIKit

class ActionsViewController: UIViewController, ActionsViewProtocol {
    
    var presenter: ActionsPresenterProtocol!
    let configurator: ActionsConfiguratorProtocol = ActionsConfigurator()
    
    let closeButton = UIButton()
    var actionsCollection: UICollectionView!
    let actionButton = UIButton()
    
    var actions = [Action]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurator.configure(with: self)
        presenter.configureView()
    }
    
    func setActionsCollection() {
        
    }
    
    func closeButtonClicked() {
        presenter.closeButtonClicked()
    }
    
    func actionButtonClicked() {
        presenter.actionButtonClicked()
    }
    
    override func loadView() {
        let view = UIView()
        view.backgroundColor = .white
        self.view = view
    }
    
    override var prefersStatusBarHidden: Bool {
        return true
    }

}

extension ActionsViewController: UICollectionViewDelegateFlowLayout {
    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return CGSize(width: 100, height: 100)
//    }
    
}

extension ActionsViewController: UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, viewForSupplementaryElementOfKind kind: String, at indexPath: IndexPath) -> UICollectionReusableView {
        guard kind == UICollectionView.elementKindSectionHeader else { fatalError() }
        guard let headerView = collectionView.dequeueReusableSupplementaryView(ofKind: kind, withReuseIdentifier: ActionsCollectionHeaderView.reuseId, for: indexPath) as? ActionsCollectionHeaderView else { fatalError() }
        return headerView
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return actions.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: ActionCell.reuseId, for: indexPath) as! ActionCell
        
        cell.cellImage.image = UIImage(data: actions[indexPath.item].image)
        cell.cellTitle.text = actions[indexPath.item].title
        cell.cellDescription.text = actions[indexPath.item].listDescription
        cell.cellPrice.text = actions[indexPath.item].price
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
    
}

extension ActionsViewController {
    
    func setupCloseButton() {
        closeButton.translatesAutoresizingMaskIntoConstraints = false
        closeButton.setImage(UIImage(named: "CloseIconTemplate"), for: .normal)
        view.addSubview(closeButton)
        
        closeButton.heightAnchor.constraint(equalToConstant: 20).isActive = true
        closeButton.widthAnchor.constraint(equalToConstant: 20).isActive = true
        closeButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 10).isActive = true
        closeButton.topAnchor.constraint(equalTo: view.topAnchor, constant: 15).isActive = true
    }
    
    func setupActionsCollection() {
        let layout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.sectionInset = UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10)
        layout.headerReferenceSize = CGSize(width: (UIScreen.main.bounds.size.width - 20), height: 100)
        layout.itemSize = CGSize(width: UIScreen.main.bounds.size.width - 20, height: 150)
        
        
        
        actionsCollection = UICollectionView(frame: CGRect.zero, collectionViewLayout: layout)
        actionsCollection.translatesAutoresizingMaskIntoConstraints = false
        actionsCollection.backgroundColor = .white
        actionsCollection.register(ActionCell.self, forCellWithReuseIdentifier: ActionCell.reuseId)
        actionsCollection.register(ActionsCollectionHeaderView.self, forSupplementaryViewOfKind: UICollectionView.elementKindSectionHeader, withReuseIdentifier: ActionsCollectionHeaderView.reuseId)
        view.addSubview(actionsCollection)
        
        actionsCollection.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
        actionsCollection.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
        actionsCollection.topAnchor.constraint(equalTo: closeButton.bottomAnchor, constant: 5).isActive = true
        actionsCollection.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        actionsCollection.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 75, right: 0)
        
        actionsCollection.delegate = self
        actionsCollection.dataSource = self
    }
    
    func setupActionButton() {
        actionButton.translatesAutoresizingMaskIntoConstraints = false
        actionButton.backgroundColor = #colorLiteral(red: 0, green: 0.6762664914, blue: 1, alpha: 1)
        actionButton.layer.cornerRadius = 5
        actionButton.setTitle("Выбрать", for: .normal)
        actionButton.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        actionButton.setTitleColor(.white, for: .normal)
        view.addSubview(actionButton)
        
        actionButton.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -15).isActive = true
        actionButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 15).isActive = true
        actionButton.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -15).isActive = true
        actionButton.heightAnchor.constraint(equalToConstant: 45).isActive = true
    }
    
}
