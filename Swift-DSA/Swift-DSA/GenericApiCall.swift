//
//  GenericApiCall.swift
//  Swift-DSA
//
//  Created by Basivi Reddy on 16/06/24.
//

import Foundation

// MARK: - Welcome
struct EmployeesModel: Codable {
    var status: String?
    var data: [Datum1]?
    var message: String?
}

// MARK: - Datum
struct Datum1: Codable {
    var id: Int?
    var employeeName: String?
    var employeeSalary, employeeAge: Int?
    var profileImage: String?

    enum CodingKeys: String, CodingKey {
        case id
        case employeeName = "employee_name"
        case employeeSalary = "employee_salary"
        case employeeAge = "employee_age"
        case profileImage = "profile_image"
    }
}


class ApiHandler
{
    func getDataFromApi<T: Codable>(url: URL, resultType: T.Type, completionHandler: @escaping(_ result: T?) -> Void)
    {
        URLSession.shared.dataTask(with: url) { (data, urlResponse, error) in

            do{
                let result = try JSONDecoder().decode(T.self, from: data!)
                completionHandler(result)
            }
            catch {
                debugPrint("error occured while decoding")
            }
        }.resume()
    }
    
    func getEmployeeData() -> Void {

       getDataFromApi(url: URL(string: employeeApiUrl)!, resultType: EmployeeModel.self) { (result) in
            debugPrint(result?.data?[0].employeeName)
            //business logic to use the result
        }
    }
}
