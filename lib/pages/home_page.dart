import 'package:fajna_apka/class/item_class.dart';
import 'package:fajna_apka/core/constants.dart';
import 'package:fajna_apka/widget/card_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        titleTextStyle: const TextStyle(fontSize: 30, letterSpacing: 3),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.amber,
        centerTitle: true,
        actions: [
          IconButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(
                    content: Text("Info"),
                    behavior: SnackBarBehavior.floating,
                  ),
                );
              },
              icon: const Icon(Icons.info))
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: screenWidth,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Card(
                  child: Container(
                    width: screenWidth * 0.5,
                    padding: const EdgeInsets.all(kDouble10),
                    child: const Center(
                      child: Text("Cancer"),
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    width: screenWidth * 0.5,
                    padding: const EdgeInsets.all(kDouble10),
                    child: const Center(
                      child: Text("Champ"),
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    width: screenWidth * 0.5,
                    padding: const EdgeInsets.all(kDouble10),
                    child: const Center(
                      child: Text(".png"),
                    ),
                  ),
                ),
                Card(
                  child: Container(
                    width: screenWidth * 0.7,
                    padding: const EdgeInsets.all(kDouble10),
                    margin: const EdgeInsets.all(kDouble10),
                    child: Center(
                      child: Image.asset('images/zoe.png'),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: CardWidget(
                          box: ItemClass(
                              title: "Page 1",
                              height: 300,
                              desc: "Strona 1 aplikacji",
                              image: 'fajne1',
                              description:
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla fermentum orci nec blandit ultrices. Sed sit amet ligula cursus quam sodales eleifend ut at est. Praesent et ex a erat rutrum gravida. Sed non tincidunt est. Proin volutpat ex arcu. Vivamus imperdiet lacinia ligula id sagittis. Quisque a tortor nec neque molestie sagittis. Nam varius molestie porttitor. Sed interdum tempor ipsum, sed eleifend enim laoreet vitae. Sed venenatis convallis malesuada. Proin fermentum tellus mauris, quis auctor ipsum varius in.Sed vulputate libero enim, sit amet molestie ipsum maximus aliquet. Morbi sed odio eget magna euismod tincidunt eget lobortis massa. Donec hendrerit libero at sem pretium, sit amet condimentum lorem placerat. Etiam cursus, tortor ut tincidunt varius, ligula ex viverra leo, ac blandit est tellus in tortor. Integer et nisl nulla. Maecenas at ex quis sem mattis pellentesque nec et felis. Maecenas nec ex egestas, pretium nisi vitae, rutrum sem.Sed vulputate libero enim, sit amet molestie ipsum maximus aliquet. Morbi sed odio eget magna euismod tincidunt eget lobortis massa. Donec hendrerit libero at sem pretium, sit amet condimentum lorem placerat. Etiam cursus, tortor ut tincidunt varius, ligula ex viverra leo, ac blandit est tellus in tortor. Integer et nisl nulla. Maecenas at ex quis sem mattis pellentesque nec et felis. Maecenas nec ex egestas, pretium nisi vitae, rutrum sem.Sed vulputate libero enim, sit amet molestie ipsum maximus aliquet. Morbi sed odio eget magna euismod tincidunt eget lobortis massa. Donec hendrerit libero at sem pretium, sit amet condimentum lorem placerat. Etiam cursus, tortor ut tincidunt varius, ligula ex viverra leo, ac blandit est tellus in tortor. Integer et nisl nulla. Maecenas at ex quis sem mattis pellentesque nec et felis. Maecenas nec ex egestas, pretium nisi vitae, rutrum sem.Sed vulputate libero enim, sit amet molestie ipsum maximus aliquet. Morbi sed odio eget magna euismod tincidunt eget lobortis massa. Donec hendrerit libero at sem pretium, sit amet condimentum lorem placerat. Etiam cursus, tortor ut tincidunt varius, ligula ex viverra leo, ac blandit est tellus in tortor. Integer et nisl nulla. Maecenas at ex quis sem mattis pellentesque nec et felis. Maecenas nec ex egestas, pretium nisi vitae, rutrum sem.')),
                    ),
                    Expanded(
                      child: CardWidget(
                          box: ItemClass(
                              title: "Page 2",
                              height: 300,
                              desc: "Strona 2 Aplikacji",
                              image: 'zupa',
                              description:
                                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla fermentum orci nec blandit ultrices. Sed sit amet ligula cursus quam sodales eleifend ut at est. Praesent et ex a erat rutrum gravida. Sed non tincidunt est. Proin volutpat ex arcu. Vivamus imperdiet lacinia ligula id sagittis. Quisque a tortor nec neque molestie sagittis. Nam varius molestie porttitor. Sed interdum tempor ipsum, sed eleifend enim laoreet vitae. Sed venenatis convallis malesuada. Proin fermentum tellus mauris, quis auctor ipsum varius in.Sed vulputate libero enim, sit amet molestie ipsum maximus aliquet. Morbi sed odio eget magna euismod tincidunt eget lobortis massa. Donec hendrerit libero at sem pretium, sit amet condimentum lorem placerat. Etiam cursus, tortor ut tincidunt varius, ligula ex viverra leo, ac blandit est tellus in tortor. Integer et nisl nulla. Maecenas at ex quis sem mattis pellentesque nec et felis. Maecenas nec ex egestas, pretium nisi vitae, rutrum sem.Sed vulputate libero enim, sit amet molestie ipsum maximus aliquet. Morbi sed odio eget magna euismod tincidunt eget lobortis massa. Donec hendrerit libero at sem pretium, sit amet condimentum lorem placerat. Etiam cursus, tortor ut tincidunt varius, ligula ex viverra leo, ac blandit est tellus in tortor. Integer et nisl nulla. Maecenas at ex quis sem mattis pellentesque nec et felis. Maecenas nec ex egestas, pretium nisi vitae, rutrum sem.Sed vulputate libero enim, sit amet molestie ipsum maximus aliquet. Morbi sed odio eget magna euismod tincidunt eget lobortis massa. Donec hendrerit libero at sem pretium, sit amet condimentum lorem placerat. Etiam cursus, tortor ut tincidunt varius, ligula ex viverra leo, ac blandit est tellus in tortor. Integer et nisl nulla. Maecenas at ex quis sem mattis pellentesque nec et felis. Maecenas nec ex egestas, pretium nisi vitae, rutrum sem.Sed vulputate libero enim, sit amet molestie ipsum maximus aliquet. Morbi sed odio eget magna euismod tincidunt eget lobortis massa. Donec hendrerit libero at sem pretium, sit amet condimentum lorem placerat. Etiam cursus, tortor ut tincidunt varius, ligula ex viverra leo, ac blandit est tellus in tortor. Integer et nisl nulla. Maecenas at ex quis sem mattis pellentesque nec et felis. Maecenas nec ex egestas, pretium nisi vitae, rutrum sem.')),
                    ),
                  ],
                ),
                CardWidget(
                    box: ItemClass(
                        title: "One Shot :D",
                        height: 350,
                        desc:
                            "Jako uosobienie psotliwości, wyobraźni i zmiany, Zoe jest kosmicznym posłańcem Targonu, który zwiastuje ważne wydarzenia zmieniające całe światy",
                        image: 'zoe',
                        description:
                            'Jak przystało na naturę jej targońskiego aspektu Zoe przyciągnęła uwagę niebiańskiej krainy w bardzo nieszablonowy sposób. Nie odniosła zwycięstwa w obliczu przeważających sił wroga, nie poświęciła się dla żadnej szlachetnej idei ani nie ukończyła próby, jaką jest zdobycie Góry Targon. Zoe była normalną dziewczyną, z pozoru przypadkiem wybraną spośród Rakkorów.Jej nauczyciele twierdzili, że ma bujną wyobraźnię, lecz jest nieposłuszna i leniwa, nie potrafi się skupić i bywa psotna. Pewnego dnia, gdy postanowiła porobić coś „mniej nudnego” niż studiowanie świętych tekstów, zauważył ją Aspekt Zmierzchu.Obserwował, jak ta młoda dziewczyna drwi z wściekłych krzyków goniących ją przez wioskę uczonych kapłanów. bla bla bla.Po godzinnej gonitwie zapędzili ją na skraj stromego urwiska, skąd nie miała już dokąd uciec. Zanim belfrzy Zoe zdążyli ją złapać, Aspekt stworzył przed nią sześć przedmiotów: sakiewkę pełną złotych monet, miecz, wypełniony podręcznik, dywan modlitewny, jedwabną linę oraz zabawkową piłkę. Pięć z tych rzeczy pomogłoby jej uciec lub wyjść z tej sytuacji obronną ręką.Zoe sięgnęła po szóstą.Niezainteresowana ucieczką ani ułaskawieniem wybrała piłkę i kopnęła ją w stronę pobliskiego domu. Śpiewała wesoło, gdy piłka odbijała się między nachmurzonymi kapłanami.Aspekt nie widział takiej radosnej bezczelności w obliczu zagrożenia od czasu, gdy posiadł swoje ostatnie ciało, które zwiastowało koniec Wielkiej Wojny Darkinów. Aspekt, zachwycony beztroską Zoe, otworzył błyszczący portal na szczyt Góry Targon, oferując jej szansę zobaczenia wszechświata. Wskoczyła do portalu tyłem, od razu łącząc się z Aspektem. Zanim zniknęła, zdążyła jeszcze pokazać język swoim oniemiałym nauczycielom.Ta transcendencja była wyjątkowa i to na skalę niesłychaną dotąd we wszelkich mitach i legendach Targonu. Jednak Zoe nie zaprzątała sobie głowy pytaniem, dlaczego zasady obejmujące Aspekty jej akurat nie dotyczyły. W ogóle nie obchodziły jej żadne zasady. Zamiast tego przemierzała wymiary rzeczywistości na samej krawędzi ludzkiego zrozumienia i igrała z potęgami, które niewielu miało okazję widzieć tak wcześniej, jak i później.Gdy Zoe wróciła do domu, dla niej minął zaledwie rok, choć w Runeterze upłynęły całe stulecia. Pełna młodzieńczej ciekawości zastanawiała się, co ją w międzyczasie ominęło. Na szczęście potrafiła już samą myślą przemierzać strumienie czasu. Była świadkiem, między innymi, wzlotu i upadku „wielkiego pancernego wredniaka” Mordekaisera, zniszczenia Błogosławionych Wysp wskutek „imprezki duchów-ponuraków”, kataklizmów „wojny święcących kamyków” i narodzin nowego narodu u boku „niefajnego lasu”.Szczególnie jedna rzecz rzuciła się Zoe w oczy — nie była sama. Po świecie ludzi krążyły też inne Aspekty, i to więcej niż kiedykolwiek wcześniej. Więcej przyjaciół do poznania! Jednak one wciąż ignorowały ją i zdawały się bardziej zaabsorbowane własnymi knowaniami w przestrzeni pomiędzy światami. Zaintrygowana Zoe udała się ku gwiazdom, gdzie znalazła wielkiego kosmicznego smoka Aureliona Sola.Smok wyraźnie jej nie znosił, tak jak wszystkich Aspektów, ale Zoe zawsze do niego wracała, próbując odkryć, dlaczego jest tak zgorzkniały. Z jego bombastycznych i samochwalczych tyrad wywnioskowała, że inne Aspekty go poniżyły, obdarzając go przeklętym artefaktem, który wysysał jego moc.Zoe współczuła biednemu „kosmicznemu pieskowi” i poprzysięgła robić, co w jej mocy, by go chronić. Ze swojej strony Aurelion Sol przynajmniej przestał odgrażać się, że ją zniszczy, gdy wreszcie uda mu się sięgnąć po od dawna należną mu zemstę.Nikt nie jest pewien, czy ta znajomość wynika z jej kaprysu, zaborczości, a może z natury kosmicznego psotnika.Uczeni i mistycy z Góry Targon zazwyczaj radują się na wieść o narodzinach Aspektu… ale nieprzewidywalna natura Zoe wprawia ich w konsternację, bo nawet ona sama nie wie, co może zwiastować jej obecność. Pewne jest jedynie to, że Runeterra znalazła się u progu wielkiej transformacji, która może skutkować chaosem, destrukcją i rozlewem krwi.')),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
