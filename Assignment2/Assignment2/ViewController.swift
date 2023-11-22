//
//  ViewController.swift
//  Assignment2
//
//  Created by Jaideep Singh on 12/10/23.
//

import UIKit

class ViewController: UIViewController ,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
   @IBOutlet weak var collectionView: UICollectionView!
    private var numbers: [NumberModel] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
        for number in 1...100 {
            let numberModel = NumberModel(number: number)
            numbers.append(numberModel)
        }
    }
        private func setupUI(){
            collectionView.backgroundColor = .cyan
            collectionView.delegate = self
            collectionView.dataSource = self
            let cellNib = UINib(nibName: "NumberCollectionViewCell", bundle: nil)
            collectionView.register(cellNib, forCellWithReuseIdentifier: "NumberCell")
        }
        
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return numbers.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "NumberCell", for: indexPath) as! NumberCollectionViewCell
        let num = numbers[indexPath.row]
        cell.configure(with: num)
        
        if num.number % 2 == 1 {
           
            cell.contentView.backgroundColor = .red
        } else {
           
            cell.contentView.backgroundColor = .cyan
        }

        return cell
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
            return CGSize(width: collectionView.bounds.width, height: 30)
        }
    
    

    
    
    


}

