import 'package:ecommerce/providers/authProvider.dart';
import 'package:ecommerce/providers/homeProvider.dart';
import 'package:ecommerce/providers/logOutProvider.dart';
import 'package:ecommerce/providers/loginProvider.dart';
import 'package:ecommerce/routes/routes.dart';
import 'package:ecommerce/screen/LoginPage.dart';
import 'package:ecommerce/screen/checkoutPage.dart';
import 'package:ecommerce/screen/customStepper.dart';
import 'package:ecommerce/screen/homePage.dart';
import 'package:ecommerce/screen/orderSummary.dart';
import 'package:ecommerce/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // SharedPreferences prefs = await SharedPreferences.getInstance();
  await initHiveForFlutter();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => LoginProvider()),
        ChangeNotifierProvider(create: (_) => AuthProvider()),
        ChangeNotifierProvider(create: (_) => LogOutProvider()),
        ChangeNotifierProvider(create: (_) => HomeProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: themedata,
        routes: allRoutes,
        home: AppRoot(),
      ),
    );
  }
}

class AppRoot extends StatefulWidget {
  const AppRoot({super.key});

  @override
  State<AppRoot> createState() => _AppRootState();
}

class _AppRootState extends State<AppRoot> {
  // var token;
  @override
  // void initState() {
  //   getToken();
  //   // TODO: implement initState
  //   super.initState();
  // }

  // getToken() async {
  //   // SharedPreferences prefs = await SharedPreferences.getInstance();
  //
  //   token = Provider.of<AuthProvider>(context, listen: false).authToken;
  //   // token = await prefs.getString('auth_token');
  //   print('main$token');
  // }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // Widget content = LoginPage();
    // if (token != null) {
    //   content = CheckOutPage();
    // }
    return CheckOutPage();
  }
}

// class TextApp extends StatefulWidget {
//   const TextApp({super.key});
//
//   @override
//   State<TextApp> createState() => _TextAppState();
// }
//
// class _TextAppState extends State<TextApp> {
//   static String html = '<div class=\"img_bg_banner\">\r\n <div class=\"hero-img\"><img class=\"desktop-hero-img\" src=\"https://hannoush.mangoitsol.com/media/wysiwyg/Home_Page_Banner_1.jpg\" alt=\"\" />\r\n <img class=\"mobile-hero-img\" src=\"https://hannoush.mangoitsol.com/media/wysiwyg/Home_Page_Banner_Vertical.png\" alt=\"\" /></div>\r\n <div class=\"container-a wrapper_text_btn\">\r\n <h3 class=\"subtitle_first_banner\"><span style=\"color: #FFFFFF;\"><b><span class=\"fadein\">WE</span> <br> NEVER STOP <br>CELEBRATING.</b><span>\r\n </h3>\r\n <a class=\"bnt_first_banner\"\r\n href=\"https://hannoush.mangoitsol.com//shop-for-bridal/engagement-rings.html\">SHOP NEW\r\n ARRIVALS</a>\r\n </div>\r\n </div>\r\n \r\n\n <div class=\"widget block product_wrapper diamond_essential\">\r\n <div class=\"title_product_section\"><span>DIAMOND ESSENTIALS</span></div>\r\n <div class=\"subtitle_product_section\">Celebrate every occasion<br>with the diamond must-haves.</div>\r\n <div class=\"blocks-promo\">\r\n <div class=\"block-promo-wrapper block-promo-2columns diamond_essential_box\">\r\n <a href=\"https://hannoush.mangoitsol.com/diamond/diamond-necklaces.html\" class=\"block-promo sale-main\">\r\n <img loading=\"lazy\" src=\"https://hannoush.mangoitsol.com/media/wysiwyg/Diamond_Necklace.png\" alt=\"Diamond_Necklace\" />\r\n <span class=\"content\">\r\n SHOP NECKLACES\r\n </span>\r\n </a>\r\n <a href=\"https://hannoush.mangoitsol.com/diamond/diamond-ring.html\" class=\"block-promo sale-women\">\r\n <img loading=\"lazy\" src=\"https://hannoush.mangoitsol.com/media/wysiwyg/Emerald_Cut_Diamond_Ring_pure_black.png\"\r\n alt=\"Emerald_Cut_Diamond_Ring_pure_black\" />\r\n <span class=\"content\">\r\n SHOP RINGS\r\n </span>\r\n </a>\r\n <a href=\"https://hannoush.mangoitsol.com/diamond/diamond-earrings.html\" class=\"block-promo sale-women\">\r\n <img loading=\"lazy\" src=\"https://hannoush.mangoitsol.com/media/wysiwyg/Diamond_Studs.png\" alt=\"Diamond_Studs\" />\r\n <span class=\"content\">\r\n SHOP EARRINGS\r\n </span>\r\n </a>\r\n <a href=\"https://hannoush.mangoitsol.com/diamond/diamond-bracelets.html\" class=\"block-promo sale-women\">\r\n <img loading=\"lazy\" src=\"https://hannoush.mangoitsol.com/media/wysiwyg/Tennis_bracelet.png\" alt=\"Tennis_bracelet\" />\r\n <span class=\"content\">\r\n SHOP BRACELETS\r\n </span>\r\n </a>\r\n </div>\r\n </div>\r\n</div>\n\r\n \r\n <div class=\"bg_imgage shop-bridal-section\">\r\n <div class=\"container-a showproduct_\">\r\n <div class=\"img-box\"><img class=\"desktop-img-box\" src=\"https://hannoush.mangoitsol.com/media/wysiwyg/0a1c70_b80b654fefdd41108973b601484e2535_mv2.jpg\" alt=\"\" />\r\n <img class=\"mobile-img-box\" src=\"https://hannoush.mangoitsol.com/media/wysiwyg/mobile_home_page_bridal_.jpg\" alt=\"\" /></div>\r\n <div class=\"product_section_wrapper \">\r\n \r\n <div class=\"product_custom_show\">\r\n <div>\r\n <img class=\"mobile_img\" src=\"https://hannoush.mangoitsol.com/media/logo/stores/1/Hannoush_white_logo.png\" alt=\"\" />\r\n <div class=\"title_product_show\">The trusted source for <br> bridal diamonds since</div>\r\n <div class=\"subtitle_product_show_mobile \"><img src=\"https://hannoush.mangoitsol.com/media/wysiwyg/Rl9QUdnY_1.png\" alt=\"\" /></div>\r\n <a href=\"https://hannoush.mangoitsol.com//shop-for-bridal.html\"\r\n class=\"button_show\">SHOP BRIDAL</a>\r\n </div>\r\n </div>\r\n </div>\r\n </div>\r\n </div>\r\n <div class=\"brand_section\">\r\n <div class=\"widget block product_wrapper bridal \">\r\n <div class=\"title_product_section\">NEW BRIDAL ARRIVALS</div>\r\n <div class=\"subtitle_product_section extensive brand_section_content\">Shop our extensive bridal collection with complete confidence, knowing your diamond bridal jewelry has been designed and manufactured at the highest level of quality and industry standards.</div>\r\n <div class=\"blocks-promo\">\r\n <div class=\"block-promo-wrapper block-promo-2columns\">\r\n <a href=\"https://hannoush.mangoitsol.com/tacori-classic-crescent-platinum-0-77ctw-2644rd7512.html\" class=\"block-promo sale-main\">\r\n <img loading=\"lazy\" src=\"https://hannoush.mangoitsol.com/media/wysiwyg/Bridal_SKU_2644RD7512.png\"\r\n alt=\"Bridal_SKU_2644RD7512\" />\r\n </a>\r\n <a href=\"https://hannoush.mangoitsol.com/simply-tacori-platinum-diamond-semi-mount-2659ec75x55.html\" class=\"block-promo sale-women\">\r\n <img loading=\"lazy\" src=\"https://hannoush.mangoitsol.com/media/wysiwyg/Bridal_SKU_2659EC75X55.png\"\r\n alt=\"Bridal_SKU_2659EC75X55\" />\r\n </a>\r\n <a href=\"https://hannoush.mangoitsol.com/tacori-dantela-18k-white-gold-diamond-semi-mount-39-2rd6w.html\" class=\"block-promo sale-women\">\r\n <img loading=\"lazy\" src=\"https://hannoush.mangoitsol.com/media/wysiwyg/Bridal_SKU_2663OV85X65_.png\"\r\n alt=\"Bridal_SKU_2663OV85X65_\" />\r\n </a>\r\n <a href=\"https://hannoush.mangoitsol.com/simply-tacori-platinum-diamond-engagement-ring-0-11-ctw-2654ec75x55.html\" class=\"block-promo sale-women\">\r\n <img loading=\"lazy\" src=\"https://hannoush.mangoitsol.com/media/wysiwyg/Bridal_SKU_2654EC75X55_.png\" alt=\"\" />\r\n \r\n </a>\r\n </div>\r\n <a href=\"https://hannoush.mangoitsol.com//shop-for-bridal.html\" class=\"button_show bridal_btn\"><span>SHOP\r\n BRIDAL COLLECTION</span></a>\r\n </div>\r\n </div>\r\n </div>\r\n <div class=\"main-watch-section-primary\">\r\n <div class=\"watch-section-primary\">\r\n <div class=\"watch-section-secondry\">\r\n <img class=\"mobile_img\" src=\"https://hannoush.mangoitsol.com/media/logo/stores/1/Hannoush_white_logo.png\" width=\"700px\" alt=\"\" />\r\n <div class=\"title_product_show\">Specializing in high quality timepieces<br>that stand the rest of time.</div>\r\n <a href=\"https://hannoush.mangoitsol.com//jewelry/watches.html\" class=\"button_show watches_btn\"><span>SHOP\r\n WATCHES</span></a>\r\n </div>\r\n <div class=\"watch-section citizen_watches\">\r\n <img class=\"citizen_watches desktop_citizen_watches\" src=\"https://hannoush.mangoitsol.com/media/New_Design_Images/citizen_watches.jpg\" alt=\"\" />\r\n <img class=\"mobile_citizen_watches\" src=\"https://hannoush.mangoitsol.com/media/wysiwyg/mob-citizen-img.jpg\" alt=\"\" />\r\n </div>\r\n </div>\r\n </div>\r\n \r\n\n <div class=\"widget block product_wrapper watches_section\">\r\n <div class=\" subtitle_product_section watches_section_heading\">TIMELESS DESIGN</div>\r\n <div class=\"subtitle_product_section watches_section_txt\">Watches that move you.</div>\r\n <div class=\"blocks-promo-time\">\r\n <div class=\"block-promo-wrapper block-promo-2columns\">\r\n\r\n <a href=\"https://hannoush.mangoitsol.com/citizen-eco-drive-drive-fe1210-07a.html\" class=\"block-promo sale-main\">\r\n <img loading=\"lazy\" src=\"https://hannoush.mangoitsol.com/media/wysiwyg/Citizen_watch_2.png\" alt=\"Citizen_watch_2\" />\r\n </a>\r\n <a href=\"https://hannoush.mangoitsol.com/citizen-eco-drive-drive-watch-em0688-78l.html\" class=\"block-promo sale-main\">\r\n <img loading=\"lazy\" src=\"https://hannoush.mangoitsol.com/media/wysiwyg/Citizen_watch_3.png\" alt=\"Citizen_watch_3\" />\r\n </a>\r\n <a href=\"https://hannoush.mangoitsol.com/citizen-eco-drive-drive-watch-em0688-78l.html\" class=\"block-promo sale-main\">\r\n <img loading=\"lazy\" src=\"https://hannoush.mangoitsol.com/media/wysiwyg/Citizen_watch_4.png\" alt=\"Citizen_watch_4\" />\r\n </a>\r\n <a href=\"https://hannoush.mangoitsol.com/citizen-eco-drive-pcat-cb5886-58h.html\" class=\"block-promo sale-main\">\r\n <img src=\"https://hannoush.mangoitsol.com/media/wysiwyg/Citizen_watch_1.png\" alt=\"Citizen_watch_1\" />\r\n </a>\r\n </div>\r\n <span class=\"content\">\r\n <a href=\"https://hannoush.mangoitsol.com/jewelry/watches/citizen.html\" class=\"block-promo sale-main\">\r\n <strong class=\"title\">SHOP CITIZEN</strong>\r\n </a>\r\n </span>\r\n </div>\r\n\r\n</div>\n\r\n \r\n <div class=\"pandora_section brand_section\">\r\n <div class=\"left_brand\">\r\n <a class=\"image_link left_brand_img\" href=\"https://hannoush.mangoitsol.com//brand-collections/pandora.html\">\r\n <img class=\"pandora\" src='https://hannoush.mangoitsol.com/media/New_Design_Images/pandora_new.jpg' alt=\"pandora_new\" /> \r\n </a>\r\n <div class=\"left_brand_content\">\r\n <img class=\"pandora\" src='https://hannoush.mangoitsol.com/media/New_Design_Images/Pandora-Logo.png' alt=\"Pandora\" /><br>\r\n <a href=\"https://hannoush.mangoitsol.com//jewelry/watches.html\" class=\"button_show pandora_btn \"><span>SHOP\r\n PANDORA</span></a>\r\n </div>\r\n </div>\r\n <div class=\"right_brand\">\r\n <a class=\"image_link\" href=\"https://hannoush.mangoitsol.com//brand-collections/pandora.html\">\r\n <!-- <img class=\"pandora_hand_desktop\" src='https://hannoush.mangoitsol.com/media/New_Design_Images/pandora_hand.jpg' alt=\"\" /> --> \r\n <div class=\"hand-img mobile\">\r\n <div><img src=\"https://hannoush.mangoitsol.com/media/wysiwyg/Pandora-Logo_1.png\" alt=\"\" /></div>\r\n </div> \r\n \r\n </a>\r\n </div>\r\n </div>\r\n <div class=\"blocks-promo pandora_collections\">\r\n <div class=\"block-promo-wrapper block-promo-2columns\">\r\n <a href=\"https://hannoush.mangoitsol.com/pandora-romantic-heart-clear-cz-dangle-in-14k-gold-751001cz.html\" class=\"block-promo sale-main\">\r\n <img src=\"https://hannoush.mangoitsol.com/media/wysiwyg/PANDORA_PENDANT_751001CZ_.png\" alt=\"\" />\r\n </a>\r\n <a href=\"https://hannoush.mangoitsol.com/pink-daisy-flower-trio-ring.html\" class=\"block-promo sale-women\">\r\n <img loading=\"lazy\" src=\"https://hannoush.mangoitsol.com/media/wysiwyg/PANDORA_FLOWER_RING_SKU_188792C01.png\" alt=\"PANDORA_FLOWER_RING_SKU_188792C01\" />\r\n </a>\r\n <a href=\"https://hannoush.mangoitsol.com/pandora-14k-gold-bangle-with-signature-clasp-550713.html\" class=\"block-promo sale-women\">\r\n <img loading=\"lazy\" src=\"https://hannoush.mangoitsol.com/media/wysiwyg/PANDORA_BRACELET_550713.png\" alt=\"PANDORA_BRACELET_550713\" />\r\n </a>\r\n <a href=\"https://hannoush.mangoitsol.com/pandora-signature-ring-clear-cz-196231cz.html\" class=\"block-promo sale-women\">\r\n <img loading=\"lazy\" src=\"https://hannoush.mangoitsol.com/media/wysiwyg/PANDORA_RING_196231CZ.png\" alt=\"PANDORA_RING_196231CZ\" />\r\n </a>\r\n <a href=\"https://hannoush.mangoitsol.com/wrapped-open-infinity-ring.html\" class=\"block-promo sale-women\">\r\n <img loading=\"lazy\" src=\"https://hannoush.mangoitsol.com/media/wysiwyg/PANDOR_RING_188882C01.png\" alt=\"PANDOR_RING_188882C01\" />\r\n </a>\r\n </div>\r\n <span class=\"content\">\r\n <a href=\"https://hannoush.mangoitsol.com/brand-collections/pandora.html\" alt=\"PANDOR_RING_188882C01\">\r\n <strong class=\"title pandora_title\">SHOP THE PANDORA COLLECTION</strong>\r\n </a>\r\n </span>\r\n </div>\r\n';
//   String markdown = html2md.convert(html);
//
//   @override
//   Widget build(BuildContext context) {
//     return MarkdownBody(
//       data: markdown,
//     );
//   }
// }
