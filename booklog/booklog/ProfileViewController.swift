//
//  ProfileViewController.swift
//  booklog
//
//  Created by Landon Rohatensky on 2017-03-18.
//  Copyright © 2017 tastytreats. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    @IBOutlet var clubCollectionView: UICollectionView?
    @IBOutlet var bookTableView: UITableView?
    @IBOutlet var profileNameLabel: UILabel?
    @IBOutlet var profilePhotoImageView: UIImageView?

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

extension ProfileViewController: UICollectionViewDataSource
{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "routeFilterCell", for: indexPath) as! ClubCollectionViewCell
        if(indexPath.row == 0) {

        } else {

        }
        return cell
    }
}

extension ProfileViewController: UICollectionViewDelegate {
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
    }
}

extension ProfileViewController: UITableViewDataSource
{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "bookCell", for: indexPath) as UITableViewCell
        
        return cell
    }
}

class ClubCollectionViewCell : UICollectionViewCell {
    @IBOutlet var clubLabel: UILabel?
}

class BookTableViewCell : UITableViewCell {
    @IBOutlet var bookNameLabel: UILabel?
    @IBOutlet var bookAuthorLabel: UILabel?
    @IBOutlet var bookCompletionPercentLabel: UILabel?
    @IBOutlet var bookCompletionPageLabel: UILabel?
}

