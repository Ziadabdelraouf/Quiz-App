import 'package:quiz_app/models/quiz_questions.dart';
import 'dart:math';

const all_questions = [
  QuizQuestions(
    'Who developed the theory of relativity?',
    [
      'Albert einstein',
      'Isaac Newton',
      'Nikola Tesla',
      'Galileo Galilei',
    ],
  ),
  QuizQuestions(
    'What is the capital of France?',
    [
      'Paris',
      'London',
      'Berlin',
      'Madrid',
    ],
  ),
  QuizQuestions(
    'Which element has the chemical symbol O?',
    [
      'Oxygen',
      'Osmium',
      'Oganesson',
      'Ozone',
    ],
  ),
  QuizQuestions(
    'In what year did the Titanic sink?',
    [
      '1912',
      '1905',
      '1918',
      '1920',
    ],
  ),
  QuizQuestions(
    'Who wrote the play "Romeo and Juliet"?',
    [
      'William Shakespeare',
      'Charles Dickens',
      'Mark Twain',
      'Leo Tolstoy',
    ],
  ),
  QuizQuestions(
    'What is the smallest prime number?',
    [
      '2',
      '1',
      '3',
      '5',
    ],
  ),
  QuizQuestions(
    'What is the hardest natural substance on Earth?',
    [
      'Diamond',
      'Gold',
      'Iron',
      'Granite',
    ],
  ),
  QuizQuestions(
    'What is the capital of Japan?',
    [
      'Tokyo',
      'Beijing',
      'Seoul',
      'Bangkok',
    ],
  ),
  QuizQuestions(
    'Which ocean is the largest by surface area?',
    [
      'Pacific Ocean',
      'Atlantic Ocean',
      'Indian Ocean',
      'Arctic Ocean',
    ],
  ),
  QuizQuestions(
    'Who was the first man to walk on the moon?',
    [
      'Neil Armstrong',
      'Buzz Aldrin',
      'Yuri Gagarin',
      'Michael Collins',
    ],
  ),
  QuizQuestions(
    'What is the square root of 144?',
    [
      '12',
      '14',
      '16',
      '18',
    ],
  ),
  QuizQuestions(
    'What is the capital of Australia?',
    [
      'Canberra',
      'Sydney',
      'Melbourne',
      'Brisbane',
    ],
  ),
  QuizQuestions(
    'Which gas do plants absorb from the atmosphere?',
    [
      'Carbon dioxide',
      'Oxygen',
      'Nitrogen',
      'Hydrogen',
    ],
  ),
  QuizQuestions(
    'Who painted the "Mona Lisa"?',
    [
      'Leonardo da Vinci',
      'Michelangelo',
      'Vincent van Gogh',
      'Pablo Picasso',
    ],
  ),
  QuizQuestions(
    'Which country is home to the kangaroo?',
    [
      'Australia',
      'South Africa',
      'Canada',
      'India',
    ],
  ),
  QuizQuestions(
    'Which planet is known as the Red Planet?',
    [
      'Mars',
      'Venus',
      'Jupiter',
      'Mercury',
    ],
  ),
  QuizQuestions(
    'What is the most abundant gas in the Earth\'s atmosphere?',
   [
      'Nitrogen',
      'Oxygen',
      'Carbon Dioxide',
      'Hydrogen',
    ],
  ),
  QuizQuestions(
    'What is the largest mammal in the world?',
    [
      'Blue whale',
      'Elephant',
      'Great white shark',
      'Hippopotamus',
    ],
  ),
  QuizQuestions(
    'Which country gifted the Statue of Liberty to the United States?',
    [
      'France',
      'Spain',
      'Italy',
      'Germany',
    ],
  ),
  QuizQuestions(
    'What is the longest river in the world?',
    [
      'Nile',
      'Amazon',
      'Yangtze',
      'Mississippi',
    ],
  ),
  QuizQuestions(
    'What is the largest continent by area?',
    [
      'Asia',
      'Africa',
      'North America',
      'Europe',
    ],
  ),
  QuizQuestions(
    'What is the fastest land animal?',
    [
      'Cheetah',
      'Lion',
      'Horse',
      'Leopard',
    ],
  ),
  QuizQuestions(
    'Which element has the chemical symbol Au?',
    [
      'Gold',
      'Silver',
      'Argon',
      'Platinum',
    ],
  ),
  QuizQuestions(
    'What is the largest desert in the world?',
    [
      'Sahara Desert',
      'Gobi Desert',
      'Kalahari Desert',
      'Arabian Desert',
    ],
  ),
  QuizQuestions(
    'What is the tallest mountain in the world?',
    [
      'Mount Everest',
      'K2',
      'Kangchenjunga',
      'Lhotse',
    ],
  ),
  QuizQuestions(
    'What is the longest bone in the human body?',
    [
      'Femur',
      'Humerus',
      'Tibia',
      'Fibula',
    ],
  ),
  QuizQuestions(
     'What is the largest organ in the human body?',
    [
      'Skin',
      'Liver',
      'Lungs',
      'Heart',
    ],
  ),
  QuizQuestions(
   'What is the most populous country in the world?',
       [
      'China',
      'India',
      'United States',
      'Indonesia',
    ],

  ),
  QuizQuestions(
    'Which country is famous for its pyramids?',
    [
      'Egypt',
      'Mexico',
      'India',
      'China',
    ],
  ),
  QuizQuestions(
    'What is the chemical symbol for water?',
    [
      'H2O',
      'O2',
      'CO2',
      'HO2',
    ],
  ),
  QuizQuestions(
    'What is the capital of Canada?',
    [
      'Ottawa',
      'Toronto',
      'Vancouver',
      'Montreal',
    ],
  ),
  QuizQuestions(
    'How many continents are there?',
    [
      '7',
      '6',
      '8',
      '5',
    ],
  ),
  QuizQuestions(
   'Who is the author of "A Song of Ice and Fire"?',
    [
      'George R.R. Martin',
      'J.R.R. Tolkien',
      'J.K. Rowling',
      'C.S. Lewis',
    ],
  ),
  QuizQuestions(
    'What is the hardest rock?',
    [
      'Diamond',
      'Marble',
      'Granite',
      'Quartz',
    ],
  ),
  QuizQuestions(
    'Which organ in the human body is primarily responsible for filtering blood?',
    [
      'Kidney',
      'Liver',
      'Lungs',
      'Heart',
    ],
  ),
  QuizQuestions(
    'Which country has the most time zones?',
    [
      'France',
      'United States',
      'Russia',
      'China',
    ],
  ),
  QuizQuestions(
    'What is the smallest country in the world?',
    [
      'Vatican City',
      'Monaco',
      'San Marino',
      'Liechtenstein',
    ],
  ),
  QuizQuestions(
    'How many hearts does an octopus have?',
    [
      'Three',
      'Two',
      'One',
      'Four',
    ],
  ),
  QuizQuestions(
    'What is the chemical symbol for gold?',
    [
      'Au',
      'Ag',
      'Pb',
      'Pt',
    ],
  ),
  QuizQuestions(
    'What is the capital of Italy?',
    [
      'Rome',
      'Venice',
      'Florence',
      'Milan',
    ],
  ),
  QuizQuestions(
    'What is the largest country by land area?',
    [
      'Russia',
      'Canada',
      'China',
      'United States',
    ],
  ),
  QuizQuestions(
    'What is the most spoken language in the world?',
    [
      'Mandarin Chinese',
      'English',
      'Hindi',
      'Spanish',
    ],
  ),
  QuizQuestions(
    'Who was the first president of the United States?',
    [
      'George Washington',
      'Abraham Lincoln',
      'Thomas Jefferson',
      'John Adams',
    ],
  ),
  QuizQuestions(
     'Which organ is responsible for pumping blood through the human body?',
    [
      'Heart',
      'Lungs',
      'Liver',
      'Kidneys',
    ],
  ),
  QuizQuestions(
     'How many bones are there in the human body?',
    [
      '206',
      '201',
      '209',
      '250',
    ],
  ),
  QuizQuestions(
   'which one was not written by Charles Dickens?',
    [
      'Wuthering Heights',
      'Oliver Twist',
      'Great Expectations',
      'A Tale of Two Cities',
    ],
  ),
  QuizQuestions(
    'Which bird is the symbol of the United States?',
    [
      'Bald eagle',
      'Golden eagle',
      'Osprey',
      'Hawk',
    ],
  ),
  QuizQuestions(
    'What is the chemical symbol for oxygen?',
    [
      'O',
      'H',
      'N',
      'C',
    ],
  ),
  QuizQuestions(
    'Which country is known as the Land of the Rising Sun?',
    [
      'Japan',
      'China',
      'South Korea',
      'Thailand',
    ],
  )
];

List<int> previouslySelected = [];
List<QuizQuestions> questions = [];
List<QuizQuestions> selectQuestions() {
questions=[];
  for (var i = 0; i < 6; i++) {
    int index = Random().nextInt(50);
    if (previouslySelected.contains(index)) {
      while (previouslySelected.contains(index)) {
        index = Random().nextInt(50);
      }
    }
    previouslySelected.add(index);
    questions.add(all_questions[index]);
  }
  print(all_questions.length);
  print(previouslySelected.length);
  return questions;
}
