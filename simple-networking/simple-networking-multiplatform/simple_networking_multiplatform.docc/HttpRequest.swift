//
//  HttpRequest.swift
//  
//
//  Created by Marko Randjelovic on 6.3.23..
//

import Foundation


enum HttpMethod {
    case get, post, put, delete, patch
}

struct Request {
    
    func fetch(_ request: HttpRequest) -> Result<ResponseType, Error> {
        let request = makeRequest(from: request)
        URLSession.shared.data(for: request)
    }
    
    func makeRequest(from request: HttpRequest) -> URLRequest {
        URLRequest(url: URL(string: "www.google.com"))
    }
}

protocol HttpRequest {
    let path: String {get}
    let method: HttpMethod {get}
}
