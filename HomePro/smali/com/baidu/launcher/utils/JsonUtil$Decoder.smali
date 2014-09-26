.class Lcom/baidu/launcher/utils/JsonUtil$Decoder;
.super Ljava/lang/Object;
.source "JsonUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/utils/JsonUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Decoder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 255
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static deserialize(Lorg/json/JSONArray;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .parameter "ja"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONArray;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 268
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/baidu/launcher/utils/JsonUtil$DataType;->isNull(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 269
    :cond_0
    const/4 v1, 0x0

    .line 283
    :goto_0
    return-object v1

    .line 272
    :cond_1
    const/4 v2, 0x0

    .line 274
    .local v2, obj:Ljava/lang/Object;
    invoke-static {p1}, Lcom/baidu/launcher/utils/JsonUtil$DataType;->isArray(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 275
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 276
    .local v0, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {p0, v0}, Lcom/baidu/launcher/utils/JsonUtil$Decoder;->deserializeArray(Lorg/json/JSONArray;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .local v2, obj:[Ljava/lang/Object;
    move-object v1, v2

    .line 283
    .end local v0           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #obj:[Ljava/lang/Object;
    .local v1, o:Ljava/lang/Object;,"TT;"
    .local v1, obj:Ljava/lang/Object;
    :goto_1
    goto :goto_0

    .line 277
    .end local v1           #obj:Ljava/lang/Object;
    .local v2, obj:Ljava/lang/Object;
    :cond_2
    invoke-static {p1}, Lcom/baidu/launcher/utils/JsonUtil$DataType;->isCollection(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 278
    invoke-static {p0, p1}, Lcom/baidu/launcher/utils/JsonUtil$Decoder;->deserializeCollection(Lorg/json/JSONArray;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    .end local v2           #obj:Ljava/lang/Object;
    .local v1, obj:Ljava/lang/Object;
    goto :goto_1

    .end local v1           #obj:Ljava/lang/Object;
    .restart local v2       #obj:Ljava/lang/Object;
    :cond_3
    move-object v1, v2

    .end local v2           #obj:Ljava/lang/Object;
    .restart local v1       #obj:Ljava/lang/Object;
    goto :goto_1
.end method

.method public static deserialize(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .parameter "jo"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 297
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/baidu/launcher/utils/JsonUtil$DataType;->isNull(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 298
    :cond_0
    const/4 v1, 0x0

    .line 312
    :cond_1
    :goto_0
    return-object v1

    .line 301
    :cond_2
    invoke-static {p1}, Lcom/baidu/launcher/utils/JsonUtil$Decoder;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 302
    .local v1, obj:Ljava/lang/Object;,"TT;"
    if-eqz v1, :cond_1

    .line 303
    invoke-static {p1}, Lcom/baidu/launcher/utils/JsonUtil$DataType;->isMap(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v0, v1

    .line 305
    check-cast v0, Ljava/util/Map;

    .line 306
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {v0, p0}, Lcom/baidu/launcher/utils/JsonUtil$Decoder;->deserializeMap(Ljava/util/Map;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 308
    .end local v0           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    invoke-static {p0, p1, v1}, Lcom/baidu/launcher/utils/JsonUtil$Decoder;->deserializeObject(Lorg/json/JSONObject;Ljava/lang/Class;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static deserializeArray(Lorg/json/JSONArray;Ljava/lang/Class;)[Ljava/lang/Object;
    .locals 6
    .parameter "ja"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONArray;",
            "Ljava/lang/Class",
            "<TT;>;)[TT;"
        }
    .end annotation

    .prologue
    .line 437
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Lcom/baidu/launcher/utils/JsonUtil$DataType;->isNull(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    if-nez p1, :cond_2

    .line 438
    :cond_0
    const/4 v0, 0x0

    .line 458
    :cond_1
    :goto_0
    return-object v0

    .line 441
    :cond_2
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 444
    .local v4, len:I
    invoke-static {p1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Ljava/lang/Object;

    move-object v0, v5

    check-cast v0, [Ljava/lang/Object;

    .line 446
    .local v0, array:[Ljava/lang/Object;,"[TT;"
    invoke-static {p1}, Lcom/baidu/launcher/utils/JsonUtil$DataType;->isArray(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {p1}, Lcom/baidu/launcher/utils/JsonUtil$DataType;->isCollection(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_3
    const/4 v3, 0x1

    .line 450
    .local v3, itemIsJSONArray:Z
    :goto_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v4, :cond_1

    .line 451
    :try_start_0
    invoke-static {p0, v2, p1, v3}, Lcom/baidu/launcher/utils/JsonUtil$Decoder;->deserializeJSONArray(Lorg/json/JSONArray;ILjava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v0, v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 450
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 446
    .end local v2           #i:I
    .end local v3           #itemIsJSONArray:Z
    :cond_4
    const/4 v3, 0x0

    goto :goto_1

    .line 454
    .restart local v2       #i:I
    .restart local v3       #itemIsJSONArray:Z
    :catch_0
    move-exception v1

    .line 455
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private static deserializeCollection(Lorg/json/JSONArray;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 10
    .parameter "ja"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONArray;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 473
    invoke-static {p0}, Lcom/baidu/launcher/utils/JsonUtil$DataType;->isNull(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {p1}, Lcom/baidu/launcher/utils/JsonUtil$DataType;->isCollection(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 508
    :cond_0
    :goto_0
    return-object v6

    .line 477
    :cond_1
    const/4 v0, 0x0

    .line 478
    .local v0, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 479
    .local v3, gType:Ljava/lang/reflect/Type;
    instance-of v9, v3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v9, :cond_2

    move-object v7, v3

    .line 480
    check-cast v7, Ljava/lang/reflect/ParameterizedType;

    .line 481
    .local v7, ptype:Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v7}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v8

    .line 482
    .local v8, targs:[Ljava/lang/reflect/Type;
    if-eqz v8, :cond_2

    array-length v9, v8

    if-lez v9, :cond_2

    .line 483
    aget-object v0, v8, v5

    .end local v0           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    check-cast v0, Ljava/lang/Class;

    .line 487
    .end local v7           #ptype:Ljava/lang/reflect/ParameterizedType;
    .end local v8           #targs:[Ljava/lang/reflect/Type;
    .restart local v0       #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_2
    if-eqz v0, :cond_0

    .line 492
    invoke-static {p1}, Lcom/baidu/launcher/utils/JsonUtil$Decoder;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 494
    .local v1, collection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Object;>;"
    invoke-static {v0}, Lcom/baidu/launcher/utils/JsonUtil$DataType;->isArray(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-static {v0}, Lcom/baidu/launcher/utils/JsonUtil$DataType;->isCollection(Ljava/lang/Class;)Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_3
    const/4 v5, 0x1

    .line 498
    .local v5, itemIsJSONArray:Z
    :cond_4
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v4, v9, :cond_5

    .line 499
    invoke-static {p0, v4, v0, v5}, Lcom/baidu/launcher/utils/JsonUtil$Decoder;->deserializeJSONArray(Lorg/json/JSONArray;ILjava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 498
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 502
    :catch_0
    move-exception v2

    .line 503
    .local v2, e:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    .line 507
    .end local v2           #e:Lorg/json/JSONException;
    :cond_5
    move-object v6, v1

    .line 508
    .local v6, o:Ljava/util/Collection;,"TT;"
    goto :goto_0
.end method

.method private static deserializeField(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/reflect/Field;)V
    .locals 7
    .parameter "jo"
    .parameter "obj"
    .parameter "field"

    .prologue
    .line 349
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 350
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    .line 353
    .local v3, name:Ljava/lang/String;
    const/4 v4, 0x0

    .line 355
    .local v4, o:Ljava/lang/Object;
    :try_start_0
    invoke-static {v0}, Lcom/baidu/launcher/utils/JsonUtil$DataType;->isRaw(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 356
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 367
    :goto_0
    invoke-static {p1, p2, v4}, Lcom/baidu/launcher/utils/JsonUtil$Decoder;->setFiedlValue(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    .line 371
    .end local v4           #o:Ljava/lang/Object;
    :goto_1
    return-void

    .line 357
    .restart local v4       #o:Ljava/lang/Object;
    :cond_0
    invoke-static {v0}, Lcom/baidu/launcher/utils/JsonUtil$DataType;->isArray(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v0}, Lcom/baidu/launcher/utils/JsonUtil$DataType;->isCollection(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 359
    :cond_1
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/baidu/launcher/utils/JsonUtil$Decoder;->deserialize(Lorg/json/JSONArray;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_0

    .line 360
    :cond_2
    invoke-static {v0}, Lcom/baidu/launcher/utils/JsonUtil$DataType;->isObject(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 361
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 362
    .local v2, j:Lorg/json/JSONObject;
    invoke-static {v2, v0}, Lcom/baidu/launcher/utils/JsonUtil$Decoder;->deserialize(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    .line 363
    goto :goto_0

    .line 364
    .end local v2           #j:Lorg/json/JSONObject;
    :cond_3
    new-instance v5, Ljava/lang/Exception;

    const-string v6, "unknow type!"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    .end local v4           #o:Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 369
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static deserializeJSONArray(Lorg/json/JSONArray;ILjava/lang/Class;Z)Ljava/lang/Object;
    .locals 3
    .parameter "ja"
    .parameter "index"
    .parameter
    .parameter "isJSONArray"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/json/JSONArray;",
            "I",
            "Ljava/lang/Class",
            "<TT;>;Z)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 525
    .local p2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    if-eqz p3, :cond_0

    .line 526
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v0

    .line 527
    .local v0, itemJa:Lorg/json/JSONArray;
    invoke-static {v0, p2}, Lcom/baidu/launcher/utils/JsonUtil$Decoder;->deserialize(Lorg/json/JSONArray;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 534
    .end local v0           #itemJa:Lorg/json/JSONArray;
    :goto_0
    return-object v2

    .line 528
    :cond_0
    invoke-static {p2}, Lcom/baidu/launcher/utils/JsonUtil$DataType;->isString(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 529
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 530
    :cond_1
    invoke-static {p2}, Lcom/baidu/launcher/utils/JsonUtil$DataType;->isRaw(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 531
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    .line 533
    :cond_2
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 534
    .local v1, itemJo:Lorg/json/JSONObject;
    invoke-static {v1, p2}, Lcom/baidu/launcher/utils/JsonUtil$Decoder;->deserialize(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method private static deserializeMap(Ljava/util/Map;Lorg/json/JSONObject;)V
    .locals 5
    .parameter
    .parameter "jo"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lorg/json/JSONObject;",
            ")V"
        }
    .end annotation

    .prologue
    .line 415
    .local p0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 417
    .local v2, keyIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 418
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 419
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 420
    .local v3, value:Ljava/lang/Object;
    invoke-interface {p0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 422
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #keyIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3           #value:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 423
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    .line 425
    .end local v0           #e:Lorg/json/JSONException;
    :cond_0
    return-void
.end method

.method private static deserializeObject(Lorg/json/JSONObject;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 6
    .parameter "jo"
    .parameter
    .parameter "obj"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 326
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez p1, :cond_1

    .line 336
    :cond_0
    return-void

    .line 330
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {p0, v5, p2}, Lcom/baidu/launcher/utils/JsonUtil$Decoder;->deserializeObject(Lorg/json/JSONObject;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 332
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 333
    .local v2, fields:[Ljava/lang/reflect/Field;
    move-object v0, v2

    .local v0, arr$:[Ljava/lang/reflect/Field;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v1, v0, v3

    .line 334
    .local v1, field:Ljava/lang/reflect/Field;
    invoke-static {p0, p2, v1}, Lcom/baidu/launcher/utils/JsonUtil$Decoder;->deserializeField(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/reflect/Field;)V

    .line 333
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method private static newInstance(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .prologue
    .line 546
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    if-nez p0, :cond_0

    .line 547
    const/4 v1, 0x0

    .line 568
    :goto_0
    return-object v1

    .line 550
    :cond_0
    const/4 v1, 0x0

    .line 551
    .local v1, obj:Ljava/lang/Object;,"TT;"
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 552
    const-class v2, Ljava/util/Map;

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 553
    new-instance v1, Ljava/util/HashMap;

    .end local v1           #obj:Ljava/lang/Object;,"TT;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .local v1, obj:Ljava/util/HashMap;,"TT;"
    goto :goto_0

    .line 554
    .local v1, obj:Ljava/lang/Object;,"TT;"
    :cond_1
    const-class v2, Ljava/util/List;

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 555
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #obj:Ljava/lang/Object;,"TT;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .local v1, obj:Ljava/util/ArrayList;,"TT;"
    goto :goto_0

    .line 556
    .local v1, obj:Ljava/lang/Object;,"TT;"
    :cond_2
    const-class v2, Ljava/util/Set;

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 557
    new-instance v1, Ljava/util/HashSet;

    .end local v1           #obj:Ljava/lang/Object;,"TT;"
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .local v1, obj:Ljava/util/HashSet;,"TT;"
    goto :goto_0

    .line 559
    .local v1, obj:Ljava/lang/Object;,"TT;"
    :cond_3
    new-instance v2, Lorg/json/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown interface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 563
    :cond_4
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 564
    :catch_0
    move-exception v0

    .line 565
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Lorg/json/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unknown class type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static setFiedlValue(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    .locals 6
    .parameter "obj"
    .parameter "field"
    .parameter "value"

    .prologue
    .line 381
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-string v4, ""

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 401
    :cond_0
    :goto_0
    return-void

    .line 387
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    .line 388
    .local v3, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 390
    const-class v4, Ljava/util/Date;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 391
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v1, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 393
    .local v1, sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 394
    .local v2, temp:Ljava/util/Date;
    invoke-virtual {p1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 398
    .end local v1           #sdf:Ljava/text/SimpleDateFormat;
    .end local v2           #temp:Ljava/util/Date;
    .end local v3           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 399
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 396
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v3       #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_2
    :try_start_1
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
