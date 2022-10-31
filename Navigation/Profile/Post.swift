//
//  Post.swift
//  Navigation
//
//  Created by Евгений Дроздов on 17.10.2022.
//

import UIKit


struct Post {
    
    var author: String
    var image: String
    var description: String
    var likes: Int
    var views: Int
    
}

struct MassiveOfPosts {
    
    static let viewModel: [Post] = [
        Post(author: "Цельнометаллическая оболочка", image: "Post1", description: "Военная драма", likes: 203, views: 144),
        Post(author: "Кольца силы", image: "Post2", description: "Фентези", likes: 121, views: 188),
        Post(author: "Ведьмак", image: "Post3", description: "Сериал про Геральта из Ривии", likes: 17, views: 138),
        Post(author: "Робокоп", image: "Post4", description: "Фильм про киборга", likes: 186, views: 291)]
    
}
    
    
    
    
    struct PostImage {
        var image: String
        
        static func setupImages() -> [PostImage]{
            let data = ["image1","image2","image3","image4","image5","image6","image7","image8","image9","image10","image11","image12","image13","image14","image15","image16","image17","image18","image19","image20",]
            var tempImage = [PostImage]()
            for (_, names) in data.enumerated() {
                tempImage.append(PostImage(image: names))
            }
            return tempImage
        }
    }



