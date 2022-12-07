//analisar se este nome ficou clean
enum CoreConst {
  apiBaseUrl('ec2-54-226-60-142.compute-1.amazonaws.com:8080/api/v1/'),
  apiLoginUrl('auth/token');

  final String value;
  const CoreConst(this.value);
}
