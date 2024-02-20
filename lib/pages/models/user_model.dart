class User{
  String? email;
  User(this.email);

  User.fromJson(Map<String,dynamic> json){
    email = json['email'];
  }

  Map<String,dynamic> toJson(){
    return {
      "email":email
    };
  }
}