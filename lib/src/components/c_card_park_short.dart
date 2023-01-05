import 'package:flutter/material.dart';
import 'package:learning_flutter/src/util/datetime_util.dart';

class CardParkShort extends StatelessWidget {
  const CardParkShort({
    super.key,
    required this.name,
    this.viewedAt = '',
  });

  final String name;
  final String viewedAt;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      width: size.width - 40,
      height: 100,
      padding: const EdgeInsets.symmetric(horizontal: 5.0),
      child: Card(
        elevation: 1,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
          //set border radius more than 50% of height and width to make circle
        ),
        child: InkWell(
          onTap: () {
            print('Hello World');
          },
          borderRadius: BorderRadius.circular(15),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SizedBox(
                  width: 80,
                  child: AspectRatio(
                    aspectRatio: 1.5,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        image: const DecorationImage(
                          fit: BoxFit.fitWidth,
                          alignment: FractionalOffset.topCenter,
                          image: NetworkImage(
                            'https://images.unsplash.com/photo-1470224114660-3f6686c562eb',
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          name,
                          style: const TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Text(
                          'Visto em: ${DateTimeUtils.getFormattedDate(
                            date: viewedAt,
                          )}',
                        ),
                      ),
                    ],
                  ),
                ),
                IconButton(
                  onPressed: () {
                    print('Pressed');
                  },
                  icon: const Icon(
                    Icons.keyboard_arrow_right,
                    size: 28.0,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
