import 'package:who_goes_first/rule.dart';
import "dart:math";

class Rules {
  static final Random _random = Random();

  static Rule random() {
    if (availableRules?.isEmpty ?? true) {
      availableRules = rules;
    }
    var i = _random.nextInt(availableRules?.length ?? 1);
    var result = availableRules?[i] ?? rules[0];
    availableRules?.removeAt(i);
    return result;
  }

  static List<Rule>? availableRules;

  static List<Rule> rules = [
    Rule(rule: "У кого самые острые уши?", games: ["Small World"]),
    Rule(rule: "У кого самый большой дом", games: ["For Sale"]),
    Rule(rule: "У кого был худший день?", games: ["Gloom"]),
    Rule(rule: "Кто больше всего путешествовал?", games: ["Ticket to Ride"]),
    Rule(rule: "У кого самый пёстрый наряд?", games: ["Hanabi", "Flowerpower", "Match of the Penguins"]),
    Rule(rule: "У кого самая длинная борода?", games: ["Once Upon a Time", "Dwarven Dig!"]),
    Rule(rule: "Кого выберет самый молодой игрок?", games: ["Carcassonne"]),
    Rule(rule: "Кто может дольше всего стоять на одной ноге?", games: ["Animal upon Animal"]),
    Rule(rule: "Кто самый остроумный игрок?", games: ["Kittens in a Blender"]),
    Rule(rule: "Кто больше всех хочет пить?", games: ["Forbidden Desert"]),
    Rule(rule: "Кто последний был на острове?", games: ["Forbidden Island", "Maka Baka"]),
    Rule(rule: "Кто проснулся раньше всех сегодня?", games: ["Smash Up!"]),
    Rule(rule: "Кто последний был на свидании?", games: ["Love Letter"]),
    Rule(rule: "У кого лучший злодейский смех?", games: ["Mad Scientist University", "IGOR: The Mad Scientist’s Lament"]),
    Rule(rule: "На ком больше зелёной одежды?", games: ["Kodama: The Tree Spirits", "Batt'l Kha'os"]),
    Rule(rule: "У кого самые длинные волосы?", games: ["Monkeys on the Moon", "Aquarius"]),
    Rule(rule: "Кто последним вскапывал огород?", games: ["Terra Mystica"]),
    Rule(rule: "Кто больше всех похож на пирата?", games: ["Cartagena", "Pirates vs Dinosaurs", "Oath of the Brotherhood"]),
    Rule(rule: "Чья игра?", games: ["Sucking Vacuum", "Junta", "Neuroshima Hex!"]),
    Rule(rule: "Кто самый милый?", games: ["Dungeon Lords"]),
    Rule(rule: "Кто больше всех читал  sci-fi литературы?", games: ["Android"]),
    Rule(rule: "Кто больше всех похож на монстра?", games: ["Fearsome Floors"]),
    Rule(rule: "У кого есть лучшая история о том, как он оказался в затруднительном положении?", games: ["Lift Off: Get Me Off This Planet"]),
    Rule(rule: "Кто последним плавал на лодке?", games: ["Harbour"]),
    Rule(rule: "Кто больше всех голоден?", games: ["Mamma Mia!", "Guts of Glory"]),
    Rule(rule: "Кто лучше всех может изобразить обезьяну?", games: ["Too Many Monkeys", "Coco Crazy"]),
    Rule(rule: "У кого самые красивые украшения?", games: ["Queen's Necklace"]),
    Rule(rule: "Кто самый высокий?", games: ["Takenoko", "Campanile"]),
    Rule(rule: "Кто лучше всех угадает текущее время?", games: ["Chrononauts"]),
    Rule(rule: "У кого больше всего наличности с собой??", games: ["Corporate America", "Sheriff of Nottingham", "Martian 12s"]),
    Rule(rule: "Кто последний был в Лондоне?", games: ["Great Fire of London 1666", "Portobello Market"]),
    Rule(rule: "Кто последний ездил в поезде?", games: ["Trains"]),
    Rule(rule: "Кто последний был в другом городе?", games: ["Lords of Waterdeep"]),
    Rule(rule: "Кто последний переворачивал стол?", games: ["Flip City"]),
    Rule(rule: "Кто последний покупал или продавал что-нибудь?", games: ["Mercante"]),
    Rule(rule: "Кто последний был в лесу?", games: ["Lagoon"]),
    Rule(rule: "Кто живёт ближе всего к какому-нибудь водоёму?", games: ["Le Havre"]),
    Rule(rule: "Кто последний был в горах?", games: ["K2"]),
    Rule(rule: "Кто выглядит самым изворотливым?", games: ["Spyfall"]),
    Rule(rule: "Кто последний был в круизе?", games: ["Atlantic Star"]),
    Rule(rule: "Кто последний торговал акциями?", games: ["The Motley Fool's: Buy Low Sell High"]),
    Rule(rule: "Кто был последним, кто стригся?", games: ["Shear Panic!"]),
    Rule(rule: "Кто самый низкий?", games: ["The Conquest of Space"]),
    Rule(rule: "У кого самый шикарные брюки?", games: ["Who Stole Ed’s Pants?"]),
    Rule(rule: "Кто последний смеялся?", games: ["Gheos"]),
    Rule(rule: "Кто готов сделать первый ход?", games: ["Fluxx", "Dixit", "Dixit Odyssey", "Galaxy Truckers"]),
    Rule(rule: "Кто последний нарушил закон?", games: ["Grifters"]),
    Rule(rule: "Кто последний заваривал чай?", games: ["Hanamikoji"]),
    Rule(rule: "Кто больше всех похож на зомби?", games: ["City of Horror"]),
    Rule(rule: "У кого квадратная голова?", games: ["Cube Quest"]),
    Rule(rule: "Кто последним ел орехи?", games: ["Nuts!"]),
    Rule(rule: "Кто артистичнее всех скажет 'мооозги'?", games: ["Zombie Dice"]),
    Rule(rule: "Кто принёс больше всего снэков?", games: ["Dragon Farkle"]),
    Rule(rule: "Кто последним поливал растения?", games: ["Arboretum"]),
    Rule(rule: "Кто больше всех похож на жадного средневекого клирика?", games: ["The Road to Canterbury"]),
    Rule(rule: "У кого больше всех татуировок?", games: ["Camp Grizzly"]),
    Rule(rule: "Кто последним читал новеллу?", games: ["Paperback"]),
    Rule(rule: "Кто последним был в соборе?", games: ["The Pillars of the Earth"]),
    Rule(rule: "Кто последний игрался в поезда?", games: ["Cleopatra’s Caboose"]),
    Rule(rule: "Кто больше всех похож на инопланетянина?", games: ["Andromeda"]),
    Rule(rule: "Кто последний ходил по песку?", games: ["Archaeology: The New Expedition"]),
    Rule(rule: "Кто последний ел грибы?", games: ["Morels"]),
    Rule(rule: "У кого самые длинные усы?", games: ["Hot Tin Roof"]),
    Rule(rule: "У кого часы больше всего опаздывают?", games: ["Legacy: Gears of Time"]),
    Rule(rule: "Кто самый мудрый?", games: ["Himalaya", "The Bridges of Shangri-La"]),
    Rule(rule: "Кто самый волосатый?", games: ["Mammoth Hunters", "Monkey Arena"]),
    Rule(rule: "Кто был глубже всех в море?", games: ["Nautilus"]),
    Rule(rule: "Кто может крикнуть 'Оле' громче всех?", games: ["Salamanca"]),
    Rule(rule: "Кто может лучше всех изобразить пингвина?", games: ["Penguin Soccer"]),
    Rule(rule: "Кто предложил игру?", games: ["GUBS: A Game of Wit and Luck", "Roads and Boats"]),
    Rule(rule: "У кого самый тёмный наряд?", games: ["Ice Pirates of Harbour Grace"]),
    Rule(rule: "Кто самый недалёкий?", games: []),
    Rule(rule: "Кто дольше всех может удерживать высокую ноту До?", games: ["Maestro"]),
    Rule(rule: "Кому больше всех нужно побриться?", games: ["Goldrush-City"]),
    Rule(rule: "У кого самые большие ковбойские сапоги?", games: ["Abilene"]),
    Rule(rule: "Кто грязнуля?", games: ["Neolithibum"]),
    Rule(rule: "Кто дольше всех задерживает дыхание под водой?", games: ["The Reef"]),
    Rule(rule: "Кто последним был в Италии?", games: ["La Cittá"]),
    Rule(rule: "У кого самый суровый взгляд?", games: ["Saloon"]),
    Rule(rule: "У кого больше всех украшений?", games: ["Das Kollier"]),
    Rule(rule: "У кого будильник установлен на самое раннее время?", games: ["Counting Zzzzs"]),
    Rule(rule: "Кто прыгает выше всех?", games: ["Dancing Eggs"]),
    Rule(rule: "Кто последним пробовал греческую кухню?", games: ["Hera and Zeus"]),
    Rule(rule: "Кто первый укажет на север?", games: ["Discovery"]),
    Rule(rule: "У кого больше всего игр с железной дорогой?", games: ["Railroad Dice: The First Rails"]),
    Rule(rule: "Кто посмотрел больше всех эпизодов 'Kim Possible'?", games: ["Kim Possible Game"]),
    Rule(rule: "Кто последним видел мамонта?", games: ["Stone Age"]),
    Rule(rule: "Кто живёт ближе всех к Венеции?", games: ["Oltre Mare"]),
    Rule(rule: "Кто больше всех боится воды?", games: ["Niagara"]),
    Rule(rule: "Чья самая старая вещь в комнате?", games: ["Jenseits von Theben"]),
    Rule(rule: "У кого самые большие руки?", games: ["The Mole in the Hole"]),
    Rule(rule: "Кто последним гладил овцу?", games: ["Herd the Sheep"]),
    Rule(rule: "Кто считает, что он знает больше всех про Австралию?", games: ["Australia"]),
    Rule(rule: "Кто проснулся позже всех?", games: ["Dawn Under"]),
    Rule(rule: "Кто недавно достиг цели в жизни?", games: ["Tempus"]),
    Rule(rule: "Кто последним был в настоящем замке?", games: ["Château Roquefort"]),
    Rule(rule: "У кого самые большие уши?", games: ["Hoppladi, Hopplada!"]),
    Rule(rule: "У кого самая длинная шея?", games: ["Savannah Tails"]),
    Rule(rule: "Кто громче всех может проблеять 'Бе-е-е-е'?", games: ["Black Sheep"]),
    Rule(rule: "Кто больше всех похож на мышку?", games: ["Bunny Bunny Moose Moose"]),
    Rule(rule: "У кого самое свежее дыхание?", games: ["Mint Works"]),
    Rule(rule: "У кого следующим будет день рождения?", games: ["Seasons: The Calendar Rummy Game", "The Stars are Right"]),
    Rule(rule: "Кто лучше всех может изобразить смех койота?", games: ["Coyote"]),
    Rule(rule: "У кого самые большие штаны?", games: ["H2Olland"]),
    Rule(rule: "Кто старше всех?", games: ["Settlers of Catan (Beginner's version)", "Citadels", "Bohnanza", "Village"]),
    Rule(rule: "Кто может взять самую высокую ноту?", games: ["Humm Bug"]),
    Rule(rule: "Кто больше всех похож на викинга?", games: ["Fire & Axe: A Viking Saga"]),
    Rule(rule: "У кого самые длинные усы?", games: ["Asterix and Obelix"]),
    Rule(rule: "Кто последним ездил в Европу?", games: ["Ticket to Ride: Europe"]),
    Rule(rule: "У кого больше всех денег?", games: ["Alhambra"]),
    Rule(rule: "У кого самый хриплый голос?", games: ["Snow Tails"]),
    Rule(rule: "Кто больше всех похож на гоблина?", games: ["Kragmortha"]),
    Rule(rule: "Кто последним ел ананас?", games: ["Tiki Topple"]),
    Rule(rule: "Кто катался на ковре самолёте?", games: ["1001 Karawane"]),
    Rule(rule: "У кого самое большое сомбреро?", games: ["Time's Up!"]),
    Rule(rule: "Кто лучше всех изобразит белого медведя?", games: ["Ice Flow"]),
    Rule(rule: "Кто самый мечтательный?", games: ["Pocket Rockets"]),
    Rule(rule: "Кто может рассказать романтическую историю о любви?", games: ["Genji"]),
    Rule(rule: "Кто младший?", games: ["Parade", "Arkadia"]),
    Rule(rule: "У кого больше всего волос на лице?", games: ["Dig In!"]),
    Rule(rule: "Кто в этом году уезжал дальше всех?", games: ["Vasco da Gama"]),
    Rule(rule: "Кто недавно покупал что-нибудь?", games: ["World Without End"]),
    Rule(rule: "Кто последний посещал Ирландию?", games: ["Keltis"]),
    Rule(rule: "Кто последний кормил уток?", games: ["Duck, Duck, Bruce"]),
    Rule(rule: "Кто последний был на ферме?", games: ["Farmageddon"]),
    Rule(rule: "Кто меньше всех провёл времени на планете Земля в Солнечной системе?", games: ["Eclipse"]),
    Rule(rule: "У кого меньше всего волос?", games: ["Dweebies"]),
    Rule(rule: "Кто лучше всех может изобрать мамонта?", games: ["Ouga Bouga"]),
    Rule(rule: "Кто последний пользовался воком?", games: ["We Will Wok You"]),
    Rule(rule: "Кто последний был в Гамбурге?", games: ["The Speicherstadt"]),
    Rule(rule: "Кто больше всех похож на муравья?", games: ["Myrmes"]),
    Rule(rule: "Кто может назвать больше всех лун Юпитера?", games: ["Exoplanets"]),
    Rule(rule: "Кто последний читал книгу по истории?", games: ["Troyes"]),
  ];
}
