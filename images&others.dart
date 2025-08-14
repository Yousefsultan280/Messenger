const image1="https://img.freepik.com/premium-vector/team-member-avatar-man-glasses-round-portrait-isolated-white-background_176411-8138.jpg";
const image4="https://cdn0.iconfinder.com/data/icons/diverse-cartoon-men-avatars/300/37-512.png";
const image2='https://thumbs.dreamstime.com/b/young-black-man-face-beard-male-portrait-avatar-flat-style-front-view-vector-young-black-man-face-beard-male-242893599.jpg';
const image3= 'https://st3.depositphotos.com/3431221/13621/v/450/depositphotos_136216036-stock-illustration-man-avatar-icon-hipster-character.jpg';

List<Map<String,dynamic>> JsonList=[
{
  "name":"yousef",
"text":"hello mr yousef,how are you",
"image":image2,
"time":"10:55pm"
},
{
"name":"ahmed",
"text":"call me ahmed,i want you ",
"image":image1,
"time":"1:30am"
},
{
"name":"mohamed",
"text":"please recall me",
"image":image3,
"time":"8:36pm"
},
  {
"name":"ali",
"text":"how arre you ali,are you free today",
"image":image4,
"time":"11:03am"
},
  {
    "name":"yousef",
    "text":"hello mr yousef",
    "image":image1,
    "time":"10:55pm"
  },
  {
    "name":"ahmed",
    "text":"call me ahmed",
    "image":image2,
    "time":"1:30am"
  },
  {
    "name":"mohamed",
    "text":"please recall me",
    "image":image3,
    "time":"8:36pm"
  },
  {
    "name":"ali",
    "text":"how arre you ali",
    "image":image4,
    "time":"11:03am"
  },
  {
    "name":"yousef",
    "text":"hello mr yousef",
    "image":image1,
    "time":"10:55pm"
  },
  {
    "name":"ahmed",
    "text":"call me ahmed",
    "image":image2,
    "time":"1:30am"
  },
  {
    "name":"mohamed",
    "text":"please recall me",
    "image":image3,
    "time":"8:36pm"
  },
  {
    "name":"ali",
    "text":"how arre you ali",
    "image":image4,
    "time":"11:03am"
  },
  {
    "name":"yousef",
    "text":"hello mr yousef",
    "image":image1,
    "time":"10:55pm"
  },
  {
    "name":"ahmed",
    "text":"call me ahmed",
    "image":image2,
    "time":"1:30am"
  },
  {
    "name":"mohamed",
    "text":"please recall me",
    "image":image3,
    "time":"8:36pm"
  },
  {
    "name":"ali",
    "text":"how arre you ali",
    "image":image4,
    "time":"11:03am"
  },
];

class ChatModel{
  String? name;
  String? text;
  String? image;
  String? time;

  ChatModel(this.name,this.text,this.image,this.time);

  ChatModel.FromJson(Map json){
    name=json["name"];
    text=json["text"];
    image=json["image"];
    time=json["time"];
  }


}
