import 'package:cat_sanctuary/repository/cats_repository.dart';
import 'package:flutter/material.dart';

import '../model/cat.dart';

class InMemoryCatsRepository implements CatsRepository {
  static const catDescription =
      'This will be cat description, very long description of a cat, this will be cat description, very long description of a cat, his will be cat description, very long description of a cat, his will be cat description, very long description of a cat, this will be cat description, very long description of a cat, his will be cat description, very long description of a cat, his will be cat description, very long description of a cat';

  final List<Cat> _cats = [
    Cat(
      id: 1,
      name: 'Tabby Cat',
      imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/4/4d/Cat_November_2010-1a.jpg',
      description: catDescription,
      isAdopted: false,
    ),
    Cat(
      id: 2,
      name: 'Persian Cat',
      imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/3/3a/Cat03.jpg',
      description: catDescription,
      isAdopted: false,
    ),
    Cat(
      id: 3,
      name: 'Domestic Cat',
      imageUrl: 'https://i.natgeofe.com/n/548467d8-c5f1-4551-9f58-6817a8d2c45e/NationalGeographic_2572187_2x3.jpg',
      description: catDescription,
      isAdopted: false,
    ),
    Cat(
      id: 4,
      name: 'Bengal Cat',
      imageUrl:
          'https://www.purina.co.uk/sites/default/files/styles/square_medium_440x440/public/2022-06/Bengal-Cat.jpg?itok=-n4U6Hsa',
      description: catDescription,
      isAdopted: false,
    ),
    Cat(
      id: 5,
      name: 'Tabby Cat',
      imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/4/4d/Cat_November_2010-1a.jpg',
      description: catDescription,
      isAdopted: false,
    ),
    Cat(
      id: 6,
      name: 'Persian Cat',
      imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/3/3a/Cat03.jpg',
      description: catDescription,
      isAdopted: false,
    ),
    Cat(
      id: 7,
      name: 'Domestic Cat',
      imageUrl: 'https://i.natgeofe.com/n/548467d8-c5f1-4551-9f58-6817a8d2c45e/NationalGeographic_2572187_2x3.jpg',
      description: catDescription,
      isAdopted: false,
    ),
    Cat(
      id: 8,
      name: 'Bengal Cat',
      imageUrl:
          'https://www.purina.co.uk/sites/default/files/styles/square_medium_440x440/public/2022-06/Bengal-Cat.jpg?itok=-n4U6Hsa',
      description: catDescription,
      isAdopted: false,
    ),
    Cat(
      id: 9,
      name: 'Tabby Cat',
      imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/4/4d/Cat_November_2010-1a.jpg',
      description: catDescription,
      isAdopted: true,
    ),
    Cat(
      id: 10,
      name: 'Persian Cat',
      imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/3/3a/Cat03.jpg',
      description: catDescription,
      isAdopted: true,
    ),
    Cat(
      id: 11,
      name: 'Domestic Cat',
      imageUrl: 'https://i.natgeofe.com/n/548467d8-c5f1-4551-9f58-6817a8d2c45e/NationalGeographic_2572187_2x3.jpg',
      description: catDescription,
      isAdopted: true,
    ),
    Cat(
      id: 12,
      name: 'Bengal Cat',
      imageUrl:
          'https://www.purina.co.uk/sites/default/files/styles/square_medium_440x440/public/2022-06/Bengal-Cat.jpg?itok=-n4U6Hsa',
      description: catDescription,
      isAdopted: true,
    ),
    Cat(
      id: 13,
      name: 'Tabby Cat',
      imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/4/4d/Cat_November_2010-1a.jpg',
      description: catDescription,
      isAdopted: true,
    ),
    Cat(
      id: 14,
      name: 'Persian Cat',
      imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/3/3a/Cat03.jpg',
      description: catDescription,
      isAdopted: true,
    ),
    Cat(
      id: 15,
      name: 'Domestic Cat',
      imageUrl: 'https://i.natgeofe.com/n/548467d8-c5f1-4551-9f58-6817a8d2c45e/NationalGeographic_2572187_2x3.jpg',
      description: catDescription,
      isAdopted: true,
    ),
    Cat(
      id: 16,
      name: 'Bengal Cat',
      imageUrl:
          'https://www.purina.co.uk/sites/default/files/styles/square_medium_440x440/public/2022-06/Bengal-Cat.jpg?itok=-n4U6Hsa',
      description: catDescription,
      isAdopted: true,
    ),
    Cat(
      id: 17,
      name: 'Tabby Cat',
      imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/4/4d/Cat_November_2010-1a.jpg',
      description: catDescription,
      isAdopted: true,
    ),
    Cat(
      id: 18,
      name: 'Persian Cat',
      imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/3/3a/Cat03.jpg',
      description: catDescription,
      isAdopted: true,
    ),
    Cat(
      id: 19,
      name: 'Domestic Cat',
      imageUrl: 'https://i.natgeofe.com/n/548467d8-c5f1-4551-9f58-6817a8d2c45e/NationalGeographic_2572187_2x3.jpg',
      description: catDescription,
      isAdopted: true,
    ),
    Cat(
      id: 20,
      name: 'Bengal Cat',
      imageUrl:
          'https://www.purina.co.uk/sites/default/files/styles/square_medium_440x440/public/2022-06/Bengal-Cat.jpg?itok=-n4U6Hsa',
      description: catDescription,
      isAdopted: true,
    ),
    Cat(
      id: 21,
      name: 'Tabby Cat',
      imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/4/4d/Cat_November_2010-1a.jpg',
      description: catDescription,
      isAdopted: true,
    ),
    Cat(
      id: 22,
      name: 'Persian Cat',
      imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/3/3a/Cat03.jpg',
      description: catDescription,
      isAdopted: true,
    ),
    Cat(
      id: 23,
      name: 'Domestic Cat',
      imageUrl: 'https://i.natgeofe.com/n/548467d8-c5f1-4551-9f58-6817a8d2c45e/NationalGeographic_2572187_2x3.jpg',
      description: catDescription,
      isAdopted: true,
    ),
    Cat(
      id: 24,
      name: 'Bengal Cat',
      imageUrl:
          'https://www.purina.co.uk/sites/default/files/styles/square_medium_440x440/public/2022-06/Bengal-Cat.jpg?itok=-n4U6Hsa',
      description: catDescription,
      isAdopted: true,
    ),
    Cat(
      id: 25,
      name: 'Tabby Cat',
      imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/4/4d/Cat_November_2010-1a.jpg',
      description: catDescription,
      isAdopted: true,
    ),
    Cat(
      id: 26,
      name: 'Persian Cat',
      imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/3/3a/Cat03.jpg',
      description: catDescription,
      isAdopted: false,
    ),
    Cat(
      id: 27,
      name: 'Domestic Cat',
      imageUrl: 'https://i.natgeofe.com/n/548467d8-c5f1-4551-9f58-6817a8d2c45e/NationalGeographic_2572187_2x3.jpg',
      description: catDescription,
      isAdopted: false,
    ),
    Cat(
      id: 28,
      name: 'Bengal Cat',
      imageUrl:
          'https://www.purina.co.uk/sites/default/files/styles/square_medium_440x440/public/2022-06/Bengal-Cat.jpg?itok=-n4U6Hsa',
      description: catDescription,
      isAdopted: false,
    ),
    Cat(
      id: 29,
      name: 'Tabby Cat',
      imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/4/4d/Cat_November_2010-1a.jpg',
      description: catDescription,
      isAdopted: false,
    ),
    Cat(
      id: 30,
      name: 'Persian Cat',
      imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/3/3a/Cat03.jpg',
      description: catDescription,
      isAdopted: false,
    ),
    Cat(
      id: 31,
      name: 'Domestic Cat',
      imageUrl: 'https://i.natgeofe.com/n/548467d8-c5f1-4551-9f58-6817a8d2c45e/NationalGeographic_2572187_2x3.jpg',
      description: catDescription,
      isAdopted: false,
    ),
    Cat(
      id: 32,
      name: 'Bengal Cat',
      imageUrl:
          'https://www.purina.co.uk/sites/default/files/styles/square_medium_440x440/public/2022-06/Bengal-Cat.jpg?itok=-n4U6Hsa',
      description: catDescription,
      isAdopted: false,
    ),
    Cat(
      id: 33,
      name: 'Tabby Cat',
      imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/4/4d/Cat_November_2010-1a.jpg',
      description: catDescription,
      isAdopted: false,
    ),
    Cat(
      id: 34,
      name: 'Persian Cat',
      imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/3/3a/Cat03.jpg',
      description: catDescription,
      isAdopted: false,
    ),
    Cat(
      id: 35,
      name: 'Domestic Cat',
      imageUrl: 'https://i.natgeofe.com/n/548467d8-c5f1-4551-9f58-6817a8d2c45e/NationalGeographic_2572187_2x3.jpg',
      description: catDescription,
      isAdopted: false,
    ),
    Cat(
      id: 36,
      name: 'Bengal Cat',
      imageUrl:
          'https://www.purina.co.uk/sites/default/files/styles/square_medium_440x440/public/2022-06/Bengal-Cat.jpg?itok=-n4U6Hsa',
      description: catDescription,
      isAdopted: false,
    ),
    Cat(
      id: 37,
      name: 'Tabby Cat',
      imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/4/4d/Cat_November_2010-1a.jpg',
      description: catDescription,
      isAdopted: false,
    ),
    Cat(
      id: 38,
      name: 'Persian Cat',
      imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/3/3a/Cat03.jpg',
      description: catDescription,
      isAdopted: false,
    ),
    Cat(
      id: 39,
      name: 'Domestic Cat',
      imageUrl: 'https://i.natgeofe.com/n/548467d8-c5f1-4551-9f58-6817a8d2c45e/NationalGeographic_2572187_2x3.jpg',
      description: catDescription,
      isAdopted: false,
    ),
    Cat(
      id: 40,
      name: 'Bengal Cat',
      imageUrl:
          'https://www.purina.co.uk/sites/default/files/styles/square_medium_440x440/public/2022-06/Bengal-Cat.jpg?itok=-n4U6Hsa',
      description: catDescription,
      isAdopted: false,
    ),
  ];

  @override
  Future<List<Cat>> getCats(String query) {
    if (query.trim().isEmpty) {
      return Future.value(_cats);
    }

    return Future.value(_cats.where((cat) {
      final catNameLower = cat.name.toLowerCase();
      final searchParamLower = query.toLowerCase();

      return catNameLower.contains(searchParamLower);
    }).toList());
  }
}
