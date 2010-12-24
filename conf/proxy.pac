function FindProxyForURL(url, host) {
     if (shExpMatch(url,"*.onion/*")) { return "PROXY localhost:8118"; }
     return "DIRECT";
}