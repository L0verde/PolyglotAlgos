#include "../include/read_arrays_from_db.h"
#include <iostream>
#include <vector>


std::vector<std::vector<int>> readArraysFromDatabase(const std::string& dbFilePath){
    sqlite3* db;
    sqlite3_stmt* stmt;
    std::vector<std::vector<int>> arraysVec;

    int rc = sqlite3_open(dbFilePath.c_str(), &db);
    if (rc != SQLITE_OK)
    {
        std::cerr << "Cannot open database: " << sqlite3_errmsg(db) << std::endl;
        sqlite3_close(db);
        return arraysVec;
    }

    const char* sql =
    "SELECT array_id, element_index, element_value FROM arrays"
        "ORDER BY array_id, element_index;";
    rc = sqlite3_prepare(db, sql, -1, &stmt, NULL);
    if (rc != SQLITE_OK)
    {
        std::cerr << "Failed to prepare statement: " << sqlite3_errmsg(db) << std::endl;
        sqlite3_close(db);
        return arraysVec;
    }

    // Use a map to group elements by array_id
    std::unordered_map<int, std::vector<std::pair<int, int>>> arraysMap;

    // Execute the statement and read the data
    while ((rc = sqlite3_step(stmt)) == SQLITE_ROW) {
        int array_id = sqlite3_column_int(stmt, 0);
        int element_index = sqlite3_column_int(stmt, 1);
        int element_value = sqlite3_column_int(stmt, 2);

        arraysMap[array_id].emplace_back(element_index, element_value);
    }

    if (rc != SQLITE_DONE) {
        std::cerr << "Error during step: " << sqlite3_errmsg(db) << std::endl;
    }

    sqlite3_finalize(stmt);
    sqlite3_close(db);

    // Convert the map to a vector of arrays
    for (auto& pair : arraysMap) {
        auto& elements = pair.second;
        // Sort elements by element_index
        std::sort(elements.begin(), elements.end(), [](const auto& a, const auto& b) {
            return a.first < b.first;
        });

        // Extract the element values
        std::vector<int> array;
        for (const auto& elem : elements) {
            array.push_back(elem.second);
        }

        arraysVec.push_back(array);
    }

    return arraysVec;
}

