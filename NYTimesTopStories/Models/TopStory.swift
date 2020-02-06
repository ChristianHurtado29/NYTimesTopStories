//
//  TopStory.swift
//  NYTimesTopStoriesTests
//
//  Created by Christian Hurtado on 2/6/20.
//  Copyright © 2020 Brendon Cecilio. All rights reserved.
//

import Foundation

struct TopStories: Codable {
    let section: String
    let lastUpdated: String
    let results: [Article]
    private enum CodingKeys: String, CodingKey {
        case section
        case lastUpdated = "last_updated"
        case results
    }
}

struct Article: Codable{
    let section: String
    let title: String
    let abstract: String
    let publishedDate: String
    private enum CodingKeys: String, CodingKey {
        case section
        case title
        case abstract
        case publishedDate = "published_date"
    }
}

struct Multimedia: Codable {
    let url: String
    let format: String
    let height: Double
    let width : Double
    let caption: String
}
