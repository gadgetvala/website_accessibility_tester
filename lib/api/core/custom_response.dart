// ignore_for_file: constant_identifier_names

class CustomResponse<T> {
  late T data;
  late Status status;
  late String message;

  CustomResponse.completed(this.data) : status = Status.COMPLETED;
  CustomResponse.error(this.message) : status = Status.ERROR;
}

enum Status { COMPLETED, ERROR }
