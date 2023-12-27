//
//  APIService.swift
//  Ghibli
//
//  Created by Deonte Kilgore on 12/26/23.
//

import Foundation

struct APIService {
    enum NetworkError: Error {
        case invalidResponse
        case decodingError
        case invalidURL
    }
    
    private let baseURL = "https://ghibliapi.dev/films/"
    private let session: URLSession
    private let sessionConfiguration: URLSessionConfiguration
    private let decoder = JSONDecoder()
    
    init() {
        self.sessionConfiguration = URLSessionConfiguration.default
        self.session = URLSession(configuration: sessionConfiguration)
        self.decoder.keyDecodingStrategy = .convertFromSnakeCase
    }
    
    func getFilms() async throws -> [Film] {
        // Builds URL string to retrieve all Ghibli Movies
        let urlString = baseURL
        // Creates URL from String
        guard let url = URL(string: urlString) else { throw NetworkError.invalidURL }
        // Network Request
        let (data, response) = try await session.data(from: url)
        // Checks for valid API response
        guard let httpResponse = response as? HTTPURLResponse,
              httpResponse.statusCode == 200 else { throw NetworkError.invalidResponse }
        // Decodes valid data, to Film swift type.
        guard let films = try? decoder.decode([Film].self, from: data) else { throw NetworkError.decodingError }
        // Returns Array of films.
        return films
    }
    
    func downloadImageData(from urlString: String) async -> Data? {
        guard let url = URL(string: urlString) else { return nil }
      
        do {
            let (data, _) = try await URLSession.shared.data(from: url)
            return data
        } catch {
            return nil
        }
    }
    
    #if DEBUG
    func getSingleFilm() async throws -> Film {
        // Builds URL string to retrieve all Ghibli Movies
        let urlString = baseURL + "0440483e-ca0e-4120-8c50-4c8cd9b965d6"
        // Creates URL from String
        guard let url = URL(string: urlString) else { throw NetworkError.invalidURL }
        // Network Request
        let (data, response) = try await session.data(from: url)
        // Checks for valid API response
        guard let httpResponse = response as? HTTPURLResponse,
              httpResponse.statusCode == 200 else { throw NetworkError.invalidResponse }
        // Decodes valid data, to Film swift type.
        guard let film = try? decoder.decode(Film.self, from: data) else { throw NetworkError.decodingError }
        // Returns Array of films.
        return film
    }
    #endif
}
