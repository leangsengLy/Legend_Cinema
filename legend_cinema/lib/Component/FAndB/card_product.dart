import 'package:flutter/material.dart';
import 'package:legend_cinema/Model/food/food.dart';

class CardProduct extends StatefulWidget {
  const CardProduct({super.key, required this.onAddFood, required this.food});
  final void Function(Food food, bool isAdd, int countItem) onAddFood;
  final Food food;
  @override
  State<CardProduct> createState() => CardProductState();
}

class CardProductState extends State<CardProduct> {
  var countItem = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          height: 90,
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
            color: const Color.fromARGB(38, 255, 255, 255),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              ClipRRect(
                clipBehavior: Clip.hardEdge,
                borderRadius: BorderRadius.circular(6),
                child: Container(
                  width: 90,
                  height: double.infinity,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(
                    widget.food.imagePath,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(width: 20),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.food.name,
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width - 170,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '\$${widget.food.price}',
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        Row(
                          children: [
                            countItem > 0
                                ? Container(
                                    width: 100,
                                    height: 30,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(50),
                                      color:
                                          const Color.fromARGB(255, 155, 36, 0),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        GestureDetector(
                                          onTap: () => setState(() {
                                            widget.onAddFood(
                                                widget.food, false, countItem);
                                            countItem--;
                                          }),
                                          child: const Icon(Icons.remove),
                                        ),
                                        Text(
                                          countItem.toString(),
                                          style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 17,
                                          ),
                                        ),
                                        GestureDetector(
                                          onTap: () => setState(() {
                                            widget.onAddFood(
                                                widget.food, true, countItem);
                                            countItem++;
                                          }),
                                          child: const Icon(Icons.add),
                                        ),
                                      ],
                                    ),
                                  )
                                : Container(
                                    width: 30,
                                    height: 30,
                                    alignment: Alignment.center,
                                    decoration: const BoxDecoration(
                                      color: Color.fromARGB(255, 155, 36, 0),
                                      borderRadius: BorderRadius.all(
                                        Radius.circular(100),
                                      ),
                                    ),
                                    child: IconButton(
                                      style: ButtonStyle(
                                        padding: MaterialStateProperty.all(
                                            EdgeInsets.zero),
                                      ),
                                      onPressed: () {
                                        widget.onAddFood(
                                            widget.food, true, countItem);
                                        setState(() {
                                          countItem++;
                                        });
                                      },
                                      icon: const Icon(
                                        Icons.add,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                          ],
                        )
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
        const SizedBox(height: 15),
      ],
    );
  }
}
