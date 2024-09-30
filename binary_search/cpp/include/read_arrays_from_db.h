#ifndef READ_ARRAYS_FROM_DB_H
#define READ_ARRAYS_FROM_DB_H

#include <iostream>
#include <unordered_map>
#include <algorithm>
#include <sqlite3.h>

#include <vector>
#include <string>
std::vector<std::vector<int>> readArraysFromDatabase(const std::string& dbFilePath);

#endif // READ_ARRAYS_FROM_DB_H

