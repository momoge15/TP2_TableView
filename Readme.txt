Membres du groupe

Assi Maurel Gemeri
Coulibaly Fousseni
Zalo Franck

NB: Les tests sur l'emulateur de Apple 11 pro max sont les plus rapides sur la machine distante


Information tp2(Tableviews)

Nous avons changé la structure des donnees de sorte à avoir pour tuple (ligne) le continent
et l'ensemble de ses pays.

struct Country {
    var open : Bool
    var isoCode: String
    var continent: String
    var ListPays: [[String]]
}

countries = [
            Country(opened: false, isoCode: "EU", continent: "Europe", ListPays:[["France","fr"],["Belgique","be"],["Australie","at"],["Germany","de"],["Gréce","el"]]),
            Country(opened: false, isoCode: "AF", continent: "Afrique", ListPays:[["Côte d'Ivoire","ci"], ["Togo","tg"]]),
           
                    ]


Les sections sont les continents

les pays les cellules

Selectionner une section afin de visualiser ses cellules

