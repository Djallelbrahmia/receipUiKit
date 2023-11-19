import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:recipesapp/models/recipe.dart';

class PopularReceipeList extends StatelessWidget {
  const PopularReceipeList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        children: [
          ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: recipes.length,
              shrinkWrap: true,
              itemBuilder: (context, index) {
                return Container(
                  height: 98,
                  margin: EdgeInsets.only(bottom: 16),
                  padding: EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.transparent),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Row(
                          children: [
                            Container(
                              height: 53.43,
                              width: 73,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(16),
                                  image: DecorationImage(
                                      image: AssetImage(
                                          "assets/images/${recipes[index].recipeImage}"))),
                            ),
                            SizedBox(
                              width: 18.56,
                            ),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    recipes[index].recipeName,
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    style: TextStyle(
                                        fontSize: 17,
                                        fontWeight: FontWeight.w500),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  Text(
                                    " ${recipes[index].recipeMaker}",
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                    style: TextStyle(
                                      fontSize: 14,
                                    ),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CircleAvatar(
                            radius: 15,
                            child: Text(
                              recipes[index].recipeMaker[0],
                              style: TextStyle(color: recipes[index].endColor),
                            ),
                            backgroundColor: recipes[index].startColor,
                          ),
                          Spacer(),
                          Row(
                            children: [
                              SvgPicture.asset(
                                  "assets/svg/icon-share-grey.svg"),
                              SizedBox(
                                width: 7.65,
                              ),
                              SvgPicture.asset(
                                  "assets/svg/icon-bookmark-grey.svg"),
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                );
              }),
        ],
      ),
    );
  }
}
