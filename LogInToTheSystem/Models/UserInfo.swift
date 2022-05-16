//
//  Person.swift
//  LogInToTheSystem
//
//  Created by Глеб on 15.05.2022.
//

struct UserInfo {
    let login: LoginInfo
    let user: Person
    let address: Address
}

struct LoginInfo {
    let user = "Borodachka"
    let password = "Password"
}

struct Person {
    let name = "Глеб"
    let surname = "Панков"
    let age = 36
}

struct Address {
    let country = "Россия"
    let city = "Нижний Новгород"
    let street = "Волжская набережная"
}


