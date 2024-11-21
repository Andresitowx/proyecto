import 'package:flutter/material.dart';

class comentarios extends StatefulWidget {
  const comentarios({super.key});

  @override
  State<comentarios> createState() => _comentariosState();
}

class _comentariosState extends State<comentarios> {
  double _currentRating = 0;
  final _commentController = TextEditingController();
  final List<Map<String, dynamic>> _reviews = [];

  void _addReview() {
    final comment = _commentController.text.trim();
    if (_currentRating > 0 && comment.isNotEmpty) {
      setState(() {
        _reviews.add({
          'rating': _currentRating,
          'comment': comment,
          'date': DateTime.now(),
        });
        _currentRating = 0;
        _commentController.clear();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'reseñas',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.black,
          iconTheme: IconThemeData(color: Colors.white),
        ),
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                const Color.fromARGB(255, 254, 255, 255),
                const Color.fromARGB(141, 192, 192, 192)
              ], // Colores del degradado
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Selecciona una calificación:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(5, (index) {
                    return IconButton(
                      icon: Icon(
                        index < _currentRating ? Icons.star : Icons.star_border,
                        color: Colors.amber,
                      ),
                      onPressed: () {
                        setState(() {
                          _currentRating = index + 1.0;
                        });
                      },
                    );
                  }),
                ),
                SizedBox(height: 20),
                TextField(
                  controller: _commentController,
                  decoration: InputDecoration(
                    labelText: 'Escribe tu comentario',
                    border: OutlineInputBorder(),
                  ),
                  maxLines: 3,
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  onPressed: _addReview,
                  child: Text('Añadir Reseña'),
                ),
                SizedBox(height: 20),
                Divider(),
                Text(
                  'Reseñas Añadidas:',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Expanded(
                  child: _reviews.isEmpty
                      ? Center(
                          child: Text('Aún no hay reseñas.'),
                        )
                      : ListView.builder(
                          itemCount: _reviews.length,
                          itemBuilder: (context, index) {
                            final review = _reviews[index];
                            return Card(
                              margin: EdgeInsets.symmetric(vertical: 8.0),
                              elevation: 3,
                              child: ListTile(
                                contentPadding: EdgeInsets.all(16.0),
                                title: Row(
                                  children: List.generate(
                                    review['rating'].toInt(),
                                    (index) => Icon(
                                      Icons.star,
                                      color: Colors.amber,
                                      size: 20,
                                    ),
                                  ),
                                ),
                                subtitle: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      review['comment'],
                                      style: TextStyle(fontSize: 16),
                                    ),
                                    SizedBox(height: 8),
                                    Text(
                                      'Fecha: ${DateTime.now()}',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontStyle: FontStyle.italic,
                                        color: Colors.grey[600],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                ),
              ],
            ),
          ),
        ));
  }
}
