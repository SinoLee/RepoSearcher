//
//  LanguageListViewModel.swift
//  RepoSearcher
//
//  Created by Taeyoun Lee on 2019/09/05.
//  Copyright © 2019 Taeyoun Lee. All rights reserved.
//

import RxSwift

class LanguageListViewModel {
    
    // MARK: - Inputs
    
    let selectLanguage: AnyObserver<String>
    let cancel: AnyObserver<Void>
    
    // MARK: - Outputs
    
    let languages: Observable<[String]>
    let didSelectLanguage: Observable<String>
    let didCancel: Observable<Void>
    
    init(githubService: GithubService = GithubService()) {
        self.languages = githubService.getLanguageList()
        
        let _selectLanguage = PublishSubject<String>()
        self.selectLanguage = _selectLanguage.asObserver()
        self.didSelectLanguage = _selectLanguage.asObservable()
        
        let _cancel = PublishSubject<Void>()
        self.cancel = _cancel.asObserver()
        self.didCancel = _cancel.asObservable()
    }
}
