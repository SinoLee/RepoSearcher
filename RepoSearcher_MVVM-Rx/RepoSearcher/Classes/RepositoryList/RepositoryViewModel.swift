//
//  RepositoryViewModel.swift
//  RepoSearcher
//
//  Created by Taeyoun Lee on 2019/09/05.
//  Copyright © 2019 Taeyoun Lee. All rights reserved.
//

import Foundation

class RepositoryViewModel {
    let name: String
    let description: String
    let starsCountText: String
    let url: URL
    
    init(repository: Repository) {
        self.name = repository.fullName
        self.description = repository.description
        self.starsCountText = "⭐️ \(repository.starsCount)"
        self.url = URL(string: repository.url)!
    }
}
