//
//  RestaurantsViewModel.swift
//  MVVMRxSwift
//
//  Created by Varis Darasirikul on 9/11/2021.
//

import Foundation

struct RestaurantViewModel {
    
    private let restaurant: Restaurant
    
    var displayText: String {
        return restaurant.name + " - " + restaurant.cuisine.rawValue.capitalized
    }
    
    init(restaurant: Restaurant) {
        self.restaurant = restaurant
    }
}
