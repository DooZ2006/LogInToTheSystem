//
//  Person.swift
//  LogInToTheSystem
//
//  Created by Глеб on 15.05.2022.
//

struct LoginInfo {
    let user: String
    let password: String
    let person: Person
    
    static func getLoginInfo() -> LoginInfo {
        LoginInfo(
            user: "Borodachka",
            password: "Password",
            person: .init(
                name: "Gleb",
                surname: "Pankov",
                age: 36,
                address: .init(
                    country: "Russia",
                    city: "Nizhny Novgorod",
                    street: "Volgskaya nab"),
                hobby: .init(
                    favoriteActivity: "Play games",
                    favoriteSport: "Badminton",
                    favoriteDish: "Meat with potato",
                    favoriteBook: "Three-body problem",
                    favoriteFilm: "Avengers",
                    favoriteSeries: "True Detective")
            )
        )
    }
}

struct Person {
    let name: String
    let surname: String
    let age: Int
    let address: Address
    let hobby: Hobby
}

struct Address {
    let country: String
    let city: String
    let street: String
}

struct Hobby {
    let favoriteActivity: String
    let favoriteSport: String
    let favoriteDish: String
    let favoriteBook: String
    let favoriteFilm: String
    let favoriteSeries: String
}


