//
//  PreferenceModel.swift
//  ProjectDraw
//
//  Created by SSB on 09/09/2020.
//  Copyright © 2020 SSB. All rights reserved.
//

import Foundation

class PreferenceModel: NSObject{
    
    func insertItems(beer_id: Int, completion: @escaping (Bool)->()) {
        var urlPath = URL_PATH + "IOS/beer_preferenceInsert_ios.jsp"
        let urlAdd = "?User_seq=\(LOGGED_IN_SEQ)&beer_id=\(beer_id)"
        urlPath += urlAdd
        // 한글 url encoding
        urlPath = urlPath.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed)!
        
        let url: URL = URL(string: urlPath)!
        let defaultSession = Foundation.URLSession(configuration: URLSessionConfiguration.default)
        
        let task = defaultSession.dataTask(with: url){(data, response, error) in
            if error != nil {
                completion(false)
            } else {
                completion(true)
            }
        }
        task.resume()
    }
    
    func deleteItems(beer_id: Int, completion: @escaping (Bool)->()) {
        var urlPath = URL_PATH + "IOS/beer_preferenceDelete_ios.jsp"
        let urlAdd = "?User_seq=\(LOGGED_IN_SEQ)&beer_id=\(beer_id)"
        urlPath += urlAdd
        // 한글 url encoding
        urlPath = urlPath.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed)!
        
        let url: URL = URL(string: urlPath)!
        let defaultSession = Foundation.URLSession(configuration: URLSessionConfiguration.default)
        
        let task = defaultSession.dataTask(with: url){(data, response, error) in
            if error != nil {
                completion(false)
            } else {
                completion(true)
            }
        }
        task.resume()
    }
    
    
    func updateUserPriorityItems(user_priority: String, completion: @escaping (Bool)->()) {
        var urlPath = URL_PATH + "IOS/priorityUpdate_ios.jsp"
        let urlAdd = "?user_priority=\(user_priority)&seq=\(LOGGED_IN_SEQ)"
        urlPath += urlAdd
        // 한글 url encoding
        urlPath = urlPath.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed)!
        
        let url: URL = URL(string: urlPath)!
        let defaultSession = Foundation.URLSession(configuration: URLSessionConfiguration.default)
        
        let task = defaultSession.dataTask(with: url){(data, response, error) in
            if error != nil {
                completion(false)
            } else {
                completion(true)
            }
        }
        task.resume()
    }
    
    func UserDelete(completion: @escaping (Bool)->()) {
        var urlPath = URL_PATH + "IOS/userDelete_ios.jsp"
        let urlAdd = "?seq=\(LOGGED_IN_SEQ)"
        urlPath += urlAdd
        // 한글 url encoding
        urlPath = urlPath.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed)!
        
        let url: URL = URL(string: urlPath)!
        let defaultSession = Foundation.URLSession(configuration: URLSessionConfiguration.default)
        
        let task = defaultSession.dataTask(with: url){(data, response, error) in
            if error != nil {
                completion(false)
            } else {
                completion(true)
            }
        }
        task.resume()
    }
    
    
    
}
