.class public Lcom/inveno/flow/database/SqlBuilder;
.super Ljava/lang/Object;
.source "SqlBuilder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildDeleteSql(Ljava/lang/Class;Ljava/lang/Object;)Lcom/inveno/flow/database/SqlInfo;
    .locals 6
    .parameter
    .parameter "idValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/inveno/flow/database/SqlInfo;"
        }
    .end annotation

    .prologue
    .line 129
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcom/inveno/flow/database/table/TableInfo;->get(Ljava/lang/Class;)Lcom/inveno/flow/database/table/TableInfo;

    move-result-object v3

    .line 130
    .local v3, table:Lcom/inveno/flow/database/table/TableInfo;
    invoke-virtual {v3}, Lcom/inveno/flow/database/table/TableInfo;->getId()Lcom/inveno/flow/database/table/Id;

    move-result-object v0

    .line 132
    .local v0, id:Lcom/inveno/flow/database/table/Id;
    if-nez p1, :cond_0

    .line 133
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "getDeleteSQL:idValue is null"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 136
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    .line 137
    invoke-virtual {v3}, Lcom/inveno/flow/database/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/inveno/flow/database/SqlBuilder;->getDeleteSqlBytableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 136
    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 138
    .local v2, strSQL:Ljava/lang/StringBuffer;
    const-string v4, " WHERE "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v0}, Lcom/inveno/flow/database/table/Id;->getColumn()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "=?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 140
    new-instance v1, Lcom/inveno/flow/database/SqlInfo;

    invoke-direct {v1}, Lcom/inveno/flow/database/SqlInfo;-><init>()V

    .line 141
    .local v1, sqlInfo:Lcom/inveno/flow/database/SqlInfo;
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/inveno/flow/database/SqlInfo;->setSql(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v1, p1}, Lcom/inveno/flow/database/SqlInfo;->addValue(Ljava/lang/Object;)V

    .line 144
    return-object v1
.end method

.method public static buildDeleteSql(Ljava/lang/Object;)Lcom/inveno/flow/database/SqlInfo;
    .locals 8
    .parameter "entity"

    .prologue
    .line 102
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v5}, Lcom/inveno/flow/database/table/TableInfo;->get(Ljava/lang/Class;)Lcom/inveno/flow/database/table/TableInfo;

    move-result-object v4

    .line 104
    .local v4, table:Lcom/inveno/flow/database/table/TableInfo;
    invoke-virtual {v4}, Lcom/inveno/flow/database/table/TableInfo;->getId()Lcom/inveno/flow/database/table/Id;

    move-result-object v0

    .line 105
    .local v0, id:Lcom/inveno/flow/database/table/Id;
    invoke-virtual {v0, p0}, Lcom/inveno/flow/database/table/Id;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 107
    .local v1, idvalue:Ljava/lang/Object;
    if-nez v1, :cond_0

    .line 108
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "getDeleteSQL:"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 109
    const-string v7, " id value is null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 108
    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 111
    :cond_0
    new-instance v3, Ljava/lang/StringBuffer;

    .line 112
    invoke-virtual {v4}, Lcom/inveno/flow/database/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/inveno/flow/database/SqlBuilder;->getDeleteSqlBytableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 111
    invoke-direct {v3, v5}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 113
    .local v3, strSQL:Ljava/lang/StringBuffer;
    const-string v5, " WHERE "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v0}, Lcom/inveno/flow/database/table/Id;->getColumn()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "=?"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 115
    new-instance v2, Lcom/inveno/flow/database/SqlInfo;

    invoke-direct {v2}, Lcom/inveno/flow/database/SqlInfo;-><init>()V

    .line 116
    .local v2, sqlInfo:Lcom/inveno/flow/database/SqlInfo;
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/inveno/flow/database/SqlInfo;->setSql(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v2, v1}, Lcom/inveno/flow/database/SqlInfo;->addValue(Ljava/lang/Object;)V

    .line 119
    return-object v2
.end method

.method public static buildDeleteSql(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter "strWhere"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 155
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcom/inveno/flow/database/table/TableInfo;->get(Ljava/lang/Class;)Lcom/inveno/flow/database/table/TableInfo;

    move-result-object v1

    .line 156
    .local v1, table:Lcom/inveno/flow/database/table/TableInfo;
    new-instance v0, Ljava/lang/StringBuffer;

    .line 157
    invoke-virtual {v1}, Lcom/inveno/flow/database/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/inveno/flow/database/SqlBuilder;->getDeleteSqlBytableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 156
    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 159
    .local v0, strSQL:Ljava/lang/StringBuffer;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 160
    const-string v2, " WHERE "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 161
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 164
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static buildInsertSql(Ljava/lang/Object;)Lcom/inveno/flow/database/SqlInfo;
    .locals 15
    .parameter "entity"

    .prologue
    .line 30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-static {v12}, Lcom/inveno/flow/database/table/TableInfo;->get(Ljava/lang/Class;)Lcom/inveno/flow/database/table/TableInfo;

    move-result-object v11

    .line 33
    .local v11, table:Lcom/inveno/flow/database/table/TableInfo;
    invoke-virtual {v11}, Lcom/inveno/flow/database/table/TableInfo;->getId()Lcom/inveno/flow/database/table/Id;

    move-result-object v12

    invoke-virtual {v12, p0}, Lcom/inveno/flow/database/table/Id;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 35
    .local v1, idvalue:Ljava/lang/Object;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 37
    .local v2, keyValueList:Ljava/util/List;,"Ljava/util/List<Lcom/inveno/flow/database/table/KeyValue;>;"
    instance-of v12, v1, Ljava/lang/Integer;

    if-nez v12, :cond_0

    .line 39
    instance-of v12, v1, Ljava/lang/String;

    if-eqz v12, :cond_0

    if-eqz v1, :cond_0

    .line 41
    new-instance v3, Lcom/inveno/flow/database/table/KeyValue;

    invoke-virtual {v11}, Lcom/inveno/flow/database/table/TableInfo;->getId()Lcom/inveno/flow/database/table/Id;

    move-result-object v12

    invoke-virtual {v12}, Lcom/inveno/flow/database/table/Id;->getColumn()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v3, v12, v1}, Lcom/inveno/flow/database/table/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 42
    .local v3, kv:Lcom/inveno/flow/database/table/KeyValue;
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    .end local v3           #kv:Lcom/inveno/flow/database/table/KeyValue;
    :cond_0
    iget-object v12, v11, Lcom/inveno/flow/database/table/TableInfo;->propertyMap:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    .line 48
    .local v8, propertys:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/inveno/flow/database/table/Property;>;"
    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_1
    :goto_0
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_4

    .line 55
    iget-object v12, v11, Lcom/inveno/flow/database/table/TableInfo;->manyToOneMap:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    .line 56
    .local v6, manyToOnes:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/inveno/flow/database/table/ManyToOne;>;"
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_2
    :goto_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_5

    .line 63
    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    .line 64
    .local v10, strSQL:Ljava/lang/StringBuffer;
    const/4 v9, 0x0

    .line 65
    .local v9, sqlInfo:Lcom/inveno/flow/database/SqlInfo;
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_3

    .line 67
    new-instance v9, Lcom/inveno/flow/database/SqlInfo;

    .end local v9           #sqlInfo:Lcom/inveno/flow/database/SqlInfo;
    invoke-direct {v9}, Lcom/inveno/flow/database/SqlInfo;-><init>()V

    .line 69
    .restart local v9       #sqlInfo:Lcom/inveno/flow/database/SqlInfo;
    const-string v12, "INSERT INTO "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    invoke-virtual {v11}, Lcom/inveno/flow/database/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 71
    const-string v12, " ("

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 72
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-nez v13, :cond_6

    .line 76
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 77
    const-string v12, ") VALUES ( "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 79
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 80
    .local v4, length:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_3
    if-lt v0, v4, :cond_7

    .line 83
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->length()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 84
    const-string v12, ")"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 86
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v9, v12}, Lcom/inveno/flow/database/SqlInfo;->setSql(Ljava/lang/String;)V

    .line 89
    .end local v0           #i:I
    .end local v4           #length:I
    :cond_3
    return-object v9

    .line 48
    .end local v6           #manyToOnes:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/inveno/flow/database/table/ManyToOne;>;"
    .end local v9           #sqlInfo:Lcom/inveno/flow/database/SqlInfo;
    .end local v10           #strSQL:Ljava/lang/StringBuffer;
    :cond_4
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/inveno/flow/database/table/Property;

    .line 49
    .local v7, property:Lcom/inveno/flow/database/table/Property;
    invoke-static {v7, p0}, Lcom/inveno/flow/database/SqlBuilder;->property2KeyValue(Lcom/inveno/flow/database/table/Property;Ljava/lang/Object;)Lcom/inveno/flow/database/table/KeyValue;

    move-result-object v3

    .line 50
    .restart local v3       #kv:Lcom/inveno/flow/database/table/KeyValue;
    if-eqz v3, :cond_1

    .line 51
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 56
    .end local v3           #kv:Lcom/inveno/flow/database/table/KeyValue;
    .end local v7           #property:Lcom/inveno/flow/database/table/Property;
    .restart local v6       #manyToOnes:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/inveno/flow/database/table/ManyToOne;>;"
    :cond_5
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/inveno/flow/database/table/ManyToOne;

    .line 57
    .local v5, many:Lcom/inveno/flow/database/table/ManyToOne;
    invoke-static {v5, p0}, Lcom/inveno/flow/database/SqlBuilder;->manyToOne2KeyValue(Lcom/inveno/flow/database/table/ManyToOne;Ljava/lang/Object;)Lcom/inveno/flow/database/table/KeyValue;

    move-result-object v3

    .line 58
    .restart local v3       #kv:Lcom/inveno/flow/database/table/KeyValue;
    if-eqz v3, :cond_2

    .line 59
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 72
    .end local v3           #kv:Lcom/inveno/flow/database/table/KeyValue;
    .end local v5           #many:Lcom/inveno/flow/database/table/ManyToOne;
    .restart local v9       #sqlInfo:Lcom/inveno/flow/database/SqlInfo;
    .restart local v10       #strSQL:Ljava/lang/StringBuffer;
    :cond_6
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/inveno/flow/database/table/KeyValue;

    .line 73
    .restart local v3       #kv:Lcom/inveno/flow/database/table/KeyValue;
    invoke-virtual {v3}, Lcom/inveno/flow/database/table/KeyValue;->getKey()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v13

    const-string v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 74
    invoke-virtual {v3}, Lcom/inveno/flow/database/table/KeyValue;->getValue()Ljava/lang/Object;

    move-result-object v13

    invoke-virtual {v9, v13}, Lcom/inveno/flow/database/SqlInfo;->addValue(Ljava/lang/Object;)V

    goto :goto_2

    .line 81
    .end local v3           #kv:Lcom/inveno/flow/database/table/KeyValue;
    .restart local v0       #i:I
    .restart local v4       #length:I
    :cond_7
    const-string v12, "?,"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 80
    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method

.method public static getCreatTableSQL(Ljava/lang/Class;)Ljava/lang/String;
    .locals 11
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 323
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcom/inveno/flow/database/table/TableInfo;->get(Ljava/lang/Class;)Lcom/inveno/flow/database/table/TableInfo;

    move-result-object v7

    .line 325
    .local v7, table:Lcom/inveno/flow/database/table/TableInfo;
    invoke-virtual {v7}, Lcom/inveno/flow/database/table/TableInfo;->getId()Lcom/inveno/flow/database/table/Id;

    move-result-object v0

    .line 326
    .local v0, id:Lcom/inveno/flow/database/table/Id;
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 327
    .local v6, strSQL:Ljava/lang/StringBuffer;
    const-string v8, "CREATE TABLE IF NOT EXISTS "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 328
    invoke-virtual {v7}, Lcom/inveno/flow/database/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 329
    const-string v8, " ( "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 331
    invoke-virtual {v0}, Lcom/inveno/flow/database/table/Id;->getDataType()Ljava/lang/Class;

    move-result-object v3

    .line 332
    .local v3, primaryClazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq v3, v8, :cond_0

    const-class v8, Ljava/lang/Integer;

    if-ne v3, v8, :cond_1

    .line 333
    :cond_0
    const-string v8, "\""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v0}, Lcom/inveno/flow/database/table/Id;->getColumn()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "\"    "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    .line 334
    const-string v9, "INTEGER PRIMARY KEY AUTOINCREMENT,"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 339
    :goto_0
    iget-object v8, v7, Lcom/inveno/flow/database/table/TableInfo;->propertyMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    .line 340
    .local v5, propertys:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/inveno/flow/database/table/Property;>;"
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_2

    .line 345
    iget-object v8, v7, Lcom/inveno/flow/database/table/TableInfo;->manyToOneMap:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    .line 346
    .local v2, manyToOnes:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/inveno/flow/database/table/ManyToOne;>;"
    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_3

    .line 349
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->length()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 350
    const-string v8, " )"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 351
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    return-object v8

    .line 336
    .end local v2           #manyToOnes:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/inveno/flow/database/table/ManyToOne;>;"
    .end local v5           #propertys:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/inveno/flow/database/table/Property;>;"
    :cond_1
    const-string v8, "\""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    invoke-virtual {v0}, Lcom/inveno/flow/database/table/Id;->getColumn()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    const-string v9, "\"    "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v8

    .line 337
    const-string v9, "TEXT PRIMARY KEY,"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 340
    .restart local v5       #propertys:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/inveno/flow/database/table/Property;>;"
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/inveno/flow/database/table/Property;

    .line 341
    .local v4, property:Lcom/inveno/flow/database/table/Property;
    const-string v9, "\""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v4}, Lcom/inveno/flow/database/table/Property;->getColumn()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 342
    const-string v9, "\","

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    .line 346
    .end local v4           #property:Lcom/inveno/flow/database/table/Property;
    .restart local v2       #manyToOnes:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/inveno/flow/database/table/ManyToOne;>;"
    :cond_3
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inveno/flow/database/table/ManyToOne;

    .line 347
    .local v1, manyToOne:Lcom/inveno/flow/database/table/ManyToOne;
    const-string v9, "\""

    invoke-virtual {v6, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v1}, Lcom/inveno/flow/database/table/ManyToOne;->getColumn()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    const-string v10, "\","

    invoke-virtual {v9, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2
.end method

.method private static getDeleteSqlBytableName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "tableName"

    .prologue
    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DELETE FROM "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getPropertyStrSql(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .parameter "key"
    .parameter "value"

    .prologue
    .line 360
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    .line 361
    .local v0, sbSQL:Ljava/lang/StringBuffer;
    instance-of v1, p1, Ljava/lang/String;

    if-nez v1, :cond_0

    instance-of v1, p1, Ljava/util/Date;

    if-nez v1, :cond_0

    .line 362
    instance-of v1, p1, Ljava/sql/Date;

    if-eqz v1, :cond_1

    .line 363
    :cond_0
    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 367
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 365
    :cond_1
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method public static getSelectSQL(Ljava/lang/Class;)Ljava/lang/String;
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 207
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcom/inveno/flow/database/table/TableInfo;->get(Ljava/lang/Class;)Lcom/inveno/flow/database/table/TableInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/flow/database/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/flow/database/SqlBuilder;->getSelectSqlByTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSelectSQL(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter "idValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 177
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcom/inveno/flow/database/table/TableInfo;->get(Ljava/lang/Class;)Lcom/inveno/flow/database/table/TableInfo;

    move-result-object v1

    .line 179
    .local v1, table:Lcom/inveno/flow/database/table/TableInfo;
    new-instance v0, Ljava/lang/StringBuffer;

    .line 180
    invoke-virtual {v1}, Lcom/inveno/flow/database/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/inveno/flow/database/SqlBuilder;->getSelectSqlByTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 179
    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 181
    .local v0, strSQL:Ljava/lang/StringBuffer;
    const-string v2, " WHERE "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    invoke-virtual {v1}, Lcom/inveno/flow/database/table/TableInfo;->getId()Lcom/inveno/flow/database/table/Id;

    move-result-object v2

    invoke-virtual {v2}, Lcom/inveno/flow/database/table/Id;->getColumn()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/inveno/flow/database/SqlBuilder;->getPropertyStrSql(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 184
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getSelectSQLByWhere(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter
    .parameter "strWhere"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 211
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcom/inveno/flow/database/table/TableInfo;->get(Ljava/lang/Class;)Lcom/inveno/flow/database/table/TableInfo;

    move-result-object v1

    .line 213
    .local v1, table:Lcom/inveno/flow/database/table/TableInfo;
    new-instance v0, Ljava/lang/StringBuffer;

    .line 214
    invoke-virtual {v1}, Lcom/inveno/flow/database/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/inveno/flow/database/SqlBuilder;->getSelectSqlByTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 213
    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 216
    .local v0, strSQL:Ljava/lang/StringBuffer;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 217
    const-string v2, " WHERE "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 220
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static getSelectSqlAsSqlInfo(Ljava/lang/Class;Ljava/lang/Object;)Lcom/inveno/flow/database/SqlInfo;
    .locals 5
    .parameter
    .parameter "idValue"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/inveno/flow/database/SqlInfo;"
        }
    .end annotation

    .prologue
    .line 188
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcom/inveno/flow/database/table/TableInfo;->get(Ljava/lang/Class;)Lcom/inveno/flow/database/table/TableInfo;

    move-result-object v2

    .line 190
    .local v2, table:Lcom/inveno/flow/database/table/TableInfo;
    new-instance v1, Ljava/lang/StringBuffer;

    .line 191
    invoke-virtual {v2}, Lcom/inveno/flow/database/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/inveno/flow/database/SqlBuilder;->getSelectSqlByTableName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 190
    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 192
    .local v1, strSQL:Ljava/lang/StringBuffer;
    const-string v3, " WHERE "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v2}, Lcom/inveno/flow/database/table/TableInfo;->getId()Lcom/inveno/flow/database/table/Id;

    move-result-object v4

    invoke-virtual {v4}, Lcom/inveno/flow/database/table/Id;->getColumn()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, "=?"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 194
    new-instance v0, Lcom/inveno/flow/database/SqlInfo;

    invoke-direct {v0}, Lcom/inveno/flow/database/SqlInfo;-><init>()V

    .line 195
    .local v0, sqlInfo:Lcom/inveno/flow/database/SqlInfo;
    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/inveno/flow/database/SqlInfo;->setSql(Ljava/lang/String;)V

    .line 196
    invoke-virtual {v0, p1}, Lcom/inveno/flow/database/SqlInfo;->addValue(Ljava/lang/Object;)V

    .line 198
    return-object v0
.end method

.method private static getSelectSqlByTableName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "tableName"

    .prologue
    .line 173
    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "SELECT * FROM "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUpdateSqlAsSqlInfo(Ljava/lang/Object;)Lcom/inveno/flow/database/SqlInfo;
    .locals 13
    .parameter "entity"

    .prologue
    .line 230
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-static {v10}, Lcom/inveno/flow/database/table/TableInfo;->get(Ljava/lang/Class;)Lcom/inveno/flow/database/table/TableInfo;

    move-result-object v9

    .line 231
    .local v9, table:Lcom/inveno/flow/database/table/TableInfo;
    invoke-virtual {v9}, Lcom/inveno/flow/database/table/TableInfo;->getId()Lcom/inveno/flow/database/table/Id;

    move-result-object v10

    invoke-virtual {v10, p0}, Lcom/inveno/flow/database/table/Id;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 233
    .local v0, idvalue:Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 234
    new-instance v10, Ljava/lang/RuntimeException;

    const-string v11, "\u4e3b\u952e\u4e0d\u80fd\u4e3anull\uff01"

    invoke-direct {v10, v11}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v10

    .line 237
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 239
    .local v1, keyValueList:Ljava/util/List;,"Ljava/util/List<Lcom/inveno/flow/database/table/KeyValue;>;"
    iget-object v10, v9, Lcom/inveno/flow/database/table/TableInfo;->propertyMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v6

    .line 240
    .local v6, propertys:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/inveno/flow/database/table/Property;>;"
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_1
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_4

    .line 247
    iget-object v10, v9, Lcom/inveno/flow/database/table/TableInfo;->manyToOneMap:Ljava/util/HashMap;

    invoke-virtual {v10}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    .line 248
    .local v4, manyToOnes:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/inveno/flow/database/table/ManyToOne;>;"
    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_2
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_5

    .line 254
    if-eqz v1, :cond_3

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v10

    if-nez v10, :cond_6

    .line 255
    :cond_3
    const/4 v7, 0x0

    .line 270
    :goto_2
    return-object v7

    .line 240
    .end local v4           #manyToOnes:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/inveno/flow/database/table/ManyToOne;>;"
    :cond_4
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/inveno/flow/database/table/Property;

    .line 241
    .local v5, property:Lcom/inveno/flow/database/table/Property;
    invoke-static {v5, p0}, Lcom/inveno/flow/database/SqlBuilder;->property2KeyValue(Lcom/inveno/flow/database/table/Property;Ljava/lang/Object;)Lcom/inveno/flow/database/table/KeyValue;

    move-result-object v2

    .line 242
    .local v2, kv:Lcom/inveno/flow/database/table/KeyValue;
    if-eqz v2, :cond_1

    .line 243
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 248
    .end local v2           #kv:Lcom/inveno/flow/database/table/KeyValue;
    .end local v5           #property:Lcom/inveno/flow/database/table/Property;
    .restart local v4       #manyToOnes:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/inveno/flow/database/table/ManyToOne;>;"
    :cond_5
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/inveno/flow/database/table/ManyToOne;

    .line 249
    .local v3, many:Lcom/inveno/flow/database/table/ManyToOne;
    invoke-static {v3, p0}, Lcom/inveno/flow/database/SqlBuilder;->manyToOne2KeyValue(Lcom/inveno/flow/database/table/ManyToOne;Ljava/lang/Object;)Lcom/inveno/flow/database/table/KeyValue;

    move-result-object v2

    .line 250
    .restart local v2       #kv:Lcom/inveno/flow/database/table/KeyValue;
    if-eqz v2, :cond_2

    .line 251
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 257
    .end local v2           #kv:Lcom/inveno/flow/database/table/KeyValue;
    .end local v3           #many:Lcom/inveno/flow/database/table/ManyToOne;
    :cond_6
    new-instance v7, Lcom/inveno/flow/database/SqlInfo;

    invoke-direct {v7}, Lcom/inveno/flow/database/SqlInfo;-><init>()V

    .line 258
    .local v7, sqlInfo:Lcom/inveno/flow/database/SqlInfo;
    new-instance v8, Ljava/lang/StringBuffer;

    const-string v10, "UPDATE "

    invoke-direct {v8, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 259
    .local v8, strSQL:Ljava/lang/StringBuffer;
    invoke-virtual {v9}, Lcom/inveno/flow/database/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 260
    const-string v10, " SET "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 262
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_3
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-nez v11, :cond_7

    .line 266
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->length()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 267
    const-string v10, " WHERE "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    invoke-virtual {v9}, Lcom/inveno/flow/database/table/TableInfo;->getId()Lcom/inveno/flow/database/table/Id;

    move-result-object v11

    invoke-virtual {v11}, Lcom/inveno/flow/database/table/Id;->getColumn()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "=?"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 268
    invoke-virtual {v7, v0}, Lcom/inveno/flow/database/SqlInfo;->addValue(Ljava/lang/Object;)V

    .line 269
    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Lcom/inveno/flow/database/SqlInfo;->setSql(Ljava/lang/String;)V

    goto :goto_2

    .line 262
    :cond_7
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inveno/flow/database/table/KeyValue;

    .line 263
    .restart local v2       #kv:Lcom/inveno/flow/database/table/KeyValue;
    invoke-virtual {v2}, Lcom/inveno/flow/database/table/KeyValue;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v11

    const-string v12, "=?,"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 264
    invoke-virtual {v2}, Lcom/inveno/flow/database/table/KeyValue;->getValue()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/inveno/flow/database/SqlInfo;->addValue(Ljava/lang/Object;)V

    goto :goto_3
.end method

.method public static getUpdateSqlAsSqlInfo(Ljava/lang/Object;Ljava/lang/String;)Lcom/inveno/flow/database/SqlInfo;
    .locals 12
    .parameter "entity"
    .parameter "strWhere"

    .prologue
    .line 281
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-static {v9}, Lcom/inveno/flow/database/table/TableInfo;->get(Ljava/lang/Class;)Lcom/inveno/flow/database/table/TableInfo;

    move-result-object v8

    .line 283
    .local v8, table:Lcom/inveno/flow/database/table/TableInfo;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 286
    .local v0, keyValueList:Ljava/util/List;,"Ljava/util/List<Lcom/inveno/flow/database/table/KeyValue;>;"
    iget-object v9, v8, Lcom/inveno/flow/database/table/TableInfo;->propertyMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    .line 287
    .local v5, propertys:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/inveno/flow/database/table/Property;>;"
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_3

    .line 294
    iget-object v9, v8, Lcom/inveno/flow/database/table/TableInfo;->manyToOneMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v3

    .line 295
    .local v3, manyToOnes:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/inveno/flow/database/table/ManyToOne;>;"
    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_4

    .line 301
    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v9

    if-nez v9, :cond_5

    .line 302
    :cond_2
    new-instance v9, Ljava/lang/RuntimeException;

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "this entity["

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 303
    const-string v11, "] has no property"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 302
    invoke-direct {v9, v10}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 287
    .end local v3           #manyToOnes:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/inveno/flow/database/table/ManyToOne;>;"
    :cond_3
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/inveno/flow/database/table/Property;

    .line 288
    .local v4, property:Lcom/inveno/flow/database/table/Property;
    invoke-static {v4, p0}, Lcom/inveno/flow/database/SqlBuilder;->property2KeyValue(Lcom/inveno/flow/database/table/Property;Ljava/lang/Object;)Lcom/inveno/flow/database/table/KeyValue;

    move-result-object v1

    .line 289
    .local v1, kv:Lcom/inveno/flow/database/table/KeyValue;
    if-eqz v1, :cond_0

    .line 290
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 295
    .end local v1           #kv:Lcom/inveno/flow/database/table/KeyValue;
    .end local v4           #property:Lcom/inveno/flow/database/table/Property;
    .restart local v3       #manyToOnes:Ljava/util/Collection;,"Ljava/util/Collection<Lcom/inveno/flow/database/table/ManyToOne;>;"
    :cond_4
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inveno/flow/database/table/ManyToOne;

    .line 296
    .local v2, many:Lcom/inveno/flow/database/table/ManyToOne;
    invoke-static {v2, p0}, Lcom/inveno/flow/database/SqlBuilder;->manyToOne2KeyValue(Lcom/inveno/flow/database/table/ManyToOne;Ljava/lang/Object;)Lcom/inveno/flow/database/table/KeyValue;

    move-result-object v1

    .line 297
    .restart local v1       #kv:Lcom/inveno/flow/database/table/KeyValue;
    if-eqz v1, :cond_1

    .line 298
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 306
    .end local v1           #kv:Lcom/inveno/flow/database/table/KeyValue;
    .end local v2           #many:Lcom/inveno/flow/database/table/ManyToOne;
    :cond_5
    new-instance v6, Lcom/inveno/flow/database/SqlInfo;

    invoke-direct {v6}, Lcom/inveno/flow/database/SqlInfo;-><init>()V

    .line 307
    .local v6, sqlInfo:Lcom/inveno/flow/database/SqlInfo;
    new-instance v7, Ljava/lang/StringBuffer;

    const-string v9, "UPDATE "

    invoke-direct {v7, v9}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 308
    .local v7, strSQL:Ljava/lang/StringBuffer;
    invoke-virtual {v8}, Lcom/inveno/flow/database/table/TableInfo;->getTableName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 309
    const-string v9, " SET "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 310
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_2
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-nez v10, :cond_7

    .line 314
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 315
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 316
    const-string v9, " WHERE "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 318
    :cond_6
    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Lcom/inveno/flow/database/SqlInfo;->setSql(Ljava/lang/String;)V

    .line 319
    return-object v6

    .line 310
    :cond_7
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inveno/flow/database/table/KeyValue;

    .line 311
    .restart local v1       #kv:Lcom/inveno/flow/database/table/KeyValue;
    invoke-virtual {v1}, Lcom/inveno/flow/database/table/KeyValue;->getKey()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v10

    const-string v11, "=?,"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 312
    invoke-virtual {v1}, Lcom/inveno/flow/database/table/KeyValue;->getValue()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/inveno/flow/database/SqlInfo;->addValue(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private static manyToOne2KeyValue(Lcom/inveno/flow/database/table/ManyToOne;Ljava/lang/Object;)Lcom/inveno/flow/database/table/KeyValue;
    .locals 5
    .parameter "many"
    .parameter "entity"

    .prologue
    .line 391
    const/4 v0, 0x0

    .line 392
    .local v0, kv:Lcom/inveno/flow/database/table/KeyValue;
    invoke-virtual {p0}, Lcom/inveno/flow/database/table/ManyToOne;->getColumn()Ljava/lang/String;

    move-result-object v1

    .line 393
    .local v1, manycolumn:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/inveno/flow/database/table/ManyToOne;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 394
    .local v2, manyobject:Ljava/lang/Object;
    if-eqz v2, :cond_0

    .line 395
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {v4}, Lcom/inveno/flow/database/table/TableInfo;->get(Ljava/lang/Class;)Lcom/inveno/flow/database/table/TableInfo;

    move-result-object v4

    invoke-virtual {v4}, Lcom/inveno/flow/database/table/TableInfo;->getId()Lcom/inveno/flow/database/table/Id;

    move-result-object v4

    .line 396
    invoke-virtual {v4, v2}, Lcom/inveno/flow/database/table/Id;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 397
    .local v3, manyvalue:Ljava/lang/Object;
    if-eqz v1, :cond_0

    if-eqz v3, :cond_0

    .line 398
    new-instance v0, Lcom/inveno/flow/database/table/KeyValue;

    .end local v0           #kv:Lcom/inveno/flow/database/table/KeyValue;
    invoke-direct {v0, v1, v3}, Lcom/inveno/flow/database/table/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 402
    .end local v3           #manyvalue:Ljava/lang/Object;
    .restart local v0       #kv:Lcom/inveno/flow/database/table/KeyValue;
    :cond_0
    return-object v0
.end method

.method private static property2KeyValue(Lcom/inveno/flow/database/table/Property;Ljava/lang/Object;)Lcom/inveno/flow/database/table/KeyValue;
    .locals 4
    .parameter "property"
    .parameter "entity"

    .prologue
    .line 377
    const/4 v0, 0x0

    .line 378
    .local v0, kv:Lcom/inveno/flow/database/table/KeyValue;
    invoke-virtual {p0}, Lcom/inveno/flow/database/table/Property;->getColumn()Ljava/lang/String;

    move-result-object v1

    .line 379
    .local v1, pcolumn:Ljava/lang/String;
    invoke-virtual {p0, p1}, Lcom/inveno/flow/database/table/Property;->getValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 380
    .local v2, value:Ljava/lang/Object;
    if-eqz v2, :cond_1

    .line 381
    new-instance v0, Lcom/inveno/flow/database/table/KeyValue;

    .end local v0           #kv:Lcom/inveno/flow/database/table/KeyValue;
    invoke-direct {v0, v1, v2}, Lcom/inveno/flow/database/table/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 387
    .restart local v0       #kv:Lcom/inveno/flow/database/table/KeyValue;
    :cond_0
    :goto_0
    return-object v0

    .line 383
    :cond_1
    invoke-virtual {p0}, Lcom/inveno/flow/database/table/Property;->getDefaultValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 384
    invoke-virtual {p0}, Lcom/inveno/flow/database/table/Property;->getDefaultValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 385
    new-instance v0, Lcom/inveno/flow/database/table/KeyValue;

    .end local v0           #kv:Lcom/inveno/flow/database/table/KeyValue;
    invoke-virtual {p0}, Lcom/inveno/flow/database/table/Property;->getDefaultValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v3}, Lcom/inveno/flow/database/table/KeyValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .restart local v0       #kv:Lcom/inveno/flow/database/table/KeyValue;
    goto :goto_0
.end method
