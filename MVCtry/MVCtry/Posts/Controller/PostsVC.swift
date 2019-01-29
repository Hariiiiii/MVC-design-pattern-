//
//  ViewController.swift
//  MVCtry
//
//  Created by Harinarayanan Janardhanan on 10/8/18.
//  Copyright © 2018 Harinarayanan Janardhanan. All rights reserved.
//

import UIKit

class PostsVC: UIViewController {
    
    
    @IBOutlet weak var tableView: UITableView!
    var posts = [Post]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        PostNetworking.getPosts { (response) in
            let posts = response.posts
            self.posts =  posts
            self.tableView.reloadData()
        }
    }


}

extension PostsVC: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "cell") as? PostCell else{return UITableViewCell()
            
        }
        let post = posts[indexPath.row]
        cell.configure(withPost: post)
        return cell
    }
}

