//
//  RestaurantsListViewModel.swift
//  MVVMRxSwift
//
//  Created by Varis Darasirikul on 9/11/2021.
//

import Foundation
import RxSwift

final class RestaurantsListViewModel {
    let title = "Restaurants"
    
    private let restaurantService: RestaurantServiceProtocool
    
    init(restaurantService: RestaurantServiceProtocool = RestaurantService()) {
        self.restaurantService = restaurantService
    }
    
    func fetchRestaurantViewModels() -> Observable<[RestaurantViewModel]> {
        restaurantService.fetchRestaurant().map{ $0.map { RestaurantViewModel(restaurant: $0) } }
    }
}
