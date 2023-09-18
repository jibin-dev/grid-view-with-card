import 'package:flutter/material.dart';

class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid view'),
      ),
    body: Stack(children: [
      GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,childAspectRatio: 2/3), itemBuilder: (context, index) {
            return Container(
              color: Colors.amber,
              margin: EdgeInsets.all(5),
              child: Center(child:
               Column(
                 children: [
                   Text(l1[index],style: TextStyle(fontWeight: FontWeight.bold,
              fontSize: 20),),
              Image.network(l2[index])
                 ],
               )),

            );
          },itemCount: 6
          ),
    ],),
    );
  }
}
final List l1=['Pinaple','orange','apple','banana','grape','guava'];
final List l2=['https://img.aws.livestrongcdn.com/ls-article-image-673/ds-photo/getty/article/240/232/136694637.jpg',
'https://dvineuncorked.files.wordpress.com/2011/09/orange.jpg',
'https://www.wallpaperflare.com/static/947/293/305/pple-leaves-tail-slice-wallpaper.jpg',
'https://www.gannett-cdn.com/-mm-/cec01b6067e6a621611069b751341797d19f809f/c=0-218-4288-2630/local/-/media/2017/04/26/Brevard/B9327244777Z.1_20170426084937_000_GI3I4LULC.1-0.jpg?width=3200&height=1800&fit=crop&format=pjpg&auto=webp',
'https://get.pxhere.com/photo/plant-grape-vine-wine-fruit-food-produce-agriculture-grapevine-grapes-winegrowing-flowering-plant-vitis-land-plant-grapevine-family-zante-currant-839340.jpg',
'http://womenpla.net/wp-content/uploads/2014/12/guava1.jpg'];