//
//  DataStore.swift
//  ContactList
//
//  Created by Максим Удальцов on 03.10.2023.
//

final class DataStore {
    
    static let shared = DataStore()
    
    var names = [
        "Maksim",
        "Oleg",
        "Valeriya",
        "Oksana",
        "Vladimir",
        "Viktor",
        "Aleksandr",
        "Anastasia",
        "Evgeniy",
        "Vasiliy"
    ]
    
    let surnames = [
        "Vakulenko",
        "Dolmatov",
        "Ivanov",
        "Fedorov",
        "Sidorov",
        "Sergeev",
        "Kozlov",
        "Kotov",
        "Ovechkin",
        "Malkin"
    ]
    
    let emails = [
        "Vakulenko@mail.ru",
        "Dolmatov@mail.ru",
        "Ivanov@mail.ru",
        "Fedorov@mail.ru",
        "Sidorov@mail.ru",
        "Sergeev@mail.ru",
        "Kozlov@mail.ru",
        "Kotov@mail.ru",
        "Ovechkin@mail.ru",
        "Malkin@mail.ru"
    ]
    
    let phones = [
        "89189009910",
        "89189009920",
        "89189009930",
        "89189009940",
        "89189009950",
        "89189009960",
        "89189009970",
        "89189009980",
        "89189009990",
        "89189009905"
    ]
    
    private init() {}
}

final class PersonManager {
    static let shared = PersonManager()
    private let dataStore = DataStore.shared
    
    private init() {}
                        
    
    func add(name: String) {
        if !dataStore.names.contains(name) {
            dataStore.names.append(name)
        }
    }
    
    func getNames() {
        dataStore.names.forEach { name in
            print(name)
        }
    }
}

