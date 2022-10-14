bottomNavigationBar: StyleProvider(
            style: Style(),
            child: ConvexAppBar(
              backgroundColor: Color.fromARGB(255, 255, 252, 253),
              activeColor: Color.fromARGB(255, 255, 231, 231),
              color: Color.fromARGB(255, 59, 3, 3),
              gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [
                    Color.fromARGB(255, 255, 112, 46),
                    Color.fromARGB(255, 230, 66, 134),
                  ]),
              height: 50,
              top: -30,
              curveSize: 100,
              style: TabStyle.fixedCircle,
              shadowColor: Color.fromARGB(255, 53, 3, 22),
              items: [
                TabItem(icon: CupertinoIcons.home, title: 'Home'),
                TabItem(icon: CupertinoIcons.profile_circled, title: 'About'),
                TabItem(icon: CupertinoIcons.shopping_cart, title: 'Store'),
                TabItem(icon: CupertinoIcons.mail, title: 'Notifications'),
                TabItem(icon: CupertinoIcons.gift, title: 'Wishlist'),
              ],
              initialActiveIndex: selectedPage,
              onTap: (int index) {
                setState(() {
                  selectedPage = index;
                });
              },
            )

            //
            // ConvexButton.fab(
            //   icon: CupertinoIcons.plus,
            //   onTap: () => setState(() => null),
            // ),
            // body:  ShoppingPage(),
            )
  
  
  
 class Style extends StyleHook {
  @override
  double get activeIconSize => Dimensions.p30;

  @override
  double get activeIconMargin => Dimensions.p10;

  @override
  double get iconSize => Dimensions.p25;

  @override
  TextStyle textStyle(Color color, String? fontFamily) {
    return TextStyle(
        fontWeight: FontWeight.w800,
        fontSize: Dimensions.p10,
        color: color,
        fontFamily: "consolas");
  }
}
