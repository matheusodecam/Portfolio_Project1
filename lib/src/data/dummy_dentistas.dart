import '../models/dentista.dart';

class DummyDentistasLista {
  // ignore: non_constant_identifier_names
  static List<Dentista> DUMMY_DENTISTAS = [
    const Dentista(
      cro: 'abc123456',
      nome: 'Dr. Luiz Mesquita',
      agenda: [''],
      avatar:
          'https://img.freepik.com/premium-vector/illustration-cute-handsome-male-doctor-welcome-kawaii-cartoon-character-design_380474-40.jpg?w=826',
    ),
    const Dentista(
      cro: 'EFG123987',
      nome: 'Dr. Farias Brito',
      agenda: [''],
      avatar:
          'https://img.freepik.com/free-vector/hand-drawn-doctor-answer-questions-clipart-gesture-character_40876-3115.jpg?w=996&t=st=1681957018~exp=1681957618~hmac=733c0c7f6dadc2df99b0757f0e6c962efe0df31d53e8f0e91190029f36cd65ee',
    ),
    const Dentista(
      cro: 'ZXC908765',
      nome: 'Dra. Estefânia Luiza',
      agenda: [''],
      avatar:
          'https://img.freepik.com/free-vector/beautiful-young-female-doctor-presenting-something-cartoon-illustration_56104-484.jpg?w=996&t=st=1681957015~exp=1681957615~hmac=b39cbd97aac9a3d122ab6f1b6d28269d43a3c27306d6af990cf1ef3ab169c376',
    ),
    const Dentista(
      cro: 'IOP654789',
      nome: 'Dra. Andressa Duarte',
      agenda: [''],
      avatar:
          'https://img.freepik.com/free-vector/beautiful-young-female-doctor-crossed-arms-cartoon-illustration_56104-483.jpg?w=996&t=st=1681957014~exp=1681957614~hmac=3fddb35259753ee4940c7b9528db777c31f639d5cef66fcad3b9916bbf43b83e',
    ),
  ];
}
