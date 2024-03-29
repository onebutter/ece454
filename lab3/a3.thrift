service KeyValueService {
  string get(1: string key);
  void put(1: string key, 2: string value);
  void putBackup(1: string key, 2: string value);
  void initBackUpClient();
  void copyData(1: map<string, string> data);
  map<string, string> getData();
}

