# class ColorPalette {
#   static const Color indigo = Color(0xff4437DE);
#   static const Color red = Color(0xffED2430);
#   static const Color white = Color(0xffffffff);
#   static const Color black = Color(0xff191F28);
#   static const Color backGray = Color(0xffF2F4F6);
#   static const Color fontGray = Color(0xff82878D);
#   static const Color lineGray = Color(0xffE5E8EB);
#   static const Color hyperLink = Color(0xff3485FF);
#   Color of(String colorName) {
#     switch (colorName) {
#       case "indigo":
#         return indigo;
#       case "red":
#         return red;
#       case "white":
#         return white;
#       case "black":
#         return black;
#       default:
#         throw Exception("Invalid color name")
#     }
#   }
# }

for color in ["indigo", "red", "white", "black", "backGray", "fontGray", "lineGray", "hyperLink"]:
    print(
        f'case "{color}":\nreturn {color};'
    )
