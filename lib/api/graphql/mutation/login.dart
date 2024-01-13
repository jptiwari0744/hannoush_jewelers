class loginSchema {
  static String loginJson = """
    mutation myGenerateCustomerToken(\$email: String!, \$password: String!) {
      generateCustomerToken(email: \$email, password: \$password) {
        token
      }
    }
  """;
}
/*class loginSchema {
  static String loginJson = """

  mutation myGenerateCustomerToken(\$email:String!,(\$password:String!)) {
  generateCustomerToken(
  email: \$email
  password:\$password
  ) {
  token
  }
}
    """;
}*/
