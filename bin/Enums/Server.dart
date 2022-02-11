enum Server { SERVER_DEV, SERVER_DEP }

void main() {
  AppServer server = AppServer();
  print(server.getServer());
}

class AppServer {
  var isTester = true;

  String getServer() {
    if (isTester) {
      return domain(Server.SERVER_DEV);
    } else {
      return domain(Server.SERVER_DEP);
    }
  }

  String domain(Server server) {
    switch (server) {
      case Server.SERVER_DEV:
        return "https://localhost:8080";
      case Server.SERVER_DEP:
        return "https://online.pdp.uz";
    }
  }
}
