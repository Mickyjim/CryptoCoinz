//
//  MarketDataModel.swift
//  CryptoCoinz
//
//  Created by Michael Favre on 11/03/2022.
//

import Foundation

//JSON data
/*
 
 URL: https://api.coingecko.com/api/v3/global
 
 JSON Response:
 
 {
 "data": {
 "active_cryptocurrencies": 12827,
 "upcoming_icos": 0,
 "ongoing_icos": 49,
 "ended_icos": 3376,
 "markets": 753,
 "total_market_cap": {
 "btc": 46711516.55808072,
 "eth": 679471092.023024,
 "ltc": 17081867070.420483,
 "bch": 5896890225.085083,
 "bnb": 4940376495.16744,
 "eos": 867488425301.2733,
 "xrp": 2550325257791.9937,
 "xlm": 9748886953053.527,
 "link": 134074288573.64977,
 "dot": 110378882614.33061,
 "yfi": 92522755.04079184,
 "usd": 1794171231095.389,
 "aed": 6589990931813.357,
 "ars": 192652607660199.44,
 "aud": 2503536299076.035,
 "bdt": 154291176001663.06,
 "bhd": 676495851026.9806,
 "bmd": 1794171231095.389,
 "brl": 9188668542931.941,
 "cad": 2298925423539.452,
 "chf": 1660609536310.1836,
 "clp": 1465389352997157.2,
 "cny": 11354233218864.07,
 "czk": 39670021210963.38,
 "dkk": 11924811965434.572,
 "eur": 1602582450354.1,
 "gbp": 1340565272107.3894,
 "hkd": 14010593435062.338,
 "huf": 588568022360784.6,
 "idr": 25856137038803980,
 "ils": 5875874898412.778,
 "inr": 135280869658838.5,
 "jpy": 207334427465383,
 "krw": 2164038699210834.8,
 "kwd": 543599793768.5113,
 "lkr": 363404176173458.1,
 "mmk": 3191077678219853.5,
 "mxn": 36898417788249.36,
 "myr": 7537313341831.727,
 "ngn": 746626416108036.9,
 "nok": 16109458001307.271,
 "nzd": 2678564879354.312,
 "php": 92274224621064.73,
 "pkr": 316222679480562.44,
 "pln": 7424149579772.839,
 "rub": 152278130233743.7,
 "sar": 6731454156700.296,
 "sek": 17043229036017.174,
 "sgd": 2431035633798.7007,
 "thb": 58561754365467.25,
 "try": 25136687016865.234,
 "twd": 50353415600692.164,
 "uah": 52907177929211.25,
 "vef": 179650365369.58133,
 "vnd": 40986207984109390,
 "zar": 27550730054934.215,
 "xdr": 1281004169748.7144,
 "xag": 74217561553.5056,
 "xau": 943159932.762224,
 "bits": 46711516558080.72,
 "sats": 4671151655808072
 },
 "total_volume": {
 "btc": 4033399.9307927936,
 "eth": 58670299.26407454,
 "ltc": 1474968199.2015495,
 "bch": 509178857.341902,
 "bnb": 426586753.80239975,
 "eos": 74905034398.1696,
 "xrp": 220212968369.10043,
 "xlm": 841787269160.0852,
 "link": 11576914347.913677,
 "dot": 9530886819.828815,
 "yfi": 7989063.538844384,
 "usd": 154921326742.46664,
 "aed": 569026033125.0795,
 "ars": 16634977231739.592,
 "aud": 216172881539.28915,
 "bdt": 13322582190909.203,
 "bhd": 58413396090.9007,
 "bmd": 154921326742.46664,
 "brl": 793414082778.87,
 "cad": 198505343594.92453,
 "chf": 143388673337.1037,
 "clp": 126531993616909.48,
 "cny": 980404124157.0267,
 "czk": 3425387840017.983,
 "dkk": 1029671894645.0132,
 "eur": 138378207787.59918,
 "gbp": 115753807072.78264,
 "hkd": 1209772894465.585,
 "huf": 50821090719782.445,
 "idr": 2232600202847405.5,
 "ils": 507364246655.04346,
 "inr": 11681099020647.328,
 "jpy": 17902708518359.43,
 "krw": 186858277846257.6,
 "kwd": 46938218497.75922,
 "lkr": 31378865149996.387,
 "mmk": 275540025990867.22,
 "mxn": 3186068163050.0996,
 "myr": 650824493645.102,
 "ngn": 64468960910610.21,
 "nok": 1391003580600.7642,
 "nzd": 231286076648.3235,
 "php": 7967603679443.741,
 "pkr": 27304883838359.758,
 "pln": 641053140803.4739,
 "rub": 13148761701674.752,
 "sar": 581240960053.4152,
 "sek": 1471631920339.901,
 "sgd": 209912665646.95273,
 "thb": 5056632569638.097,
 "try": 2170477842399.3457,
 "twd": 4347867035027.332,
 "uah": 4568376784187.43,
 "vef": 15512272446.723186,
 "vnd": 3539036636522303.5,
 "zar": 2378923248160.719,
 "xdr": 110610883788.91284,
 "xag": 6408464757.5359955,
 "xau": 81439043.04197985,
 "bits": 4033399930792.7935,
 "sats": 403339993079279.4
 },
 "market_cap_percentage": {
 "btc": 40.60548324208907,
 "eth": 17.628523576644355,
 "usdt": 4.436815252698908,
 "bnb": 3.4073144112908937,
 "usdc": 2.9657872376226084,
 "xrp": 1.8828884747862071,
 "sol": 1.6008490522379677,
 "ada": 1.535760178880331,
 "luna": 1.337890874592784,
 "avax": 1.0440815782065913
 },
 "market_cap_change_percentage_24h_usd": -0.14236558355899182,
 "updated_at": 1645738227
 }
 }
 
 
 */

struct GlobalData: Codable {
    let data: MarketDataModel?
}

struct MarketDataModel: Codable {
    let totalMarketCap, totalVolume, marketCapPercentage: [String: Double]
    let marketCapChangePercentage24HUsd: Double
    
    enum CodingKeys: String, CodingKey {
        case totalMarketCap = "total_market_cap"
        case totalVolume = "total_volume"
        case marketCapPercentage = "market_cap_percentage"
        case marketCapChangePercentage24HUsd = "market_cap_change_percentage_24h_usd"
    }
    
    var marketCap: String {
        if let item = totalMarketCap.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var volume: String {
        if let item = totalVolume.first(where: { $0.key == "usd" }) {
            return "$" + item.value.formattedWithAbbreviations()
        }
        return ""
    }
    
    var btcDominance: String {
        if let item = marketCapPercentage.first(where: { $0.key == "btc" }) {
            return item.value.asPercentString()
        }
        return ""
    }
}
