.class Lcom/baidu/yi/ads/service/utils/JsonUtil$Encoder;
.super Ljava/lang/Object;
.source "JsonUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/yi/ads/service/utils/JsonUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Encoder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static serialize(Lorg/json/JSONStringer;Ljava/lang/Object;)Lorg/json/JSONStringer;
    .locals 2
    .parameter "js"
    .parameter "obj"

    .prologue
    .line 71
    invoke-static {p1}, Lcom/baidu/yi/ads/service/utils/JsonUtil$DataType;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 72
    invoke-static {p0}, Lcom/baidu/yi/ads/service/utils/JsonUtil$Encoder;->serializeNull(Lorg/json/JSONStringer;)V

    .line 89
    .end local p1
    :goto_0
    return-object p0

    .line 74
    .restart local p1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 76
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v0}, Lcom/baidu/yi/ads/service/utils/JsonUtil$DataType;->isRaw(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    invoke-static {p0, p1}, Lcom/baidu/yi/ads/service/utils/JsonUtil$Encoder;->serializeRaw(Lorg/json/JSONStringer;Ljava/lang/Object;)V

    goto :goto_0

    .line 78
    :cond_1
    invoke-static {v0}, Lcom/baidu/yi/ads/service/utils/JsonUtil$DataType;->isArray(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 79
    invoke-static {p0, p1}, Lcom/baidu/yi/ads/service/utils/JsonUtil$Encoder;->serializeArray(Lorg/json/JSONStringer;Ljava/lang/Object;)Lorg/json/JSONStringer;

    goto :goto_0

    .line 80
    :cond_2
    invoke-static {v0}, Lcom/baidu/yi/ads/service/utils/JsonUtil$DataType;->isCollection(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 81
    check-cast p1, Ljava/util/Collection;

    .end local p1
    invoke-static {p0, p1}, Lcom/baidu/yi/ads/service/utils/JsonUtil$Encoder;->serializeCollection(Lorg/json/JSONStringer;Ljava/util/Collection;)V

    goto :goto_0

    .line 82
    .restart local p1
    :cond_3
    invoke-static {v0}, Lcom/baidu/yi/ads/service/utils/JsonUtil$DataType;->isMap(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 83
    check-cast p1, Ljava/util/Map;

    .end local p1
    invoke-static {p0, p1}, Lcom/baidu/yi/ads/service/utils/JsonUtil$Encoder;->serializeMap(Lorg/json/JSONStringer;Ljava/util/Map;)V

    goto :goto_0

    .line 85
    .restart local p1
    :cond_4
    invoke-static {p0, p1}, Lcom/baidu/yi/ads/service/utils/JsonUtil$Encoder;->serializeObject(Lorg/json/JSONStringer;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static serializeArray(Lorg/json/JSONStringer;Ljava/lang/Object;)Lorg/json/JSONStringer;
    .locals 4
    .parameter "js"
    .parameter "array"

    .prologue
    .line 124
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONStringer;->array()Lorg/json/JSONStringer;

    .line 125
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    if-lt v1, v3, :cond_0

    .line 129
    invoke-virtual {p0}, Lorg/json/JSONStringer;->endArray()Lorg/json/JSONStringer;

    .line 133
    .end local v1           #i:I
    :goto_1
    return-object p0

    .line 126
    .restart local v1       #i:I
    :cond_0
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 127
    .local v2, o:Ljava/lang/Object;
    invoke-static {p0, v2}, Lcom/baidu/yi/ads/service/utils/JsonUtil$Encoder;->serialize(Lorg/json/JSONStringer;Ljava/lang/Object;)Lorg/json/JSONStringer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 130
    .end local v1           #i:I
    .end local v2           #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 131
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static serializeCollection(Lorg/json/JSONStringer;Ljava/util/Collection;)V
    .locals 4
    .parameter "js"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONStringer;",
            "Ljava/util/Collection",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 143
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONStringer;->array()Lorg/json/JSONStringer;

    .line 144
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 147
    invoke-virtual {p0}, Lorg/json/JSONStringer;->endArray()Lorg/json/JSONStringer;

    .line 151
    :goto_1
    return-void

    .line 144
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 145
    .local v1, o:Ljava/lang/Object;
    invoke-static {p0, v1}, Lcom/baidu/yi/ads/service/utils/JsonUtil$Encoder;->serialize(Lorg/json/JSONStringer;Ljava/lang/Object;)Lorg/json/JSONStringer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 148
    .end local v1           #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 149
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static serializeMap(Lorg/json/JSONStringer;Ljava/util/Map;)V
    .locals 5
    .parameter "js"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONStringer;",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<**>;"
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    .line 162
    move-object v3, p1

    .line 163
    .local v3, valueMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 164
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 169
    invoke-virtual {p0}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    .line 173
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v3           #valueMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :goto_1
    return-void

    .line 165
    .restart local v2       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .restart local v3       #valueMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 166
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 167
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/baidu/yi/ads/service/utils/JsonUtil$Encoder;->serialize(Lorg/json/JSONStringer;Ljava/lang/Object;)Lorg/json/JSONStringer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 170
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v3           #valueMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_0
    move-exception v0

    .line 171
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private static serializeNull(Lorg/json/JSONStringer;)V
    .locals 2
    .parameter "js"

    .prologue
    .line 98
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private static serializeObject(Lorg/json/JSONStringer;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 8
    .parameter "js"
    .parameter
    .parameter "obj"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONStringer;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 197
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez p1, :cond_1

    .line 218
    :cond_0
    return-void

    .line 201
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v4

    invoke-static {p0, v4, p2}, Lcom/baidu/yi/ads/service/utils/JsonUtil$Encoder;->serializeObject(Lorg/json/JSONStringer;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 203
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v2

    .line 204
    .local v2, fields:[Ljava/lang/reflect/Field;
    array-length v5, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v0, v2, v4

    .line 206
    .local v0, field:Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {v0, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 207
    invoke-virtual {v0, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 208
    .local v1, fieldVal:Ljava/lang/Object;
    const-class v6, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 209
    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v6, "yyyy-MM-dd HH:mm:ss"

    sget-object v7, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v3, v6, v7}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 210
    .local v3, sdf:Ljava/text/SimpleDateFormat;
    check-cast v1, Ljava/util/Date;

    .end local v1           #fieldVal:Ljava/lang/Object;
    invoke-virtual {v3, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 212
    .end local v3           #sdf:Ljava/text/SimpleDateFormat;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 213
    invoke-static {p0, v1}, Lcom/baidu/yi/ads/service/utils/JsonUtil$Encoder;->serialize(Lorg/json/JSONStringer;Ljava/lang/Object;)Lorg/json/JSONStringer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 204
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 214
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method private static serializeObject(Lorg/json/JSONStringer;Ljava/lang/Object;)V
    .locals 2
    .parameter "js"
    .parameter "obj"

    .prologue
    .line 182
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    .line 183
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p0, v1, p1}, Lcom/baidu/yi/ads/service/utils/JsonUtil$Encoder;->serializeObject(Lorg/json/JSONStringer;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 184
    invoke-virtual {p0}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    :goto_0
    return-void

    .line 185
    :catch_0
    move-exception v0

    .line 186
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static serializeRaw(Lorg/json/JSONStringer;Ljava/lang/Object;)V
    .locals 1
    .parameter "js"
    .parameter "obj"

    .prologue
    .line 111
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    return-void

    .line 112
    :catch_0
    move-exception v0

    .line 113
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
