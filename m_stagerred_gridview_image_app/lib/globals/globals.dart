class Item {
  String name;
  String url;
  final List<String> imagelist;

  Item({
    required this.name,
    required this.url,
    required this.imagelist,
  });
}

List<Item> itemlist = [
  Item(
      name: "Hotels and Resorts",
      url:
          "https://media-cdn.tripadvisor.com/media/photo-s/1c/d3/b2/4f/exterior-view.jpg",
      imagelist: [
        'https://digital.ihg.com/is/image/ihg/even-hotels-alpharetta-6479711701-4x3',
        'https://economictimes.indiatimes.com/thumb/msid-73829985,width-1200,height-900,resizemode-4,imgsize-235513/hotel-agencies.jpg?from=mdr',
        'https://media-cdn.tripadvisor.com/media/photo-s/1c/91/a2/39/the-blue-orchid-hotel.jpg',
        'https://i.insider.com/5dfbe657855cc2176d460cd4?width=1000&format=jpeg&auto=webp',
      ]),
  Item(
      name: "Stationery",
      url: "https://www.provistaonline.in/wp-content/uploads/2020/01/02.jpg",
      imagelist: [
        'https://st.depositphotos.com/1741875/1237/i/600/depositphotos_12376816-stock-photo-stack-of-old-books.jpg',
        'https://m.media-amazon.com/images/I/616tqxn3bwL._SX679_.jpg',
        'https://sc04.alicdn.com/kf/H64b2a274ce6847cfa29b92f6414d638eq.png',
        'https://m.media-amazon.com/images/I/61k75LQ1MYL.jpg',
      ]),
  Item(
      name: "Crockery",
      url:
          "https://5.imimg.com/data5/ME/NR/MY-46342583/dinner-crockery-set-500x500.jpg",
      imagelist: [
        'https://www.aldaindia.com/400/alda-cereal-bowls-16-cm-red.jpg',
        'https://cdn.citymapia.com/kottayam/elba-traders/16740/Portfolio.jpg?biz=2859',
        'https://5.imimg.com/data5/SELLER/Default/2022/2/ZW/RK/GI/121280775/ec-500x500.jpg',
        'https://3.imimg.com/data3/FL/TM/MY-5463312/stoneware-crockery-250x250.jpg',
      ]),
  Item(
      name: "Makeup Haul",
      url:
          "https://i.pinimg.com/736x/c7/2d/f4/c72df4c733fb453a8849d420c47df265.jpg",
      imagelist: [
        'https://auroracos.com/wp-content/uploads/2022/03/Create-your-own-cosmetics-line-600x600.png',
        'https://cdn.cliqueinc.com/posts/278355/best-indie-beauty-brands-278355-1552341059857-main.700x0c.jpg',
        'https://www.bigw.com.au/medias/sys_master/images/images/h00/h8b/11390418944030.jpg',
        'https://www.maybelline-me.com/~/media/mny/mena%20hub/eye-make-up/mascara/colossal-wtp/maybelline-eye-mascara-colossal-wtp-o.jpg',
      ]),
  Item(
      name: "Houses",
      url:
          "https://img.staticmb.com/mbcontent/images/uploads/2022/5/Fusion%20Style%20Modern%20Kerala%20House%20Design.jpg",
      imagelist: [
        'https://www.coastalhomeplans.com/wp-content/uploads/2018/06/orchard_hill_front_rendering_xl.jpg',
        'https://cdn.houseplansservices.com/content/9ns4vp133de3p7n98dhr862uvd/w384x256.jpg?v=2',
        'https://coralhomes.com.au/wp-content/uploads/Boston-42-MKII-Newport-Montauk-Facade-1190x680.jpg',
        'https://images.adsttc.com/media/images/531d/2ee2/c07a/8068/8c00/0298/large_jpg/02.jpg?1394421462',
      ]),
  Item(
      name: "Electronics",
      url:
          "https://ds393qgzrxwzn.cloudfront.net/resize/m500x500/cat1/img/images/0/Imzxui09mw.jpg",
      imagelist: [
        'https://media.sketchfab.com/models/49138c28de334c84955719ffcb4e7aab/thumbnails/75128d37972248998836ee86fed8715d/8682fe7776c64bde86ea825e28472fbd.jpeg',
        'https://5.imimg.com/data5/MK/FO/MY-45186220/asus-laptop-500x500.jpg',
        'https://static.digit.in/product/49d9f4f1f9402f3948205dfcb28254c9cf205a23.jpeg?tr=w-1200',
        'http://gsmimpex.in/images/Electronics/Printers%20wholesaler.jpg',
      ]),
  Item(
      name: "Temples",
      url:
          "https://ihplb.b-cdn.net/wp-content/uploads/2019/01/Akshardham-Temple-Delhi.jpg",
      imagelist: [
        'https://images.chinahighlights.com/allpicture/2015/10/1d6527bfcb4c43cca9e4fe95_cut_800x500_61.jpg',
        'https://www.nativeplanet.com/img/2014/12/08-akshardhamtemple1.jpg',
        'https://res.cloudinary.com/thrillophilia/image/upload/c_fill,f_auto,fl_progressive.strip_profile,g_auto,h_300,q_auto,w_400/v1/filestore/tj3t7sun43cxr8z7kobiq734u8ej_shutterstock_1032564361.jpg',
        'https://res.cloudinary.com/thrillophilia/image/upload/c_fill,f_auto,fl_progressive.strip_profile,g_auto,h_600,q_auto,w_auto/v1/filestore/o5lurnm3c614a5osbufjw8oo7o21_shutterstock_1364029607.jpg',
      ]),
  Item(
      name: "Zoo",
      url:
          // "https://upload.wikimedia.org/wikipedia/commons/thumb/a/a0/Gate_of_Beijing_Zoo_%2820210219172711%29.jpg/1200px-Gate_of_Beijing_Zoo_%2820210219172711%29.jpg",
          'https://yourbrooklynguide.com/wp-content/uploads/2020/08/Prospect-Park-Zoo-Prospect-PArk-Entrance-sign.jpg',
      imagelist: [
        'https://upload.wikimedia.org/wikipedia/commons/8/8a/Blank_Park_Zoo_Entrance.jpg',
        'https://d1shwc4yijf729.cloudfront.net/resized/1280x640/assets/2021/01/04/20160827-152314_8_5ff29a85398fa.webp',
        'https://images.fineartamerica.com/images/artworkimages/mediumlarge/1/lincoln-park-zoo-east-entrance-fall-jele1977jpg-tom-jelen.jpg',
        'https://upload.wikimedia.org/wikipedia/commons/thumb/7/7a/Bronx_Zoo_001.jpg/640px-Bronx_Zoo_001.jpg',
      ]),
  Item(
      name: "Furniture",
      url:
          "https://w0.peakpx.com/wallpaper/280/795/HD-wallpaper-gray-room-modern-interiors-gray-furniture-laminate-on-wall-modern-design-living-room.jpg",
      imagelist: [
        'https://i.pinimg.com/originals/55/79/aa/5579aa869c0759d3d1b9346d6424d7f2.jpg',
        'https://www.acmekitchenandinterior.com/uploaded-files/thumb-cache/member_17/thumb-400-400-wooden-office-furniture857.jpg',
        'https://www.speedoring.com/images/category/554258551.jpg',
        'https://m.media-amazon.com/images/I/41XrYtXgD6L.jpg',
      ]),
  Item(
      name: "Sports",
      url:
          "https://post.healthline.com/wp-content/uploads/2020/09/6382-children_playing_soccer-732x549-thumbnail-732x549.jpg",
      imagelist: [
        'https://rukminim1.flixcart.com/image/612/612/l0o6nbk0/kit/s/l/6/double-shaft-badminton-racket-pack-of-2-with-10-piece-plasic-original-imagcek3hhcsmgz7.jpeg?q=70',
        'https://st.depositphotos.com/1229718/1910/i/600/depositphotos_19103837-stock-photo-sports-equipment.jpg',
        'https://m.media-amazon.com/images/I/71UHJ+lFvmL._SL1491_.jpg',
        'https://rukminim1.flixcart.com/image/416/416/kxp0mfk0/kit/b/l/j/kid-boxing-kit-punching-bag-gloves-head-guard-hxbboxingkit-rd-8-original-imaga34dgqhvxs4k.jpeg?q=70',
      ]),
];
