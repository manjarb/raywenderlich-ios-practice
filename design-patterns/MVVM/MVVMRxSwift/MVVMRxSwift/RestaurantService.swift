//
//  RestaurantService.swift
//  MVVMRxSwift
//
//  Created by Varis Darasirikul on 9/11/2021.
//

import Foundation
import RxSwift

protocol RestaurantServiceProtocool {
    func fetchRestaurant() -> Observable<[Restaurant]>
}

class RestaurantService: RestaurantServiceProtocool {
    func fetchRestaurant() -> Observable<[Restaurant]> {
        return Observable.create{ observer -> Disposable in
            guard let path = Bundle.main.path(forResource: "restaurants", ofType: "json") else {
                observer.onError(NSError(domain: "", code: -1, userInfo: nil))
                print("Err 01")
                return Disposables.create {}
            }
            
            do {
                let data = try Data(contentsOf: URL(fileURLWithPath: path), options: .mappedIfSafe)
                let restaurants = try JSONDecoder().decode([Restaurant].self, from: data)
                
                observer.onNext(restaurants)
            } catch {
                print("err 02")
                observer.onError(error)
            }
            
            return Disposables.create { }
        }
    }
}
