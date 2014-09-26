.class public Lcom/inveno/flow/database/CursorUtils;
.super Ljava/lang/Object;
.source "CursorUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dbModel2Entity(Lcom/inveno/flow/database/DbModel;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 11
    .parameter "dbModel"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/inveno/flow/database/DbModel;",
            "Ljava/lang/Class",
            "<*>;)TT;"
        }
    .end annotation

    .prologue
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v7, 0x0

    .line 58
    if-eqz p0, :cond_2

    .line 59
    invoke-virtual {p0}, Lcom/inveno/flow/database/DbModel;->getDataMap()Ljava/util/HashMap;

    move-result-object v1

    .line 62
    .local v1, dataMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 63
    .local v3, entity:Ljava/lang/Object;,"TT;"
    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_1

    .line 87
    .end local v1           #dataMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v3           #entity:Ljava/lang/Object;,"TT;"
    :goto_1
    return-object v3

    .line 63
    .restart local v1       #dataMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v3       #entity:Ljava/lang/Object;,"TT;"
    :cond_1
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 64
    .local v4, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 65
    .local v0, column:Ljava/lang/String;
    invoke-static {p1}, Lcom/inveno/flow/database/table/TableInfo;->get(Ljava/lang/Class;)Lcom/inveno/flow/database/table/TableInfo;

    move-result-object v6

    .line 66
    .local v6, table:Lcom/inveno/flow/database/table/TableInfo;
    iget-object v8, v6, Lcom/inveno/flow/database/table/TableInfo;->propertyMap:Ljava/util/HashMap;

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/inveno/flow/database/table/Property;

    .line 67
    .local v5, property:Lcom/inveno/flow/database/table/Property;
    if-eqz v5, :cond_4

    .line 69
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_3

    move-object v8, v7

    .line 68
    :goto_2
    invoke-virtual {v5, v3, v8}, Lcom/inveno/flow/database/table/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    .end local v0           #column:Ljava/lang/String;
    .end local v3           #entity:Ljava/lang/Object;,"TT;"
    .end local v4           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5           #property:Lcom/inveno/flow/database/table/Property;
    .end local v6           #table:Lcom/inveno/flow/database/table/TableInfo;
    :catch_0
    move-exception v2

    .line 83
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1           #dataMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2           #e:Ljava/lang/Exception;
    :cond_2
    move-object v3, v7

    .line 87
    goto :goto_1

    .line 70
    .restart local v0       #column:Ljava/lang/String;
    .restart local v1       #dataMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v3       #entity:Ljava/lang/Object;,"TT;"
    .restart local v4       #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v5       #property:Lcom/inveno/flow/database/table/Property;
    .restart local v6       #table:Lcom/inveno/flow/database/table/TableInfo;
    :cond_3
    :try_start_1
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_2

    .line 72
    :cond_4
    invoke-virtual {v6}, Lcom/inveno/flow/database/table/TableInfo;->getId()Lcom/inveno/flow/database/table/Id;

    move-result-object v8

    invoke-virtual {v8}, Lcom/inveno/flow/database/table/Id;->getColumn()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 73
    invoke-virtual {v6}, Lcom/inveno/flow/database/table/TableInfo;->getId()Lcom/inveno/flow/database/table/Id;

    move-result-object v10

    .line 75
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_5

    move-object v8, v7

    .line 73
    :goto_3
    invoke-virtual {v10, v3, v8}, Lcom/inveno/flow/database/table/Id;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 76
    :cond_5
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v8

    goto :goto_3
.end method

.method public static getDbModel(Landroid/database/Cursor;)Lcom/inveno/flow/database/DbModel;
    .locals 5
    .parameter "cursor"

    .prologue
    .line 46
    if-eqz p0, :cond_1

    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 47
    new-instance v2, Lcom/inveno/flow/database/DbModel;

    invoke-direct {v2}, Lcom/inveno/flow/database/DbModel;-><init>()V

    .line 48
    .local v2, model:Lcom/inveno/flow/database/DbModel;
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v0

    .line 49
    .local v0, columnCount:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-lt v1, v0, :cond_0

    .line 54
    .end local v0           #columnCount:I
    .end local v1           #i:I
    .end local v2           #model:Lcom/inveno/flow/database/DbModel;
    :goto_1
    return-object v2

    .line 50
    .restart local v0       #columnCount:I
    .restart local v1       #i:I
    .restart local v2       #model:Lcom/inveno/flow/database/DbModel;
    :cond_0
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/inveno/flow/database/DbModel;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 49
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 54
    .end local v0           #columnCount:I
    .end local v1           #i:I
    .end local v2           #model:Lcom/inveno/flow/database/DbModel;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public static getEntity(Landroid/database/Cursor;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 9
    .parameter "cursor"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/database/Cursor;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 15
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    if-eqz p0, :cond_3

    .line 16
    :try_start_0
    invoke-static {p1}, Lcom/inveno/flow/database/table/TableInfo;->get(Ljava/lang/Class;)Lcom/inveno/flow/database/table/TableInfo;

    move-result-object v6

    .line 17
    .local v6, table:Lcom/inveno/flow/database/table/TableInfo;
    invoke-interface {p0}, Landroid/database/Cursor;->getColumnCount()I

    move-result v1

    .line 18
    .local v1, columnCount:I
    if-lez v1, :cond_3

    .line 19
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 20
    .local v3, entity:Ljava/lang/Object;,"TT;"
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-lt v4, v1, :cond_0

    .line 42
    .end local v1           #columnCount:I
    .end local v3           #entity:Ljava/lang/Object;,"TT;"
    .end local v4           #i:I
    .end local v6           #table:Lcom/inveno/flow/database/table/TableInfo;
    :goto_1
    return-object v3

    .line 22
    .restart local v1       #columnCount:I
    .restart local v3       #entity:Ljava/lang/Object;,"TT;"
    .restart local v4       #i:I
    .restart local v6       #table:Lcom/inveno/flow/database/table/TableInfo;
    :cond_0
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    .line 24
    .local v0, column:Ljava/lang/String;
    iget-object v7, v6, Lcom/inveno/flow/database/table/TableInfo;->propertyMap:Ljava/util/HashMap;

    invoke-virtual {v7, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/inveno/flow/database/table/Property;

    .line 25
    .local v5, property:Lcom/inveno/flow/database/table/Property;
    if-eqz v5, :cond_2

    .line 26
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v3, v7}, Lcom/inveno/flow/database/table/Property;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 20
    :cond_1
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 28
    :cond_2
    invoke-virtual {v6}, Lcom/inveno/flow/database/table/TableInfo;->getId()Lcom/inveno/flow/database/table/Id;

    move-result-object v7

    invoke-virtual {v7}, Lcom/inveno/flow/database/table/Id;->getColumn()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 29
    invoke-virtual {v6}, Lcom/inveno/flow/database/table/TableInfo;->getId()Lcom/inveno/flow/database/table/Id;

    move-result-object v7

    .line 30
    invoke-interface {p0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 29
    invoke-virtual {v7, v3, v8}, Lcom/inveno/flow/database/table/Id;->setValue(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 38
    .end local v0           #column:Ljava/lang/String;
    .end local v1           #columnCount:I
    .end local v3           #entity:Ljava/lang/Object;,"TT;"
    .end local v4           #i:I
    .end local v5           #property:Lcom/inveno/flow/database/table/Property;
    .end local v6           #table:Lcom/inveno/flow/database/table/TableInfo;
    :catch_0
    move-exception v2

    .line 39
    .local v2, e:Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 42
    .end local v2           #e:Ljava/lang/Exception;
    :cond_3
    const/4 v3, 0x0

    goto :goto_1
.end method
