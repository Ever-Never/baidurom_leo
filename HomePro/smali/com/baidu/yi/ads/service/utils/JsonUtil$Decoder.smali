.class Lcom/baidu/yi/ads/service/utils/JsonUtil$Decoder;
.super Ljava/lang/Object;
.source "JsonUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/yi/ads/service/utils/JsonUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Decoder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 225
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
    .line 235
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/baidu/yi/ads/service/utils/JsonUtil$DataType;->isNull(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 236
    :cond_0
    const/4 v1, 0x0

    .line 250
    :goto_0
    return-object v1

    .line 239
    :cond_1
    const/4 v2, 0x0

    .line 241
    .local v2, obj:Ljava/lang/Object;
    invoke-static {p1}, Lcom/baidu/yi/ads/service/utils/JsonUtil$DataType;->isArray(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 242
    invoke-virtual {p1}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v0

    .line 243
    .local v0, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {p0, v0}, Lcom/baidu/yi/ads/service/utils/JsonUtil$Decoder;->deserializeArray(Lorg/json/JSONArray;Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    .local v2, obj:[Ljava/lang/Object;
    move-object v1, v2

    .line 250
    .end local v0           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v2           #obj:[Ljava/lang/Object;
    .local v1, o:Ljava/lang/Object;,"TT;"
    .local v1, obj:Ljava/lang/Object;
    :goto_1
    goto :goto_0

    .line 244
    .end local v1           #obj:Ljava/lang/Object;
    .local v2, obj:Ljava/lang/Object;
    :cond_2
    invoke-static {p1}, Lcom/baidu/yi/ads/service/utils/JsonUtil$DataType;->isCollection(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 245
    invoke-static {p0, p1}, Lcom/baidu/yi/ads/service/utils/JsonUtil$Decoder;->deserializeCollection(Lorg/json/JSONArray;Ljava/lang/Class;)Ljava/lang/Object;

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
    .line 261
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/baidu/yi/ads/service/utils/JsonUtil$DataType;->isNull(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 262
    :cond_0
    const/4 v1, 0x0

    .line 276
    :cond_1
    :goto_0
    return-object v1

    .line 265
    :cond_2
    invoke-static {p1}, Lcom/baidu/yi/ads/service/utils/JsonUtil$Decoder;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 266
    .local v1, obj:Ljava/lang/Object;,"TT;"
    if-eqz v1, :cond_1

    .line 267
    invoke-static {p1}, Lcom/baidu/yi/ads/service/utils/JsonUtil$DataType;->isMap(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v0, v1

    .line 269
    check-cast v0, Ljava/util/Map;

    .line 270
    .local v0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-static {v0, p0}, Lcom/baidu/yi/ads/service/utils/JsonUtil$Decoder;->deserializeMap(Ljava/util/Map;Lorg/json/JSONObject;)V

    goto :goto_0

    .line 272
    .end local v0           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    invoke-static {p0, p1, v1}, Lcom/baidu/yi/ads/service/utils/JsonUtil$Decoder;->deserializeObject(Lorg/json/JSONObject;Ljava/lang/Class;Ljava/lang/Object;)V

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
    .line 384
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    invoke-static {p0}, Lcom/baidu/yi/ads/service/utils/JsonUtil$DataType;->isNull(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    if-nez p1, :cond_2

    .line 385
    :cond_0
    const/4 v0, 0x0

    .line 403
    :cond_1
    :goto_0
    return-object v0

    .line 388
    :cond_2
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v4

    .line 391
    .local v4, len:I
    invoke-static {p1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 393
    .local v0, array:[Ljava/lang/Object;
    invoke-static {p1}, Lcom/baidu/yi/ads/service/utils/JsonUtil$DataType;->isArray(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_3

    invoke-static {p1}, Lcom/baidu/yi/ads/service/utils/JsonUtil$DataType;->isCollection(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v3, 0x0

    .line 396
    .local v3, itemIsJSONArray:Z
    :goto_1
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v4, :cond_1

    .line 397
    :try_start_0
    invoke-static {p0, v2, p1, v3}, Lcom/baidu/yi/ads/service/utils/JsonUtil$Decoder;->deserializeJSONArray(Lorg/json/JSONArray;ILjava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v0, v2
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 396
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 393
    .end local v2           #i:I
    .end local v3           #itemIsJSONArray:Z
    :cond_3
    const/4 v3, 0x1

    goto :goto_1

    .line 399
    .restart local v2       #i:I
    .restart local v3       #itemIsJSONArray:Z
    :catch_0
    move-exception v1

    .line 400
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

    .line 415
    invoke-static {p0}, Lcom/baidu/yi/ads/service/utils/JsonUtil$DataType;->isNull(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_0

    invoke-static {p1}, Lcom/baidu/yi/ads/service/utils/JsonUtil$DataType;->isCollection(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 448
    :cond_0
    :goto_0
    return-object v6

    .line 419
    :cond_1
    const/4 v0, 0x0

    .line 420
    .local v0, c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v3

    .line 421
    .local v3, gType:Ljava/lang/reflect/Type;
    instance-of v9, v3, Ljava/lang/reflect/ParameterizedType;

    if-eqz v9, :cond_2

    move-object v7, v3

    .line 422
    check-cast v7, Ljava/lang/reflect/ParameterizedType;

    .line 423
    .local v7, ptype:Ljava/lang/reflect/ParameterizedType;
    invoke-interface {v7}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v8

    .line 424
    .local v8, targs:[Ljava/lang/reflect/Type;
    if-eqz v8, :cond_2

    array-length v9, v8

    if-lez v9, :cond_2

    .line 425
    aget-object v0, v8, v5

    .end local v0           #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    check-cast v0, Ljava/lang/Class;

    .line 429
    .end local v7           #ptype:Ljava/lang/reflect/ParameterizedType;
    .end local v8           #targs:[Ljava/lang/reflect/Type;
    .restart local v0       #c:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_2
    if-eqz v0, :cond_0

    .line 434
    invoke-static {p1}, Lcom/baidu/yi/ads/service/utils/JsonUtil$Decoder;->newInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 436
    .local v1, collection:Ljava/util/Collection;,"Ljava/util/Collection<Ljava/lang/Object;>;"
    invoke-static {v0}, Lcom/baidu/yi/ads/service/utils/JsonUtil$DataType;->isArray(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-static {v0}, Lcom/baidu/yi/ads/service/utils/JsonUtil$DataType;->isCollection(Ljava/lang/Class;)Z

    move-result v9

    if-nez v9, :cond_3

    .line 439
    .local v5, itemIsJSONArray:Z
    :goto_1
    const/4 v4, 0x0

    .local v4, i:I
    :goto_2
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lt v4, v9, :cond_4

    .line 447
    :goto_3
    move-object v6, v1

    .line 448
    .local v6, o:Ljava/util/Collection;,"TT;"
    goto :goto_0

    .line 436
    .end local v4           #i:I
    .end local v5           #itemIsJSONArray:Z
    .end local v6           #o:Ljava/util/Collection;,"TT;"
    :cond_3
    const/4 v5, 0x1

    goto :goto_1

    .line 440
    .restart local v4       #i:I
    .restart local v5       #itemIsJSONArray:Z
    :cond_4
    invoke-static {p0, v4, v0, v5}, Lcom/baidu/yi/ads/service/utils/JsonUtil$Decoder;->deserializeJSONArray(Lorg/json/JSONArray;ILjava/lang/Class;Z)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 439
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 442
    :catch_0
    move-exception v2

    .line 443
    .local v2, e:Lorg/json/JSONException;
    invoke-virtual {v2}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3
.end method

.method private static deserializeField(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/reflect/Field;)V
    .locals 7
    .parameter "jo"
    .parameter "obj"
    .parameter "field"

    .prologue
    .line 307
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    .line 308
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v3

    .line 311
    .local v3, name:Ljava/lang/String;
    const/4 v4, 0x0

    .line 313
    .local v4, o:Ljava/lang/Object;
    :try_start_0
    invoke-static {v0}, Lcom/baidu/yi/ads/service/utils/JsonUtil$DataType;->isRaw(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 314
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->opt(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    .line 324
    :goto_0
    invoke-static {p1, p2, v4}, Lcom/baidu/yi/ads/service/utils/JsonUtil$Decoder;->setFiedlValue(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    .line 328
    .end local v4           #o:Ljava/lang/Object;
    :goto_1
    return-void

    .line 315
    .restart local v4       #o:Ljava/lang/Object;
    :cond_0
    invoke-static {v0}, Lcom/baidu/yi/ads/service/utils/JsonUtil$DataType;->isArray(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {v0}, Lcom/baidu/yi/ads/service/utils/JsonUtil$DataType;->isCollection(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 316
    :cond_1
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/baidu/yi/ads/service/utils/JsonUtil$Decoder;->deserialize(Lorg/json/JSONArray;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    .line 317
    goto :goto_0

    :cond_2
    invoke-static {v0}, Lcom/baidu/yi/ads/service/utils/JsonUtil$DataType;->isObject(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 318
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    .line 319
    .local v2, j:Lorg/json/JSONObject;
    invoke-static {v2, v0}, Lcom/baidu/yi/ads/service/utils/JsonUtil$Decoder;->deserialize(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    .line 320
    goto :goto_0

    .line 321
    .end local v2           #j:Lorg/json/JSONObject;
    :cond_3
    new-instance v5, Ljava/lang/Exception;

    const-string v6, "unknow type!"

    invoke-direct {v5, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 325
    .end local v4           #o:Ljava/lang/Object;
    :catch_0
    move-exception v1

    .line 326
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
    .line 461
    .local p2, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    if-eqz p3, :cond_0

    .line 462
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v0

    .line 463
    .local v0, itemJa:Lorg/json/JSONArray;
    invoke-static {v0, p2}, Lcom/baidu/yi/ads/service/utils/JsonUtil$Decoder;->deserialize(Lorg/json/JSONArray;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    .line 466
    .end local v0           #itemJa:Lorg/json/JSONArray;
    :goto_0
    return-object v2

    .line 465
    :cond_0
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 466
    .local v1, itemJo:Lorg/json/JSONObject;
    invoke-static {v1, p2}, Lcom/baidu/yi/ads/service/utils/JsonUtil$Decoder;->deserialize(Lorg/json/JSONObject;Ljava/lang/Class;)Ljava/lang/Object;

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
    .line 365
    .local p0, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v2

    .line 367
    .local v2, keyIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 375
    .end local v2           #keyIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_1
    return-void

    .line 368
    .restart local v2       #keyIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 369
    .local v1, key:Ljava/lang/String;
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 370
    .local v3, value:Ljava/lang/Object;
    invoke-interface {p0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 372
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #keyIter:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/lang/String;>;"
    .end local v3           #value:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 373
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1
.end method

.method private static deserializeObject(Lorg/json/JSONObject;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 4
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
    .line 287
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez p1, :cond_1

    .line 297
    :cond_0
    return-void

    .line 291
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v2

    invoke-static {p0, v2, p2}, Lcom/baidu/yi/ads/service/utils/JsonUtil$Decoder;->deserializeObject(Lorg/json/JSONObject;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 293
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v1

    .line 294
    .local v1, fields:[Ljava/lang/reflect/Field;
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 295
    .local v0, field:Ljava/lang/reflect/Field;
    invoke-static {p0, p2, v0}, Lcom/baidu/yi/ads/service/utils/JsonUtil$Decoder;->deserializeField(Lorg/json/JSONObject;Ljava/lang/Object;Ljava/lang/reflect/Field;)V

    .line 294
    add-int/lit8 v2, v2, 0x1

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
    .line 478
    .local p0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<TT;>;"
    if-nez p0, :cond_0

    .line 479
    const/4 v1, 0x0

    .line 500
    :goto_0
    return-object v1

    .line 482
    :cond_0
    const/4 v1, 0x0

    .line 483
    .local v1, obj:Ljava/lang/Object;,"TT;"
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 484
    const-class v2, Ljava/util/Map;

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 485
    new-instance v1, Ljava/util/HashMap;

    .end local v1           #obj:Ljava/lang/Object;,"TT;"
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 486
    .local v1, obj:Ljava/util/HashMap;,"TT;"
    goto :goto_0

    .local v1, obj:Ljava/lang/Object;,"TT;"
    :cond_1
    const-class v2, Ljava/util/List;

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 487
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #obj:Ljava/lang/Object;,"TT;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 488
    .local v1, obj:Ljava/util/ArrayList;,"TT;"
    goto :goto_0

    .local v1, obj:Ljava/lang/Object;,"TT;"
    :cond_2
    const-class v2, Ljava/util/Set;

    invoke-virtual {p0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 489
    new-instance v1, Ljava/util/HashSet;

    .end local v1           #obj:Ljava/lang/Object;,"TT;"
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 490
    .local v1, obj:Ljava/util/HashSet;,"TT;"
    goto :goto_0

    .line 491
    .local v1, obj:Ljava/lang/Object;,"TT;"
    :cond_3
    new-instance v2, Lorg/json/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unknown interface: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 495
    :cond_4
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 496
    :catch_0
    move-exception v0

    .line 497
    .local v0, e:Ljava/lang/Exception;
    new-instance v2, Lorg/json/JSONException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "unknown class type: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

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
    .line 337
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-string v4, ""

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 355
    :cond_0
    :goto_0
    return-void

    .line 342
    :cond_1
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    .line 343
    .local v3, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 345
    const-class v4, Ljava/util/Date;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 346
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    sget-object v5, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v1, v4, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 347
    .local v1, sdf:Ljava/text/SimpleDateFormat;
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v2

    .line 348
    .local v2, temp:Ljava/util/Date;
    invoke-virtual {p1, p0, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 352
    .end local v1           #sdf:Ljava/text/SimpleDateFormat;
    .end local v2           #temp:Ljava/util/Date;
    .end local v3           #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :catch_0
    move-exception v0

    .line 353
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 350
    .end local v0           #e:Ljava/lang/Exception;
    .restart local v3       #type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    :cond_2
    :try_start_1
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
