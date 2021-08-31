class Movie {
  final String poster;
  final String title;
  final int yearParution;
  final String description;
  final String director;
  final List<String> genres;
  final List<String> actors;

  const Movie(this.poster, this.title, this.yearParution, this.genres,
      this.description, this.actors, this.director);

  String genresString() {
    String genresString = '';
    this.genres.asMap().forEach((index, genre) {
      if (index == this.genres.length - 1) {
        genresString += genre;
      } else {
        genresString += genre + ", ";
      }
    });
    return genresString;
  }

  String actorString() {
    String actorsString = '';
    this.actors.asMap().forEach((index, actor) {
      if (index == this.actors.length - 1) {
        actorsString += actor;
      } else {
        actorsString += actor + ", ";
      }
    });
    return actorsString;
  }
  
}

List<Movie> movies = [
  Movie(
      'back_to_the_future_1',
      'Retour vers le Futur I',
      1985,
      ['Science-fiction'],
      "L'intrigue relate le voyage dans le passé d'un adolescent, Marty McFly, à bord d'une machine à voyager dans le temps fabriquée par le docteur Emmett Brown à partir d'une voiture de modèle DeLorean DMC-12. Parti de l'année 1985 et propulsé le 5 novembre 1955, Marty, aidé du « Doc » de 1955, doit résoudre les paradoxes temporels provoqués par ses interventions dans le passé et trouver le moyen de faire fonctionner la machine pour retourner à son époque d'origine.",
      ["Michael J. Fox", "Christopher Lloyd", "Thomas F. Wilson"],
      "Robert Zemeckis"),
  Movie(
      'back_to_the_future_2',
      'Retour vers le Futur II',
      1989,
      ['Science-fiction'],
      "Après s'être involontairement retrouvé projeté en 1955 à bord d'une voiture équipée d'une machine à voyager dans le temps, le héros Marty McFly est de retour à son époque en 1985, mais constate les changements apportés à sa vie et à sa famille, conséquence des modifications qu'il a effectuées dans le passé dans le premier opus, modifiant les évènements de 1955 et donc affectant son présent en 1985.",
      ["Michael J. Fox", "Christopher Lloyd", "Thomas F. Wilson"],
      "Robert Zemeckis"),
  Movie(
      'back_to_the_future_3',
      'Retour vers le Futur III',
      1990,
      ['Science-fiction'],
      "Marty McFly se retrouve coincé en 1955 à la fin du deuxième épisode de la saga puisque son ami, le docteur Emmett « Doc » Brown a disparu subitement, volatilisé par un éclair qui s'est abattu sur la DeLorean (une voiture équipée d'une machine à voyager dans le temps) qui devait les ramener ensemble en 1985, juste après avoir terminé leurs aventures au cours du deuxième épisode de la série.",
      ["Michael J. Fox", "Christopher Lloyd", "Thomas F. Wilson"],
      "Robert Zemeckis"),
  Movie(
      'mad_max',
      'Mad Max',
      1979,
      ['Science-fiction', 'Post-apocalypse', 'Action'],
      "Un criminel, Montazano, membre du gang de motards « Aigle de la route », s'est évadé en tuant un agent de la police routière (Main Force Patrol ou MFP) chargé de faire régner l'ordre et de combattre les bandes de pirates de la route et en ayant volé une Pursuit Special, voiture de patrouille de la police. Bien que plusieurs policiers tentent vainement de le stopper, l'un d'entre eux, Max Rockatansky, s'engage dans une poursuite à grande vitesse avec Montazano, grâce à son sang-froid, qui lui permet de faire « craquer » ses adversaires lors d'impressionnants face à face routiers. Montazano panique et perd le contrôle de sa voiture en se tuant dans un accident.",
      ["Mel Gibson, Joanne Samuel, Steve Bisley"],
      "Georges Miller"),
  Movie(
      'the_mask',
      'The Mask',
      1994,
      ['Comédie', 'Action', 'Policier'],
      "Stanley Ipkiss est un banal employé de banque. Il voue une passion aux cartoons de Tex Avery. Un soir, il trouve un masque ancien doté de pouvoirs surnaturels révélant et exagérant la personnalité de son possesseur. Chaque fois qu'il le porte, il devient The Mask, personnage loufoque, sûr de lui et plein de ressources qui défraie la chronique.",
      ["Jim Carrey, Cameron Diaz, Peter Greene"],
      "Chuck Russell"),
  Movie(
      'the_fifth_element',
      'Le cinquième élément',
      1997,
      ['Science-fiction', 'Action'],
      "En 1914, dans un temple en Égypte, un archéologue italien décrit à son jeune assistant anglophone sa compréhension d'une fresque gravée sur un mur du bâtiment. Selon lui, il s'agirait d'un plan de bataille opposant d'un côté le Mal absolu, dont la venue est permise par un alignement de planètes qui a lieu tous les 5 000 ans, et de l'autre le Bien, dont l'arme est constituée de quatre éléments, entourant un être de forme humanoïde, un cinquième élément.",
      ["Bruce Willis, Milla Jovovich, Gary Oldman"],
      "Luc Besson"),
  Movie(
      'super_mario_bros',
      'Super Mario Bros',
      1993,
      ['Fantastique', 'Comédie'],
      "Les frères Mario, Mario et Luigi, sont deux plombiers italo-américains de Brooklyn. Ils se retrouvent transportés dans une autre dimension où ils doivent affronter le roi Koopa, dictateur d'un peuple constitué de dinosaures ayant évolué en humains. Koopa a kidnappé Daisy, jeune paléontologue, qui détient une pierre possédant un pouvoir mystérieux.",
      ["Bob Hoskins, John Leguizamo"],
      "Rocky Morton"),
  Movie(
      'les_visiteurs',
      'Les visiteurs ',
      1993,
      ['Fantastique', 'Comédie'],
      "Le comte Godefroy de Montmirail et son serviteur Jacquouille vivent au Moyen Âge. Par magie, ils sont transportés dans le temps afin que le comte puisse éviter la mort accidentelle de son beau-père, qu'il a tué il y a peu de temps. À la suite d'une erreur d'ingrédients, au lieu de remonter le temps de quelques jours, ils sont transportés du xiie siècle à la fin du xxe siècle.",
      ["Christian Clavier, Jean Reno"],
      "Jean-Marie Poiré"),
  Movie(
      'la_soupe_aux_choux',
      'La Soupe aux Choux',
      1981,
      ['Science-fiction', 'Comédie'],
      "Deux amis de longue date vivent dans un hameau campagnard. Ils sont septuagénaires et sont tout l’un pour l’autre. Claude Ratinier, dit « le Glaude », est un sabotier veuf. Francis Chérasse, dit « le Bombé » à cause de sa bosse, est puisatier. Leur lieu-dit, les Gourdiflots, est totalement à l’écart de la vie moderne, dans le Bourbonnais, et ne comporte que leurs deux maisons qui sont des bâtisses agricoles anciennes. Négligeant totalement leur santé, chacun consomme cinq à six litres quotidiens de pinard en plus du perniflard.",
      ["Louis de Funès, Jean Carmet, Jacques Villeret"],
      "Jean Girault"),
  Movie(
      'la_cite_de_la_peur',
      'La cité de la Peur',
      1994,
      ['Policier', 'Comédie'],
      "L'histoire se déroule dans les années 1990 durant le festival de Cannes, les projectionnistes d'un mauvais film d'horreur nommé Red Is Dead sont assassinés successivement par un mystérieux tueur armé d'un marteau et une faucille comme dans le film. L'attachée de presse du film, Odile Deray (Chantal Lauby), comprend rapidement l’intérêt de ces meurtres pour la notoriété du film, elle fait venir l'acteur principal, Simon Jérémi (Dominique Farrugia), et engage un garde du corps, Serge Karamazov (Alain Chabat). Le commissaire Bialès (Gérard Darmon) est chargé d'enquêter sur ces meurtres.",
      ["Alain Chabat, Dominique Farrugia, Chantal Lauby"],
      "Alain Berbérian"),
];