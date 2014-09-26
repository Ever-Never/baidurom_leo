.class Lcom/baidu/launcher/utils/JsonUtil$Encoder;
.super Ljava/lang/Object;
.source "JsonUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/utils/JsonUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Encoder"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static serialize(Lorg/json/JSONStringer;Ljava/lang/Object;)Lorg/json/JSONStringer;
    .locals 2
    .parameter "js"
    .parameter "obj"

    .prologue
    .line 76
    invoke-static {p1}, Lcom/baidu/launcher/utils/JsonUtil$DataType;->isNull(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    invoke-static {p0}, Lcom/baidu/launcher/utils/JsonUtil$Encoder;->serializeNull(Lorg/json/JSONStringer;)V

    .line 94
    .end local p1
    :goto_0
    return-object p0

    .line 79
    .restart local p1
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 81
    .local v0, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-static {v0}, Lcom/baidu/launcher/utils/JsonUtil$DataType;->isRaw(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 82
    invoke-static {p0, p1}, Lcom/baidu/launcher/utils/JsonUtil$Encoder;->serializeRaw(Lorg/json/JSONStringer;Ljava/lang/Object;)V

    goto :goto_0

    .line 83
    :cond_1
    invoke-static {v0}, Lcom/baidu/launcher/utils/JsonUtil$DataType;->isArray(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 84
    invoke-static {p0, p1}, Lcom/baidu/launcher/utils/JsonUtil$Encoder;->serializeArray(Lorg/json/JSONStringer;Ljava/lang/Object;)Lorg/json/JSONStringer;

    goto :goto_0

    .line 85
    :cond_2
    invoke-static {v0}, Lcom/baidu/launcher/utils/JsonUtil$DataType;->isCollection(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 86
    check-cast p1, Ljava/util/Collection;

    .end local p1
    invoke-static {p0, p1}, Lcom/baidu/launcher/utils/JsonUtil$Encoder;->serializeCollection(Lorg/json/JSONStringer;Ljava/util/Collection;)V

    goto :goto_0

    .line 87
    .restart local p1
    :cond_3
    invoke-static {v0}, Lcom/baidu/launcher/utils/JsonUtil$DataType;->isMap(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 88
    check-cast p1, Ljava/util/Map;

    .end local p1
    invoke-static {p0, p1}, Lcom/baidu/launcher/utils/JsonUtil$Encoder;->serializeMap(Lorg/json/JSONStringer;Ljava/util/Map;)V

    goto :goto_0

    .line 90
    .restart local p1
    :cond_4
    invoke-static {p0, p1}, Lcom/baidu/launcher/utils/JsonUtil$Encoder;->serializeObject(Lorg/json/JSONStringer;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static serializeArray(Lorg/json/JSONStringer;Ljava/lang/Object;)Lorg/json/JSONStringer;
    .locals 4
    .parameter "js"
    .parameter "array"

    .prologue
    .line 137
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONStringer;->array()Lorg/json/JSONStringer;

    .line 138
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-static {p1}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 139
    invoke-static {p1, v1}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    .line 140
    .local v2, o:Ljava/lang/Object;
    invoke-static {p0, v2}, Lcom/baidu/launcher/utils/JsonUtil$Encoder;->serialize(Lorg/json/JSONStringer;Ljava/lang/Object;)Lorg/json/JSONStringer;

    .line 138
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 142
    .end local v2           #o:Ljava/lang/Object;
    :cond_0
    invoke-virtual {p0}, Lorg/json/JSONStringer;->endArray()Lorg/json/JSONStringer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 146
    .end local v1           #i:I
    :goto_1
    return-object p0

    .line 143
    :catch_0
    move-exception v0

    .line 144
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
    .line 160
    .local p1, collection:Ljava/util/Collection;,"Ljava/util/Collection<*>;"
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONStringer;->array()Lorg/json/JSONStringer;

    .line 161
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 162
    .local v2, o:Ljava/lang/Object;
    invoke-static {p0, v2}, Lcom/baidu/launcher/utils/JsonUtil$Encoder;->serialize(Lorg/json/JSONStringer;Ljava/lang/Object;)Lorg/json/JSONStringer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 165
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #o:Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 166
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 168
    .end local v0           #e:Ljava/lang/Exception;
    :goto_1
    return-void

    .line 164
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/json/JSONStringer;->endArray()Lorg/json/JSONStringer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

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
    .line 180
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<**>;"
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    .line 182
    move-object v3, p1

    .line 183
    .local v3, valueMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 185
    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 186
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 188
    .local v1, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {p0, v4}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 189
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/baidu/launcher/utils/JsonUtil$Encoder;->serialize(Lorg/json/JSONStringer;Ljava/lang/Object;)Lorg/json/JSONStringer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 192
    .end local v1           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .end local v3           #valueMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :catch_0
    move-exception v0

    .line 193
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 195
    .end local v0           #e:Ljava/lang/Exception;
    :goto_1
    return-void

    .line 191
    .restart local v2       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;>;"
    .restart local v3       #valueMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method private static serializeNull(Lorg/json/JSONStringer;)V
    .locals 2
    .parameter "js"

    .prologue
    .line 105
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    :goto_0
    return-void

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method private static serializeObject(Lorg/json/JSONStringer;Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 10
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
    .line 227
    .local p1, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    if-nez p1, :cond_1

    .line 249
    :cond_0
    return-void

    .line 231
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v8

    invoke-static {p0, v8, p2}, Lcom/baidu/launcher/utils/JsonUtil$Encoder;->serializeObject(Lorg/json/JSONStringer;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 233
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v4

    .line 234
    .local v4, fields:[Ljava/lang/reflect/Field;
    move-object v0, v4

    .local v0, arr$:[Ljava/lang/reflect/Field;
    array-length v6, v0

    .local v6, len$:I
    const/4 v5, 0x0

    .local v5, i$:I
    :goto_0
    if-ge v5, v6, :cond_0

    aget-object v2, v0, v5

    .line 236
    .local v2, field:Ljava/lang/reflect/Field;
    const/4 v8, 0x1

    :try_start_0
    invoke-virtual {v2, v8}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 237
    invoke-virtual {v2, p2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 238
    .local v3, fieldVal:Ljava/lang/Object;
    const-class v8, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 239
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v8, "yyyy-MM-dd HH:mm:ss"

    sget-object v9, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    invoke-direct {v7, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 241
    .local v7, sdf:Ljava/text/SimpleDateFormat;
    check-cast v3, Ljava/util/Date;

    .end local v3           #fieldVal:Ljava/lang/Object;
    invoke-virtual {v7, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 243
    .end local v7           #sdf:Ljava/text/SimpleDateFormat;
    :cond_2
    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    .line 244
    invoke-static {p0, v3}, Lcom/baidu/launcher/utils/JsonUtil$Encoder;->serialize(Lorg/json/JSONStringer;Ljava/lang/Object;)Lorg/json/JSONStringer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 234
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 245
    :catch_0
    move-exception v1

    .line 246
    .local v1, e:Ljava/lang/Exception;
    goto :goto_1
.end method

.method private static serializeObject(Lorg/json/JSONStringer;Ljava/lang/Object;)V
    .locals 2
    .parameter "js"
    .parameter "obj"

    .prologue
    .line 207
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    .line 208
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p0, v1, p1}, Lcom/baidu/launcher/utils/JsonUtil$Encoder;->serializeObject(Lorg/json/JSONStringer;Ljava/lang/Class;Ljava/lang/Object;)V

    .line 209
    invoke-virtual {p0}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :goto_0
    return-void

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static serializeRaw(Lorg/json/JSONStringer;Ljava/lang/Object;)V
    .locals 1
    .parameter "js"
    .parameter "obj"

    .prologue
    .line 121
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    return-void

    .line 122
    :catch_0
    move-exception v0

    .line 123
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method
