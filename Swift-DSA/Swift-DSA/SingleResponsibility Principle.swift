//
//  SingleResponsibility Principle.swift
//  Swift-DSA
//
//  Created by Basivi Reddy on 16/06/24.
//

import Foundation

let employeeApiUrl = "https://mocki.io/v1/87b541d6-4393-4140-89d0-d1dc1a63acfc"
let reportsApiUrl = "https://mocki.io/v1/87b541d6-4393-4140-89d0-d1dc1a63acfc"

// MARK: - Welcome
struct EmployeeModel: Codable {
    var status: String?
    var data: [Datum]?
    var message: String?
}

// MARK: - Datum
struct Datum: Codable {
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



struct ReportResult: Codable {
    let id, labourHours, totalCost: String
}

struct ReportModel: Codable {
    let reports: [ReportResult]?
}

class HttpHandler
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
}

class DatabaseHandler
{
    func saveDataToDatabase(data: Array<EmployeeModel>){
        // code to save data to database
    }
}

class Employees
{

    let _httpHanlder: HttpHandler

    init(httpHandler : HttpHandler) {
        _httpHanlder = httpHandler
    }

    func getEmployeeData() -> Void {

        _httpHanlder.getDataFromApi(url: URL(string: employeeApiUrl)!, resultType: EmployeeModel.self) { (result) in
            debugPrint(result?.data?[0].employeeName)
            //business logic to use the result
        }
    }
}

class Reports
{

    let _httpHanlder: HttpHandler

    init(httpHandler : HttpHandler) {
        _httpHanlder = httpHandler
    }

    func getReportsData() -> Void {
        _httpHanlder.getDataFromApi(url: URL(string: reportsApiUrl)!, resultType: ReportModel.self) { (result) in
            debugPrint(result as Any)
        }
    }
}

let objEmployee = Employees(httpHandler: HttpHandler())
//objEmployee.getEmployeeData()

let objReports = Reports(httpHandler: HttpHandler())
//objReports.getReportsData()
