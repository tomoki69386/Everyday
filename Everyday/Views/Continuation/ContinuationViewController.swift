//
//  ContinuationViewController.swift
//  Everyday
//
//  Created by 築山朋紀 on 2020/08/26.
//

import UIKit

class ContinuationViewController: UIViewController, Injectable {
    
    var collectionView: UICollectionView!
    
    struct Dependency {
        
    }
    
    required init(dependency: Dependency) {
        super.init(nibName: nil, bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .systemBackground
        collectionView = UICollectionView(frame: view.bounds, collectionViewLayout: ContinuationViewController.viewLayout())
        collectionView.backgroundColor = .systemBackground
        collectionView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        collectionView.register(UICollectionViewCell.self, forCellWithReuseIdentifier: "cell")
        collectionView.dataSource = self
        view.addSubview(collectionView)
    }
}

extension ContinuationViewController: UICollectionViewDataSource {
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 10
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath)
        cell.backgroundColor = [UIColor.red, UIColor.green, UIColor.blue].randomElement()
        return cell
    }
}

extension ContinuationViewController {
    static func viewLayout() -> UICollectionViewLayout {
        return UICollectionViewCompositionalLayout { section, _ in
            let itemLayout = NSCollectionLayoutItem(
                layoutSize: .init(
                    widthDimension: .fractionalWidth(1.428571429),
                    heightDimension: .fractionalHeight(1)
                )
            )
            let groupLayout = NSCollectionLayoutGroup.horizontal(
                layoutSize: .init(
                    widthDimension: .fractionalWidth(1),
                    heightDimension: .fractionalHeight(1.666666667)
                ),
                subitems: [itemLayout]
            )
            let sectionLayout = NSCollectionLayoutSection(group: groupLayout)
            sectionLayout.orthogonalScrollingBehavior = .groupPagingCentered
            return sectionLayout
        }
    }
}
