//: Playground - noun: a place where people can play

import UIKit

class ComplexDeliverySystem
{
    func findGoodsInStock(product: String) -> String
    {
        return "\(product) на складе найдена\n"
    }
    
    
    func packGoods(product: String) -> String
    {
        return "\(product) упакована\n"
    }
    
    
    func writeDocuments(product: String) -> String
    {
        return "Выписаны сопровождающие документы к товару \(product)\n"
    }
    
    
    //Если товар небольшой, то доставка производится силами курьера
    func pickCar(product: String) -> String
    {
        return "Выбрана машина доставки для \(product)\n"
    }
    
    
    //Если товар небольшой, то доставка производится силами курьера
    func loadGoods(product: String) -> String
    {
        return "\(product) загружен в машину\n"
    }
    
    
    func orderDelivered(adress: String) -> String
    {
        return "Товар доставлен до пользователя по адресу \(adress)\n"
    }
}


class Facade
{
    private var complexDeliverySystem: ComplexDeliverySystem
   
    init(complexDeliverySystem: ComplexDeliverySystem)
    {
        self.complexDeliverySystem = complexDeliverySystem
    }
    
    func deliverGoods(product: String, adress: String) -> String
    {
        var result = "Фасад инициализирует подсистему доставки:"
        result += " " + complexDeliverySystem.findGoodsInStock(product: product)
        result += " " + complexDeliverySystem.packGoods(product: product)
        result += " " + complexDeliverySystem.writeDocuments(product: product)
        result += " " + complexDeliverySystem.orderDelivered(adress: adress)
        return result
    }
}


let complexDeliverySystem = ComplexDeliverySystem()
let facade = Facade(complexDeliverySystem: complexDeliverySystem)
facade.deliverGoods(product: "Джинсовая куртка", adress: "Москва улица Ленина 1")
