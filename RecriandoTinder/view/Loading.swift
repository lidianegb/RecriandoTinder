//
//  Loading.swift
//  RecriandoTinder
//
//  Created by Lidiane Gomes Barbosa on 16/07/20.
//  Copyright © 2020 Lidiane Gomes Barbosa. All rights reserved.
//

import UIKit


class Loading : UIView{
    
    let loadView: UIView = {
        let load = UIView()
        load.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        load.backgroundColor = UIColor(red: 218/255, green: 99/255, blue: 111/255, alpha: 1)
        load.layer.cornerRadius = load.frame.width / 2
        load.layer.borderWidth = 1
        load.layer.borderColor = UIColor.systemRed.cgColor
        
        return load
    }()
    
    let perfilImageView:UIImageView = {
        let image = UIImageView()
        image.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        image.layer.cornerRadius = 50
        image.layer.borderWidth = 5
        image.layer.borderColor = UIColor.systemBackground.cgColor
        image.clipsToBounds = true
        image.image = UIImage(named: "perfil")
        
        return image
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)

        addSubview(loadView)
        loadView.center = center
        
        addSubview(perfilImageView)
        perfilImageView.center = center
        
        self.animacao()
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func animacao(){
        UIView.animate(withDuration: 1.3, animations: {
            
            self.loadView.frame = CGRect(x: 0, y: 0, width: 250, height: 250)
            self.loadView.center = self.center
            self.loadView.layer.cornerRadius = self.loadView.frame.width / 2
            self.loadView.alpha = 0.3
            
        }) { (_) in
            self.loadView.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
            self.loadView.center = self.center
            self.loadView.layer.cornerRadius = self.loadView.frame.width / 2
            self.loadView.alpha = 1
            
            self.animacao()
        }
    }
    
    
}
