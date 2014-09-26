.class public Lcom/inveno/flow/database/table/ClassUtils;
.super Ljava/lang/Object;
.source "ClassUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getManyToOneList(Ljava/lang/Class;)Ljava/util/List;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Lcom/inveno/flow/database/table/ManyToOne;",
            ">;"
        }
    .end annotation

    .prologue
    .line 180
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 182
    .local v3, mList:Ljava/util/List;,"Ljava/util/List<Lcom/inveno/flow/database/table/ManyToOne;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 183
    .local v2, fs:[Ljava/lang/reflect/Field;
    array-length v6, v2

    const/4 v5, 0x0

    :goto_0
    if-lt v5, v6, :cond_0

    .line 197
    return-object v3

    .line 183
    :cond_0
    aget-object v1, v2, v5

    .line 184
    .local v1, f:Ljava/lang/reflect/Field;
    invoke-static {v1}, Lcom/inveno/flow/database/table/FieldUtils;->isTransient(Ljava/lang/reflect/Field;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-static {v1}, Lcom/inveno/flow/database/table/FieldUtils;->isManyToOne(Ljava/lang/reflect/Field;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 186
    new-instance v4, Lcom/inveno/flow/database/table/ManyToOne;

    invoke-direct {v4}, Lcom/inveno/flow/database/table/ManyToOne;-><init>()V

    .line 187
    .local v4, mto:Lcom/inveno/flow/database/table/ManyToOne;
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/inveno/flow/database/table/ManyToOne;->setManyClass(Ljava/lang/Class;)V

    .line 188
    invoke-static {v1}, Lcom/inveno/flow/database/table/FieldUtils;->getColumnByField(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/inveno/flow/database/table/ManyToOne;->setColumn(Ljava/lang/String;)V

    .line 189
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/inveno/flow/database/table/ManyToOne;->setFieldName(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/inveno/flow/database/table/ManyToOne;->setDataType(Ljava/lang/Class;)V

    .line 191
    invoke-static {p0, v1}, Lcom/inveno/flow/database/table/FieldUtils;->getFieldSetMethod(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/inveno/flow/database/table/ManyToOne;->setSet(Ljava/lang/reflect/Method;)V

    .line 192
    invoke-static {p0, v1}, Lcom/inveno/flow/database/table/FieldUtils;->getFieldGetMethod(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/inveno/flow/database/table/ManyToOne;->setGet(Ljava/lang/reflect/Method;)V

    .line 194
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    .end local v4           #mto:Lcom/inveno/flow/database/table/ManyToOne;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 198
    .end local v1           #f:Ljava/lang/reflect/Field;
    .end local v2           #fs:[Ljava/lang/reflect/Field;
    :catch_0
    move-exception v0

    .line 199
    .local v0, e:Ljava/lang/Exception;
    new-instance v5, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5
.end method

.method public static getOneToManyList(Ljava/lang/Class;)Ljava/util/List;
    .locals 12
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Lcom/inveno/flow/database/table/OneToMany;",
            ">;"
        }
    .end annotation

    .prologue
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v8, 0x0

    .line 210
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 212
    .local v3, oList:Ljava/util/List;,"Ljava/util/List<Lcom/inveno/flow/database/table/OneToMany;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 213
    .local v2, fs:[Ljava/lang/reflect/Field;
    array-length v9, v2

    :goto_0
    if-lt v8, v9, :cond_0

    .line 242
    return-object v3

    .line 213
    :cond_0
    aget-object v1, v2, v8

    .line 214
    .local v1, f:Ljava/lang/reflect/Field;
    invoke-static {v1}, Lcom/inveno/flow/database/table/FieldUtils;->isTransient(Ljava/lang/reflect/Field;)Z

    move-result v10

    if-nez v10, :cond_2

    invoke-static {v1}, Lcom/inveno/flow/database/table/FieldUtils;->isOneToMany(Ljava/lang/reflect/Field;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 216
    new-instance v4, Lcom/inveno/flow/database/table/OneToMany;

    invoke-direct {v4}, Lcom/inveno/flow/database/table/OneToMany;-><init>()V

    .line 218
    .local v4, otm:Lcom/inveno/flow/database/table/OneToMany;
    invoke-static {v1}, Lcom/inveno/flow/database/table/FieldUtils;->getColumnByField(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/inveno/flow/database/table/OneToMany;->setColumn(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/inveno/flow/database/table/OneToMany;->setFieldName(Ljava/lang/String;)V

    .line 221
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v7

    .line 223
    .local v7, type:Ljava/lang/reflect/Type;
    instance-of v10, v7, Ljava/lang/reflect/ParameterizedType;

    if-eqz v10, :cond_3

    .line 225
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object v6

    .line 224
    check-cast v6, Ljava/lang/reflect/ParameterizedType;

    .line 227
    .local v6, pType:Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v6}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v10

    const/4 v11, 0x0

    .line 226
    aget-object v5, v10, v11

    check-cast v5, Ljava/lang/Class;

    .line 228
    .local v5, pClazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-eqz v5, :cond_1

    .line 229
    invoke-virtual {v4, v5}, Lcom/inveno/flow/database/table/OneToMany;->setOneClass(Ljava/lang/Class;)V

    .line 235
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/inveno/flow/database/table/OneToMany;->setDataType(Ljava/lang/Class;)V

    .line 236
    invoke-static {p0, v1}, Lcom/inveno/flow/database/table/FieldUtils;->getFieldSetMethod(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/inveno/flow/database/table/OneToMany;->setSet(Ljava/lang/reflect/Method;)V

    .line 237
    invoke-static {p0, v1}, Lcom/inveno/flow/database/table/FieldUtils;->getFieldGetMethod(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v10

    invoke-virtual {v4, v10}, Lcom/inveno/flow/database/table/OneToMany;->setGet(Ljava/lang/reflect/Method;)V

    .line 239
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    .end local v4           #otm:Lcom/inveno/flow/database/table/OneToMany;
    .end local v5           #pClazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v6           #pType:Ljava/lang/reflect/ParameterizedType;
    .end local v7           #type:Ljava/lang/reflect/Type;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 231
    .restart local v4       #otm:Lcom/inveno/flow/database/table/OneToMany;
    .restart local v7       #type:Ljava/lang/reflect/Type;
    :cond_3
    new-instance v8, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "getOneToManyList Exception:"

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\'s type is null"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 231
    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 243
    .end local v1           #f:Ljava/lang/reflect/Field;
    .end local v2           #fs:[Ljava/lang/reflect/Field;
    .end local v4           #otm:Lcom/inveno/flow/database/table/OneToMany;
    .end local v7           #type:Ljava/lang/reflect/Type;
    :catch_0
    move-exception v0

    .line 244
    .local v0, e:Ljava/lang/Exception;
    new-instance v8, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v8
.end method

.method public static getPrimaryKeyColumn(Ljava/lang/Class;)Ljava/lang/String;
    .locals 10
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
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v5, 0x0

    .line 46
    const/4 v4, 0x0

    .line 47
    .local v4, primaryKey:Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 48
    .local v1, fields:[Ljava/lang/reflect/Field;
    if-eqz v1, :cond_8

    .line 49
    const/4 v2, 0x0

    .line 50
    .local v2, idAnnotation:Lcom/inveno/flow/database/annotation/Id;
    const/4 v3, 0x0

    .line 52
    .local v3, idField:Ljava/lang/reflect/Field;
    array-length v7, v1

    move v6, v5

    :goto_0
    if-lt v6, v7, :cond_2

    .line 61
    :goto_1
    if-eqz v2, :cond_4

    .line 62
    invoke-interface {v2}, Lcom/inveno/flow/database/annotation/Id;->column()Ljava/lang/String;

    move-result-object v4

    .line 64
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    .line 65
    :cond_0
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v4

    :cond_1
    move-object v5, v4

    .line 80
    :goto_2
    return-object v5

    .line 52
    :cond_2
    aget-object v0, v1, v6

    .line 54
    .local v0, field:Ljava/lang/reflect/Field;
    const-class v8, Lcom/inveno/flow/database/annotation/Id;

    invoke-virtual {v0, v8}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    .end local v2           #idAnnotation:Lcom/inveno/flow/database/annotation/Id;
    check-cast v2, Lcom/inveno/flow/database/annotation/Id;

    .line 55
    .restart local v2       #idAnnotation:Lcom/inveno/flow/database/annotation/Id;
    if-eqz v2, :cond_3

    .line 56
    move-object v3, v0

    .line 57
    goto :goto_1

    .line 52
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 67
    .end local v0           #field:Ljava/lang/reflect/Field;
    :cond_4
    array-length v7, v1

    move v6, v5

    :goto_3
    if-lt v6, v7, :cond_5

    .line 72
    array-length v6, v1

    :goto_4
    if-ge v5, v6, :cond_1

    aget-object v0, v1, v5

    .line 73
    .restart local v0       #field:Ljava/lang/reflect/Field;
    const-string v7, "id"

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 74
    const-string v5, "id"

    goto :goto_2

    .line 67
    .end local v0           #field:Ljava/lang/reflect/Field;
    :cond_5
    aget-object v0, v1, v6

    .line 68
    .restart local v0       #field:Ljava/lang/reflect/Field;
    const-string v8, "_id"

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 69
    const-string v5, "_id"

    goto :goto_2

    .line 67
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 72
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 78
    .end local v0           #field:Ljava/lang/reflect/Field;
    .end local v2           #idAnnotation:Lcom/inveno/flow/database/annotation/Id;
    .end local v3           #idField:Ljava/lang/reflect/Field;
    :cond_8
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "this model["

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "] has no field"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5
.end method

.method public static getPrimaryKeyField(Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    .line 89
    const/4 v2, 0x0

    .line 90
    .local v2, primaryKeyField:Ljava/lang/reflect/Field;
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 91
    .local v1, fields:[Ljava/lang/reflect/Field;
    if-eqz v1, :cond_7

    .line 93
    array-length v5, v1

    move v4, v3

    :goto_0
    if-lt v4, v5, :cond_1

    .line 101
    :goto_1
    if-nez v2, :cond_0

    .line 102
    array-length v5, v1

    move v4, v3

    :goto_2
    if-lt v4, v5, :cond_3

    .line 108
    :goto_3
    if-nez v2, :cond_0

    .line 109
    array-length v4, v1

    :goto_4
    if-lt v3, v4, :cond_5

    .line 120
    :cond_0
    :goto_5
    return-object v2

    .line 93
    :cond_1
    aget-object v0, v1, v4

    .line 95
    .local v0, field:Ljava/lang/reflect/Field;
    const-class v6, Lcom/inveno/flow/database/annotation/Id;

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v6

    .line 94
    if-eqz v6, :cond_2

    .line 96
    move-object v2, v0

    .line 97
    goto :goto_1

    .line 93
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 102
    .end local v0           #field:Ljava/lang/reflect/Field;
    :cond_3
    aget-object v0, v1, v4

    .line 103
    .restart local v0       #field:Ljava/lang/reflect/Field;
    const-string v6, "_id"

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 104
    move-object v2, v0

    .line 105
    goto :goto_3

    .line 102
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 109
    .end local v0           #field:Ljava/lang/reflect/Field;
    :cond_5
    aget-object v0, v1, v3

    .line 110
    .restart local v0       #field:Ljava/lang/reflect/Field;
    const-string v5, "id"

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 111
    move-object v2, v0

    .line 112
    goto :goto_5

    .line 109
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 118
    .end local v0           #field:Ljava/lang/reflect/Field;
    :cond_7
    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "this model["

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] has no field"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static getPrimaryKeyFieldName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
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
    .line 129
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {p0}, Lcom/inveno/flow/database/table/ClassUtils;->getPrimaryKeyField(Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 130
    .local v0, f:Ljava/lang/reflect/Field;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static getPrimaryKeyValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "entity"

    .prologue
    .line 35
    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/flow/database/table/ClassUtils;->getPrimaryKeyField(Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 35
    invoke-static {p0, v0}, Lcom/inveno/flow/database/table/FieldUtils;->getFieldValue(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static getPropertyList(Ljava/lang/Class;)Ljava/util/List;
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/List",
            "<",
            "Lcom/inveno/flow/database/table/Property;",
            ">;"
        }
    .end annotation

    .prologue
    .line 140
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 142
    .local v3, plist:Ljava/util/List;,"Ljava/util/List<Lcom/inveno/flow/database/table/Property;>;"
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 143
    .local v2, fs:[Ljava/lang/reflect/Field;
    invoke-static {p0}, Lcom/inveno/flow/database/table/ClassUtils;->getPrimaryKeyFieldName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v4

    .line 144
    .local v4, primaryKeyFieldName:Ljava/lang/String;
    array-length v7, v2

    const/4 v6, 0x0

    :goto_0
    if-lt v6, v7, :cond_0

    .line 167
    return-object v3

    .line 144
    :cond_0
    aget-object v1, v2, v6

    .line 146
    .local v1, f:Ljava/lang/reflect/Field;
    invoke-static {v1}, Lcom/inveno/flow/database/table/FieldUtils;->isTransient(Ljava/lang/reflect/Field;)Z

    move-result v8

    if-nez v8, :cond_1

    .line 147
    invoke-static {v1}, Lcom/inveno/flow/database/table/FieldUtils;->isBaseDateType(Ljava/lang/reflect/Field;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 149
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 144
    :cond_1
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 152
    :cond_2
    new-instance v5, Lcom/inveno/flow/database/table/Property;

    invoke-direct {v5}, Lcom/inveno/flow/database/table/Property;-><init>()V

    .line 154
    .local v5, property:Lcom/inveno/flow/database/table/Property;
    invoke-static {v1}, Lcom/inveno/flow/database/table/FieldUtils;->getColumnByField(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/inveno/flow/database/table/Property;->setColumn(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/inveno/flow/database/table/Property;->setFieldName(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/inveno/flow/database/table/Property;->setDataType(Ljava/lang/Class;)V

    .line 158
    invoke-static {v1}, Lcom/inveno/flow/database/table/FieldUtils;->getPropertyDefaultValue(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v8

    .line 157
    invoke-virtual {v5, v8}, Lcom/inveno/flow/database/table/Property;->setDefaultValue(Ljava/lang/String;)V

    .line 159
    invoke-static {p0, v1}, Lcom/inveno/flow/database/table/FieldUtils;->getFieldSetMethod(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/inveno/flow/database/table/Property;->setSet(Ljava/lang/reflect/Method;)V

    .line 160
    invoke-static {p0, v1}, Lcom/inveno/flow/database/table/FieldUtils;->getFieldGetMethod(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;

    move-result-object v8

    invoke-virtual {v5, v8}, Lcom/inveno/flow/database/table/Property;->setGet(Ljava/lang/reflect/Method;)V

    .line 161
    invoke-virtual {v5, v1}, Lcom/inveno/flow/database/table/Property;->setField(Ljava/lang/reflect/Field;)V

    .line 163
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 168
    .end local v1           #f:Ljava/lang/reflect/Field;
    .end local v2           #fs:[Ljava/lang/reflect/Field;
    .end local v4           #primaryKeyFieldName:Ljava/lang/String;
    .end local v5           #property:Lcom/inveno/flow/database/table/Property;
    :catch_0
    move-exception v0

    .line 169
    .local v0, e:Ljava/lang/Exception;
    new-instance v6, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v6
.end method

.method public static getTableName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 4
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
    .line 26
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-class v1, Lcom/inveno/flow/database/annotation/Table;

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/inveno/flow/database/annotation/Table;

    .line 27
    .local v0, table:Lcom/inveno/flow/database/annotation/Table;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/inveno/flow/database/annotation/Table;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 29
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x2e

    const/16 v3, 0x5f

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v1

    .line 31
    :goto_0
    return-object v1

    :cond_1
    invoke-interface {v0}, Lcom/inveno/flow/database/annotation/Table;->name()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
