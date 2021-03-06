#include "qcschema.h"

using std::list;

QcSchema::QcSchema(QList<QcMetaTable> tables) {
    this->schema = tables;
}

void QcSchema::addTable(QcMetaTable table) {
    schema.append(table);
}

void QcSchema::setTables(QList<QcMetaTable> tables) {
    schema = tables;
}

QcMetaTable QcSchema::getTable(QString tableName) {

    for(int i=0;i<schema.size();i++) {
        if(schema.at(i).getName().compare(tableName) == 0) {
            return schema[i];
        }
    }

    return QcMetaTable("");
}

QList<QcMetaTable> &QcSchema::getSchema() {
    return schema;
}

QDebug operator<<(QDebug os, QcSchema &obj) {
    os << obj.getSchema();
    return os;
}
