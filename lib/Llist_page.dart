import 'package:flutter/material.dart';
import 'package:myapp/details_page.dart';
import 'package:myapp/widgets/helpers.dart';

class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            child: Image.asset('assets/stars.png',height: 500,)
          ),
          Positioned(
            top: 0,
            child: Image.asset('assets/bulbs.png',height: 300,)
          ),
          ListView(
            children: [
              spacingHeight(30),
              ListTileWithAvatar('Jupiter','assets/jupiter.png',"jupiter","Jupiter, the largest planet in our solar system, is a gas giant known for its immense size and striking features. Named after the king of the Roman gods, Jupiter's massive atmosphere is primarily composed of hydrogen and helium. Prominent among its distinguishing characteristics is the Great Red Spot, a colossal storm that has raged for centuries, making it one of the most iconic features in our solar system.Jupiter boasts a powerful magnetic field, more than ten times stronger than Earth's, and it hosts a vast system of rings, although not as prominent as Saturn's. With a diameter of about 86,881 miles (139,822 kilometers), Jupiter could accommodate more than 1,300 Earths within its voluminous structure,This gas giant has a relatively short day, completing a rotation in just under 10 hours, but its orbit around the Sun takes nearly 12 Earth years. Jupiter's numerous moons, including the four largest called the Galilean moons—Io, Europa, Ganymede, and Callisto—further add to the planet's allure, providing a diverse and captivating planetary system for scientific exploration."),
              spacingHeight(10),
              ListTileWithAvatar('Earth','assets/earth.png',"earth","Earth, the third planet from the Sun in our solar system, is a remarkable and diverse world that sustains life. With a diverse geography of oceans, continents, and an atmosphere containing essential elements, Earth is the only known celestial body to harbor life. Its diameter is about 12,742 kilometers, and it orbits the Sun at an average distance of approximately 150 million kilometers. Earth's atmosphere, composed mainly of nitrogen and oxygen, protects life by moderating temperature and filtering harmful solar radiation.This dynamic planet experiences a range of climates, from icy polar regions to tropical rainforests, supporting a vast array of ecosystems and biodiversity. The presence of liquid water is a key characteristic, fostering the development and evolution of life. Earth rotates on its axis, creating day and night cycles, and completes an orbit around the Sun in about 365.25 days, defining a year. Human activities have significantly shaped Earth's environment, posing challenges for sustainability and conservation. Understanding Earth's interconnected systems is crucial for preserving its delicate balance and ensuring a habitable future."),
              spacingHeight(10),
              ListTileWithAvatar('Mars','assets/mars.png',"mars","Mars, often referred to as the Red Planet, is the fourth planet from the Sun in our solar system. Named after the Roman god of war, its reddish hue is attributed to iron oxide, or rust, on its surface. Mars has a diverse landscape that includes vast deserts, towering volcanoes, and a canyon system, including the largest known canyon, Valles Marineris.With a day length similar to Earth's, around 24.6 hours, Mars completes its orbit in approximately 687 Earth days. Its thin atmosphere primarily consists of carbon dioxide, and its surface experiences extreme temperature variations, ranging from -195 degrees Fahrenheit (-125 degrees Celsius) in winter to 70 degrees Fahrenheit (20 degrees Celsius) in summer.Mars has been a focus of exploration due to its potential for past or present life. Robotic missions, including NASA's rovers like Curiosity and Perseverance, have provided valuable data about the planet's geology and the possibility of liquid water in its distant past. The study of Mars continues to captivate scientists, as it holds clues to the broader understanding of planetary evolution and the potential for extraterrestrial life."),
              spacingHeight(10),
              ListTileWithAvatar('Moon','assets/moon.png',"moon","The Moon, Earth's only natural satellite, has captivated human imagination for centuries. It orbits our planet at an average distance of about 238,855 miles (384,400 kilometers). With a diameter of approximately 2,159 miles (3,474 kilometers), the Moon is much smaller than Earth. Its surface is marked by vast plains, impact craters, and towering mountains.The Moon's gravitational influence on Earth causes tides in our oceans, demonstrating its significant impact on our planet's dynamics. The lunar surface has been explored by both robotic missions and astronauts during the Apollo program, revealing valuable insights into the Moon's geology and history. Despite its barren appearance, the Moon has played a crucial role in shaping Earth's evolution and has inspired countless myths, cultures, and scientific endeavors.The Moon's phases, from new moon to full moon and back, create a mesmerizing celestial dance in our night sky. Its silvery glow and ever-changing appearance have been a timeless source of wonder and contemplation for humanity. While it lacks an atmosphere and liquid water, the Moon remains a symbol of celestial beauty, scientific discovery, and human exploration aspirations."),
              spacingHeight(10),
              ListTileWithAvatar('Sun','assets/sun.png',"sun","The Sun, the radiant heart of our solar system, is a massive, luminous ball of hot, ionized gas primarily composed of hydrogen and helium. This star, essential for sustaining life on Earth, generates energy through nuclear fusion at its core, where temperatures reach millions of degrees Celsius. The Sun's immense gravitational pull keeps planets, including Earth, in orbit around it. It emits light and heat, influencing Earth's climate and providing the energy necessary for photosynthesis.Spanning approximately 4.6 billion years, the Sun's life cycle involves the continuous conversion of hydrogen into helium, releasing energy in the process. Sunspots and solar flares are dynamic phenomena on its surface, reflecting the Sun's magnetic activity. Despite being a relatively stable star, the Sun's energy output is not constant, and its influence extends far beyond the visible spectrum, impacting the entire solar system. Continuous study of the Sun contributes to our understanding of fundamental astrophysical processes and the dynamics of stellar bodies."),
              spacingHeight(10),
              ListTileWithAvatar('Saturn','assets/saturn.png',"saturn","Saturn, the sixth planet from the Sun and the second-largest in our solar system, is renowned for its stunning ring system, which makes it one of the most visually striking celestial bodies. The planet's prominent and intricate ring structure consists of countless icy particles and spans a vast distance around its equator. Saturn's incredible rings, composed mainly of water ice, dust, and rocky material, contribute to its distinct appearance and gravitational influence on nearby moons.With a diameter of around 74,900 miles (120,500 kilometers), Saturn is a gas giant primarily composed of hydrogen and helium. It boasts a vibrant and dynamic atmosphere marked by prominent cloud bands and swirling storms. The most recognizable feature is the hexagonal-shaped storm at its north pole, a mysterious phenomenon not fully understood.Saturn has a diverse array of moons, including Titan, the second-largest moon in the solar system, known for its thick atmosphere and lakes of liquid methane and ethane. The exploration of Saturn has been a focus of space missions, including the Cassini-Huygens mission, which provided invaluable insights into the planet's structure, rings, and moons, expanding our understanding of the complex and captivating nature of Saturn."),
              spacingHeight(10),
              ListTileWithAvatar('Naptune','assets/naptune.png',"naptune","Neptune, the eighth and farthest planet from the Sun in our solar system, is a captivating gas giant known for its striking deep-blue coloration. Named after the Roman god of the sea, Neptune is a distant ice giant with a thick atmosphere primarily composed of hydrogen, helium, and traces of methane. Its atmosphere features dynamic storm systems, including the famous Great Dark Spot, reminiscent of Jupiter's Great Red Spot.Neptune's extreme weather patterns include strong winds, reaching speeds of over 1,500 miles per hour (2,400 kilometers per hour), making it the windiest planet in our solar system. This ice giant has a set of faint, narrow rings and a diverse family of moons. Triton, its largest moon, stands out for its retrograde orbit, suggesting a probable capture by Neptune's gravitational pull.Neptune completes one orbit around the Sun roughly every 165 Earth years, and its discovery in 1846 was a triumph of mathematical predictions based on perturbations observed in Uranus' orbit. Studying Neptune provides valuable insights into the outer reaches of our solar system and enhances our understanding of the diverse planetary compositions found in the vast cosmic expanse."),
              spacingHeight(10),
              ListTileWithAvatar('Venus','assets/venus.png',"venus","Venus, often referred to as Earth's 'sister planet', due to its similar size and composition, stands out as the second planet from the Sun in our solar system. Shrouded in thick clouds of sulfuric acid, Venus experiences an extreme greenhouse effect, trapping heat and making it the hottest planet with surface temperatures soaring to about 900 degrees Fahrenheit (475 degrees Celsius). The planet's dense atmosphere produces a pressure approximately 92 times that of Earth's at sea level.Venus rotates on its axis very slowly and in the opposite direction to most planets, resulting in a retrograde rotation. A day on Venus, defined by one complete rotation, is longer than its year, which lasts about 225 Earth days. The surface of Venus is marked by vast volcanic plains, highland regions, and large impact craters, with some areas exhibiting evidence of recent volcanic activity.Despite its similarities to Earth, Venus showcases a hostile environment, challenging exploration efforts. Various space missions, including NASA's Magellan and the Soviet Union's Venera probes, have provided valuable data, contributing to our understanding of this inhospitable yet intriguing planet. Venus remains a subject of scientific curiosity, offering insights into planetary evolution and the potential diversity of planetary atmospheres."),
              spacingHeight(10),
              ListTileWithAvatar('Mercury','assets/mercury.png',"mercury","Mercury, the smallest and innermost planet in our solar system, is a fascinating celestial body with unique characteristics. Named after the swift-footed messenger of the Roman gods, Mercury orbits the Sun at an average distance of about 36 million miles (58 million kilometers). Due to its proximity to the Sun, Mercury experiences extreme temperature variations, ranging from scorching daytime highs of around 800 degrees Fahrenheit (427 degrees Celsius) to frigid nighttime lows of about -290 degrees Fahrenheit (-179 degrees Celsius).This rocky planet lacks a significant atmosphere, making its surface resemble the Earth's Moon, marked by craters, cliffs, and plains. Mercury completes an orbit around the Sun in just about 88 Earth days, but interestingly, its rotation period is much slower. It takes approximately 59 Earth days for Mercury to complete one full rotation, leading to a peculiar phenomenon known as a resonant rotation where it rotates three times for every two orbits around the Sun.The lack of a substantial atmosphere exposes Mercury to the solar wind and intense radiation, contributing to the planet's barren and desolate landscape. Despite its small size, Mercury has been a subject of scientific interest, and various space missions, such as NASA's MESSENGER, have provided valuable data about this enigmatic world. Understanding Mercury helps scientists gain insights into the early history and formation of our solar system, offering a glimpse into the dynamic processes that shaped the inner planets."),
            ],
          ),
        ],
      ),
    );
  }
}

class ListTileWithAvatar extends StatelessWidget {
  final String title;
  final String image;
  String tag;
  String description;

   ListTileWithAvatar(this.title,this.image, this.tag,this.description,{Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Hero(
        tag: tag,
        child: CircleAvatar(
          backgroundColor: Colors.black,
          radius: 40,
          backgroundImage: AssetImage(image),
        ),
      ),
      title: Text(title,style: TextStyle(color: Colors.white),),
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (ctx)=>DetailsPage(
          image: image,
          tag: tag,
          title: title,
          description: description,
        )));
      },
    );
  }
}
