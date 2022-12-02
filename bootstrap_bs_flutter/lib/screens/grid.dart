import 'package:bs_flutter/bs_flutter.dart';
import 'package:flutter/material.dart';

class ExampleGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.blue,
        padding: const EdgeInsets.all(12.0),
        margin: const EdgeInsets.all(20),
        child: BsCard(
          margin: EdgeInsets.all(8),
          style: BsCardStyle(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.red),
            ),
            
          ),
          children: [
            const BsCardContainer(
              margin: EdgeInsets.all(12),
              padding: EdgeInsets.all(20),
              title: Text('BsCard içinde tanımlı , BsCardContainer Kısmı 1. Başlık'),
              style: BsCardContainerStyle(
                borderColor: Colors.blue,
              ),
              decoration: BoxDecoration(
                color: Colors.teal,
              ),
            ),
            BsCardContainer(
              margin: const EdgeInsets.all(8),
              padding: const EdgeInsets.all(20),
              style: const BsCardContainerStyle(
                borderColor: Colors.amber,
              ),
              decoration: const BoxDecoration(
                color: Colors.black12,
              ),
              title: const Text('BsCard içinde tanımlı , BsCardContainer Kısmı 2. Başlık'),
              child: BsRow(
                margin: EdgeInsets.all(8),
                color: Colors.red[100],
                gutter: const EdgeInsets.only(left: 30.0, right: 30.0, top: 25.0, bottom: 25.0),
                children: [
                  BsCol(
                    decoration: BoxDecoration(
                      color: Colors.red[200]!,
                      border: Border.all(color: Colors.red[200]!),
                    ),
                    order: const ColOrder(
                      sm: 3,
                      md: 2,
                      lg: 1,
                    ),
                    offset: const ColScreen(sm: Col.col_4, md: Col.col_1, lg: Col.col_5),
                    sizes: const ColScreen(sm: Col.col_12, md: Col.col_12, lg: Col.col_6),
                    child: const Center(child: Text('(Küçülünce sm: 3, md: 2, lg: 1. Sırada) Row içindeki 1. BsCol içinde Tanımlı 1. BoxDecoration')),
                  ),
                  BsCol(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      color: Colors.red[300]!,
                    ),
                    //visibility: BsVisibility.hiddenMd,
                    order: const ColOrder(
                      sm: 2,
                      md: 1,
                      lg: 3,
                    ),
                    offset: const ColScreen(sm: Col.col_7),
                    padding: const EdgeInsets.all(20.0),
                    sizes: const ColScreen(sm: Col.col_12, md: Col.col_12, lg: Col.col_6),
                    child: const Center(child: Text('(Küçülünce sm: 2, md: 1, lg: 3 Sırada) Row içindeki 2. BsCol içinde Tanımlı 2. BoxDecoration')),
                  ),
                  BsCol(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      color: Colors.red[400]!,
                    ),
                    order: const ColOrder(
                      sm: 1,
                      md: 3,
                      lg: 2,
                    ),
                    offset: const ColScreen(sm: Col.col_1),
                    padding: const EdgeInsets.all(20.0),
                    sizes: const ColScreen(sm: Col.col_12, md: Col.col_12, lg: Col.col_6),
                    child: const Center(child: Text('(Küçülünce sm: 1, md: 3, lg: 2 Sırada) Row içindeki 3. BsCol içinde Tanımlı 3. BoxDecoration')),
                  ),
                  BsCol(
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      color: Colors.red[500]!,
                    ),
                    padding: const EdgeInsets.only(top: 10.0, bottom: 10.0),
                    sizes: const ColScreen(md: Col.col_6),
                    child: BsRow(
                      visibility: BsVisibility.hiddenMd,
                      children: [
                        BsCol(
                          decoration: BoxDecoration(
                            color: Colors.blue[200],
                            border: Border.all(color: Colors.black),
                          ),
                          padding: const EdgeInsets.all(10.0),
                          visibility: BsVisibility.hiddenXl,
                          sizes: const ColScreen(md: Col.col_4),
                          child: const Center(
                              child: Text('Row içindeki 4. BsCol içinde tanımlı gene Row içinde tanımlı 1. BsCol içinde Tanımlı 4. BoxDecoration')),
                        ),
                        BsCol(
                          decoration: BoxDecoration(
                            color: Colors.blue[400],
                            border: Border.all(color: Colors.black),
                          ),
                          padding: const EdgeInsets.all(10.0),
                          visibility: BsVisibility.hiddenLg,
                          sizes: const ColScreen(md: Col.col_4),
                          offset: const ColScreen(lg: Col.col_4),
                          child: const Center(
                              child: Text('Row içindeki 4. BsCol içinde tanımlı gene Row içinde tanımlı 2. BsCol içinde Tanımlı 5. BoxDecoration')),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
