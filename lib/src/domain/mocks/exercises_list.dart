import 'package:my_gym_track/src/domain/entities/exercise/exercise_entity.dart';

class ExercisesListMock {
  List<ExerciseEntity> exercisesListMock = [
    //!PEITO
    ExerciseEntity(name: "Flexão", category: ['Peito']),
    ExerciseEntity(name: "Flexão inclinada", category: ['Peito']),
    ExerciseEntity(name: "Flexão declinada", category: ['Peito']),
    ExerciseEntity(name: "Flexão diamante", category: ['Peito, Tríceps']),
    ExerciseEntity(name: "Crucifixo", category: ['Peito']),
    ExerciseEntity(name: "Crucifixo inclinado", category: ['Peito']),
    ExerciseEntity(name: "Supino reto", category: ['Peito']),
    ExerciseEntity(name: "Supino reto halter", category: ['Peito']),
    ExerciseEntity(name: "Supino inclinado ", category: ['Peito']),
    ExerciseEntity(name: "Supino inclinado halter", category: ['Peito']),
    ExerciseEntity(name: "Crossover", category: ['Peito']),
    ExerciseEntity(name: "Voador", category: ['Peito']),
    ExerciseEntity(name: "Paralela", category: ['Peito, Tríceps']),
    ExerciseEntity(name: "Pullover", category: ['Peito']),
    //!TRAPÉZIO
    ExerciseEntity(name: "Encolhimento halter", category: ['Trapézio']),
    ExerciseEntity(name: "Encolhimento barra", category: ['Trapézio']),
    ExerciseEntity(name: "Encolhimento barra trás", category: ['Trapézio']),
    ExerciseEntity(name: "Remada alta", category: ['Trapézio, Ombro']),
    ExerciseEntity(
        name: "Crucifixo invertido polia", category: ['Trapézio, Ombro']),
    ExerciseEntity(
        name: "Crucifixo invertido halter", category: ['Trapézio, Ombro']),
    //!OMBRO
    ExerciseEntity(name: "Desenvolvimento halter", category: ['Ombro']),
    ExerciseEntity(name: "Elevação lateral", category: ['Ombro']),
    ExerciseEntity(name: "Elevação frontal", category: ['Ombro']),
    ExerciseEntity(name: "Desenvolvimento militar", category: ['Ombro']),
    ExerciseEntity(name: "Arnold press", category: ['Ombro']),
    //!BÍCEPS
    ExerciseEntity(name: "Barra fixa supinada", category: ['Bíceps']),
    ExerciseEntity(name: "Remada invertida", category: ['Bíceps']),
    ExerciseEntity(name: "Rosca simultânea", category: ['Bíceps']),
    ExerciseEntity(name: "Rosca direta", category: ['Bíceps']),
    ExerciseEntity(name: "Rosca 21", category: ['Bíceps']),
    ExerciseEntity(name: "Rosca martelo", category: ['Bíceps, Antebraço']),
    ExerciseEntity(name: "Rosca inversa", category: ['Bíceps, Antebraço']),
    ExerciseEntity(name: "Rosca scott", category: ['Bíceps']),
    ExerciseEntity(name: "Rosca scott unilateral", category: ['Bíceps']),
    ExerciseEntity(name: "Rosca concentrada", category: ['Bíceps']),
    ExerciseEntity(name: "Rosca inclinada", category: ['Bíceps']),
    ExerciseEntity(name: "Rosca martelo inclinada", category: ['Bíceps']),
    ExerciseEntity(name: "Rosca polia alta", category: ['Bíceps']),
    //!ANTEBRAÇO
    ExerciseEntity(name: "Rosca de punho", category: ['Antebraço']),
    ExerciseEntity(name: "Rosca de punho invertido", category: ['Antebraço']),
    ExerciseEntity(name: "Suspensão na barra", category: ['Antebraço']),
    //!TRÍCEPS
    ExerciseEntity(name: "Skull crusher", category: ['Tríceps']),
    ExerciseEntity(name: "Tríceps francês", category: ['Tríceps']),
    ExerciseEntity(name: "Tríceps francês unilateral", category: ['Tríceps']),
    ExerciseEntity(name: "Tríceps pulley", category: ['Tríceps']),
    ExerciseEntity(name: "Tríceps pulley unilateral", category: ['Tríceps']),
    ExerciseEntity(name: "Tríceps corda", category: ['Tríceps']),
    ExerciseEntity(name: "Tríceps inverso", category: ['Tríceps']),
    ExerciseEntity(name: "Tríceps testa", category: ['Tríceps']),
    ExerciseEntity(name: "Tríceps coice", category: ['Tríceps']),
    ExerciseEntity(name: "Tríceps banco", category: ['Tríceps']),
    //!DORSAL
    ExerciseEntity(name: "Barra fixa pronada", category: ['Dorsal']),
    ExerciseEntity(name: "Barra fixa supinada", category: ['Dorsal']),
    ExerciseEntity(name: "Barra fixa neutra", category: ['Dorsal']),
    ExerciseEntity(name: "Remada unilateral", category: ['Dorsal']),
    ExerciseEntity(name: "Remada unilateral polia", category: ['Dorsal']),
    ExerciseEntity(name: "Remada baixa neutra", category: ['Dorsal']),
    ExerciseEntity(name: "Remada baixa pronada", category: ['Dorsal']),
    ExerciseEntity(name: "Remada baixa supinada", category: ['Dorsal']),
    ExerciseEntity(name: "Remada neutra", category: ['Dorsal']),
    ExerciseEntity(name: "Remada pronada", category: ['Dorsal']),
    ExerciseEntity(name: "Remada supinada", category: ['Dorsal']),
    ExerciseEntity(name: "Remada curvada supinada", category: ['Dorsal']),
    ExerciseEntity(name: "Remada curvada pronada", category: ['Dorsal']),
    ExerciseEntity(name: "Pulldown", category: ['Dorsal']),
    ExerciseEntity(name: "Remada cavalinho", category: ['Dorsal']),
    ExerciseEntity(name: "Puxador frente neutro", category: ['Dorsal']),
    ExerciseEntity(name: "Puxador frente pronado", category: ['Dorsal']),
    ExerciseEntity(name: "Puxador frente supinado", category: ['Dorsal']),
    ExerciseEntity(name: "Puxador trás", category: ['Dorsal']),
    ExerciseEntity(
        name: "Levantamento terra",
        category: ['Dorsal, Lombar, Quadríceps, Posterior, Gluteo']),
    ExerciseEntity(
        name: "Levantamento terra sumô",
        category: ['Dorsal, Lombar, Quadríceps, Posterior, Gluteo']),
    ExerciseEntity(name: "Remada inclinada halter", category: ['Dorsal']),
    ExerciseEntity(name: "Remada smith", category: ['Dorsal']),
    //!LOMBAR
    ExerciseEntity(name: "Prancha", category: ['Lombar, Abdômen']),
    ExerciseEntity(name: "Elevação pélvica", category: ['Lombar, Gluteo']),
    ExerciseEntity(name: "Superman", category: ['Lombar, Abdômen']),
    ExerciseEntity(name: "Agachamento", category: ['Lombar']),
    ExerciseEntity(name: "Bom dia", category: ['Lombar, Posterior, Gluteo']),
    //!ABDÔMEN
    ExerciseEntity(name: "Flexão abdominal", category: ['Abdômen']),
    ExerciseEntity(
        name: "Elevação de pernas (abdominal infra)", category: ['Abdômen']),
    ExerciseEntity(
        name: "Elevação de pernas barra fixa", category: ['Abdômen']),
    ExerciseEntity(name: "Russian twist", category: ['Abdômen']),
    ExerciseEntity(name: "Abdominal remador", category: ['Abdômen']),
    ExerciseEntity(name: "Abdominal canivete", category: ['Abdômen']),
    ExerciseEntity(name: "Abdominal bicicleta", category: ['Abdômen']),
    ExerciseEntity(name: "Flexão lateral de tronco", category: ['Abdômen']),
    ExerciseEntity(name: "Prancha lateral", category: ['Abdômen']),
    ExerciseEntity(name: "Abdominal alpinista", category: ['Abdômen']),
    ExerciseEntity(name: "Abdominal com rolinho", category: ['Abdômen']),
    ExerciseEntity(name: "Flutter kicks", category: ['Abdômen']),
    ExerciseEntity(name: "V-sit", category: ['Abdômen']),
    ExerciseEntity(name: "Dragon flag", category: ['Abdômen']),
    //!QUADRÍCEPS
    ExerciseEntity(name: "Agachamento livre", category: ['Quadríceps, Gluteo']),
    ExerciseEntity(name: "Agachamento smith", category: ['Quadríceps, Gluteo']),
    ExerciseEntity(
        name: "Agachamento sumô", category: ['Quadríceps, Posterior, Gluteo']),
    ExerciseEntity(
        name: "Agachamento bulgáro", category: ['Quadríceps, Gluteo']),
    ExerciseEntity(
        name: "Agachamento frontal", category: ['Quadríceps, Gluteo']),
    ExerciseEntity(name: "Agachamento sissy", category: ['Quadríceps, Gluteo']),
    ExerciseEntity(
        name: "Agachamento pistol", category: ['Quadríceps, Gluteo']),
    ExerciseEntity(name: "Cadeira extensora", category: ['Quadríceps']),
    ExerciseEntity(name: "Afundo", category: ['Quadríceps']),
    ExerciseEntity(name: "Afundo smith", category: ['Quadríceps']),
    ExerciseEntity(name: "Afundo smith com step", category: ['Quadríceps']),
    ExerciseEntity(name: "Avanço", category: ['Quadríceps']),
    ExerciseEntity(name: "Hack machine", category: ['Quadríceps']),
    ExerciseEntity(name: "Leg press 45", category: ['Quadríceps']),
    ExerciseEntity(name: "Leg press 180", category: ['Quadríceps']),
    ExerciseEntity(
        name: "Cadeira abdutora", category: ['Quadríceps, Posterior, Gluteo']),
    ExerciseEntity(
        name: "Cadeira adutora", category: ['Quadríceps, Posterior, Gluteo']),
    //!POSTERIOR
    ExerciseEntity(name: "Mesa flexora", category: ['Posterior']),
    ExerciseEntity(name: "Cadeira flexora", category: ['Posterior']),
    ExerciseEntity(name: "Stiff", category: ['Posterior, Gluteo']),
    ExerciseEntity(name: "Flexora de pé unilateral", category: ['Posterior']),
    ExerciseEntity(name: "Kickbacks", category: ['Posterior, Gluteo']),
    ExerciseEntity(name: "Flexão nórdica", category: ['Posterior, Gluteo']),
    //!PANTURRILHA
    ExerciseEntity(name: "Elevação de panturrilha", category: ['Panturrilha']),
    ExerciseEntity(
        name: "Elevação de panturrilha smith", category: ['Panturrilha']),
    ExerciseEntity(
        name: "Elevação de panturrilha 45", category: ['Panturrilha']),
    ExerciseEntity(name: "Panturrilha sentado", category: ['Panturrilha']),
  ];
}
