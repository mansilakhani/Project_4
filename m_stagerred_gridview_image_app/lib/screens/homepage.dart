import 'package:flutter/material.dart';
import 'package:m_stagerred_gridview_image_app/globals/globals.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Image Gallery"),
        elevation: 0,
        centerTitle: true,
      ),
      body: Container(
        color: Colors.black,
        padding: EdgeInsets.all(5),
        child: StaggeredGridView.countBuilder(
            itemCount: itemlist.length,
            crossAxisSpacing: 2,
            crossAxisCount: 2,
            mainAxisSpacing: 1,
            itemBuilder: (context, i) {
              return InkWell(
                onTap: () {
                  // Navigator.of(context).push(
                  //     MaterialPageRoute(builder: (context) => DetailPage()));
                  Navigator.of(context)
                      .pushNamed('detail_screen', arguments: i);
                },
                child: Card(
                  child: Column(
                    children: [
                      Image.network(itemlist[i].url),
                      // Text(itemlist[i].name)
                      Container(
                        alignment: Alignment.center,
                        height: 28,
                        width: 200,
                        child: Text(
                          itemlist[i].name,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.8),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
            staggeredTileBuilder: (i) => const StaggeredTile.fit(1)),
      ),
    );
  }
}
