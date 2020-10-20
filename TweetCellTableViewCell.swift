//
//  TweetCellTableViewCell.swift
//  Twitter
//
//  Created by Emmanuel Bangura on 10/15/20.
//  Copyright © 2020 Dan. All rights reserved.
//

import UIKit

class TweetCellTableViewCell: UITableViewCell {

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    @IBOutlet weak var profileImageView: UIImageView!
    @IBOutlet weak var userNameLabel: UILabel!
    
    @IBOutlet weak var tweetContent: UILabel!
    
    
    @IBOutlet weak var retweetButton: UIButton!
    
    @IBAction func retweet(_ sender: Any) {
        
        var favorited: Bool = false
        
        func setFavorite(_isFavorited:Bool){
            favorited = _isFavorited
            if (favorited) {
                favButton.setImage(UIImage(named:"favor-icon-red"), for: UIControl.State.normal)
            }
        }
    }
    
    
    @IBOutlet weak var favButton: UIButton!
    
    @IBAction func favoriteTweet(_ sender: Any) {
        let tobeFavorited = !favorited
        if (tobeFavorited)
        {
            TwitterAPICaller.client?favoriteTweet(tweetId: tweetId, success: {setFavorite(true)}, failure: {(errror) in
                print("Favorite did not succeed: \(error)")
                
            })
            else{
                TwitterAPICaller.client?.unfavoriteTweettweetId(tweetID: success: {self.setFavorite(false) }, failure: { (error) in
                    print("Unfavorite did not succeed: \(error)")
                    
                })
    
    }
    
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
