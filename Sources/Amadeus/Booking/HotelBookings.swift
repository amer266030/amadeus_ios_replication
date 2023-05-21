import Foundation
import SwiftyJSON

public class HotelBookings {
    private var client: Client
    
    public init(client: Client) {
        self.client = client
    }
    
    /// Books a hotel
    ///
    /// - Returns:
    ///    `JSON` object
    ///
    public func post(body: JSON, params: [String: String] = [:], onCompletion: @escaping AmadeusResponse) {
        
        client.post(path: "/v1/booking/hotel-bookings", body: body, params: params, onCompletion: { result in
            onCompletion(result)
        })
    }
}
