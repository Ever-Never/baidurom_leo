.class public Lcom/baidu/launcher/thememanager/util/HttpParser;
.super Ljava/lang/Object;
.source "HttpParser.java"


# static fields
.field public static final CHAR_SET:Ljava/lang/String; = "utf-8"

.field public static final TAG:Ljava/lang/String; = "HttpParser"

.field public static final URL_PREFIX:Ljava/lang/String; = "http://os.baidu.com/wp/"

.field private static singleInstance:Lcom/baidu/launcher/thememanager/util/HttpParser;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/baidu/launcher/thememanager/util/HttpParser;
    .locals 2

    .prologue
    .line 36
    const-class v1, Lcom/baidu/launcher/thememanager/util/HttpParser;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/baidu/launcher/thememanager/util/HttpParser;->singleInstance:Lcom/baidu/launcher/thememanager/util/HttpParser;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/baidu/launcher/thememanager/util/HttpParser;

    invoke-direct {v0}, Lcom/baidu/launcher/thememanager/util/HttpParser;-><init>()V

    sput-object v0, Lcom/baidu/launcher/thememanager/util/HttpParser;->singleInstance:Lcom/baidu/launcher/thememanager/util/HttpParser;

    .line 39
    :cond_0
    sget-object v0, Lcom/baidu/launcher/thememanager/util/HttpParser;->singleInstance:Lcom/baidu/launcher/thememanager/util/HttpParser;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 36
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getCategoryList(IIII)Ljava/util/ArrayList;
    .locals 19
    .parameter "pageIndex"
    .parameter "pageSize"
    .parameter "reqWidth"
    .parameter "reqHeight"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/thememanager/model/WalppaperOnlineCategory;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 46
    const/4 v1, 0x0

    .line 48
    .local v1, categoryList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/thememanager/model/WalppaperOnlineCategory;>;"
    const-string v16, "Android"

    invoke-static/range {v16 .. v16}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v3

    .line 49
    .local v3, client:Lorg/apache/http/client/HttpClient;
    const/4 v13, 0x0

    .line 53
    .local v13, request:Lorg/apache/http/client/methods/HttpPost;
    :try_start_0
    new-instance v14, Lorg/apache/http/client/methods/HttpPost;

    const-string v16, "http://os.baidu.com/wp/sort"

    move-object/from16 v0, v16

    invoke-direct {v14, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 55
    .end local v13           #request:Lorg/apache/http/client/methods/HttpPost;
    .local v14, request:Lorg/apache/http/client/methods/HttpPost;
    :try_start_1
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .local v12, postParameters:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v16, Lorg/apache/http/message/BasicNameValuePair;

    const-string v17, "p"

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v16 .. v18}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    new-instance v16, Lorg/apache/http/message/BasicNameValuePair;

    const-string v17, "r"

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v16 .. v18}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    new-instance v16, Lorg/apache/http/message/BasicNameValuePair;

    const-string v17, "w"

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v16 .. v18}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    new-instance v16, Lorg/apache/http/message/BasicNameValuePair;

    const-string v17, "h"

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    invoke-direct/range {v16 .. v18}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    new-instance v5, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v16, "utf-8"

    move-object/from16 v0, v16

    invoke-direct {v5, v12, v0}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 62
    .local v5, formEntity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    invoke-virtual {v14, v5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 64
    invoke-interface {v3, v14}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v15

    .line 66
    .local v15, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v16

    const-string v17, "utf-8"

    invoke-static/range {v16 .. v17}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 68
    .local v9, jsonString:Ljava/lang/String;
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8, v9}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 70
    .local v8, jsonArray:Lorg/json/JSONArray;
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v10

    .line 72
    .local v10, length:I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 74
    .end local v1           #categoryList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/thememanager/model/WalppaperOnlineCategory;>;"
    .local v2, categoryList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/thememanager/model/WalppaperOnlineCategory;>;"
    const/4 v7, 0x0

    .line 75
    .local v7, item:Lcom/baidu/launcher/thememanager/model/WalppaperOnlineCategory;
    const/4 v11, 0x0

    .line 76
    .local v11, obj:Lorg/json/JSONObject;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v10, :cond_0

    .line 77
    :try_start_2
    invoke-virtual {v8, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 78
    new-instance v7, Lcom/baidu/launcher/thememanager/model/WalppaperOnlineCategory;

    .end local v7           #item:Lcom/baidu/launcher/thememanager/model/WalppaperOnlineCategory;
    invoke-direct {v7}, Lcom/baidu/launcher/thememanager/model/WalppaperOnlineCategory;-><init>()V

    .line 79
    .restart local v7       #item:Lcom/baidu/launcher/thememanager/model/WalppaperOnlineCategory;
    const-string v16, "n"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/baidu/launcher/thememanager/model/WalppaperOnlineCategory;->setName(Ljava/lang/String;)V

    .line 80
    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "http://os.baidu.com/wp/"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, "u"

    move-object/from16 v0, v17

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/baidu/launcher/thememanager/model/WalppaperOnlineCategory;->setThumbUrl(Ljava/lang/String;)V

    .line 81
    const-string v16, "t"

    move-object/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    invoke-virtual {v7, v0}, Lcom/baidu/launcher/thememanager/model/WalppaperOnlineCategory;->setCount(I)V

    .line 83
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 76
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 91
    :cond_0
    if-eqz v3, :cond_1

    .line 92
    check-cast v3, Landroid/net/http/AndroidHttpClient;

    .end local v3           #client:Lorg/apache/http/client/HttpClient;
    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 94
    :cond_1
    if-eqz v14, :cond_7

    .line 95
    invoke-virtual {v14}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    move-object v13, v14

    .end local v14           #request:Lorg/apache/http/client/methods/HttpPost;
    .restart local v13       #request:Lorg/apache/http/client/methods/HttpPost;
    move-object v1, v2

    .line 100
    .end local v2           #categoryList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/thememanager/model/WalppaperOnlineCategory;>;"
    .end local v5           #formEntity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .end local v6           #i:I
    .end local v7           #item:Lcom/baidu/launcher/thememanager/model/WalppaperOnlineCategory;
    .end local v8           #jsonArray:Lorg/json/JSONArray;
    .end local v9           #jsonString:Ljava/lang/String;
    .end local v10           #length:I
    .end local v11           #obj:Lorg/json/JSONObject;
    .end local v12           #postParameters:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v15           #response:Lorg/apache/http/HttpResponse;
    .restart local v1       #categoryList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/thememanager/model/WalppaperOnlineCategory;>;"
    :cond_2
    :goto_1
    return-object v1

    .line 86
    .restart local v3       #client:Lorg/apache/http/client/HttpClient;
    :catch_0
    move-exception v4

    .line 87
    .local v4, e:Lorg/apache/http/client/ClientProtocolException;
    :goto_2
    :try_start_3
    invoke-virtual {v4}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 91
    if-eqz v3, :cond_3

    .line 92
    check-cast v3, Landroid/net/http/AndroidHttpClient;

    .end local v3           #client:Lorg/apache/http/client/HttpClient;
    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 94
    :cond_3
    if-eqz v13, :cond_2

    .line 95
    invoke-virtual {v13}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    goto :goto_1

    .line 88
    .end local v4           #e:Lorg/apache/http/client/ClientProtocolException;
    .restart local v3       #client:Lorg/apache/http/client/HttpClient;
    :catch_1
    move-exception v4

    .line 89
    .local v4, e:Ljava/lang/Exception;
    :goto_3
    :try_start_4
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 91
    if-eqz v3, :cond_4

    .line 92
    check-cast v3, Landroid/net/http/AndroidHttpClient;

    .end local v3           #client:Lorg/apache/http/client/HttpClient;
    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 94
    :cond_4
    if-eqz v13, :cond_2

    .line 95
    invoke-virtual {v13}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    goto :goto_1

    .line 91
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v3       #client:Lorg/apache/http/client/HttpClient;
    :catchall_0
    move-exception v16

    :goto_4
    if-eqz v3, :cond_5

    .line 92
    check-cast v3, Landroid/net/http/AndroidHttpClient;

    .end local v3           #client:Lorg/apache/http/client/HttpClient;
    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 94
    :cond_5
    if-eqz v13, :cond_6

    .line 95
    invoke-virtual {v13}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    :cond_6
    throw v16

    .line 91
    .end local v13           #request:Lorg/apache/http/client/methods/HttpPost;
    .restart local v3       #client:Lorg/apache/http/client/HttpClient;
    .restart local v14       #request:Lorg/apache/http/client/methods/HttpPost;
    :catchall_1
    move-exception v16

    move-object v13, v14

    .end local v14           #request:Lorg/apache/http/client/methods/HttpPost;
    .restart local v13       #request:Lorg/apache/http/client/methods/HttpPost;
    goto :goto_4

    .end local v1           #categoryList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/thememanager/model/WalppaperOnlineCategory;>;"
    .end local v13           #request:Lorg/apache/http/client/methods/HttpPost;
    .restart local v2       #categoryList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/thememanager/model/WalppaperOnlineCategory;>;"
    .restart local v5       #formEntity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .restart local v6       #i:I
    .restart local v8       #jsonArray:Lorg/json/JSONArray;
    .restart local v9       #jsonString:Ljava/lang/String;
    .restart local v10       #length:I
    .restart local v11       #obj:Lorg/json/JSONObject;
    .restart local v12       #postParameters:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v14       #request:Lorg/apache/http/client/methods/HttpPost;
    .restart local v15       #response:Lorg/apache/http/HttpResponse;
    :catchall_2
    move-exception v16

    move-object v13, v14

    .end local v14           #request:Lorg/apache/http/client/methods/HttpPost;
    .restart local v13       #request:Lorg/apache/http/client/methods/HttpPost;
    move-object v1, v2

    .end local v2           #categoryList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/thememanager/model/WalppaperOnlineCategory;>;"
    .restart local v1       #categoryList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/thememanager/model/WalppaperOnlineCategory;>;"
    goto :goto_4

    .line 88
    .end local v5           #formEntity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .end local v6           #i:I
    .end local v8           #jsonArray:Lorg/json/JSONArray;
    .end local v9           #jsonString:Ljava/lang/String;
    .end local v10           #length:I
    .end local v11           #obj:Lorg/json/JSONObject;
    .end local v12           #postParameters:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v13           #request:Lorg/apache/http/client/methods/HttpPost;
    .end local v15           #response:Lorg/apache/http/HttpResponse;
    .restart local v14       #request:Lorg/apache/http/client/methods/HttpPost;
    :catch_2
    move-exception v4

    move-object v13, v14

    .end local v14           #request:Lorg/apache/http/client/methods/HttpPost;
    .restart local v13       #request:Lorg/apache/http/client/methods/HttpPost;
    goto :goto_3

    .end local v1           #categoryList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/thememanager/model/WalppaperOnlineCategory;>;"
    .end local v13           #request:Lorg/apache/http/client/methods/HttpPost;
    .restart local v2       #categoryList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/thememanager/model/WalppaperOnlineCategory;>;"
    .restart local v5       #formEntity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .restart local v6       #i:I
    .restart local v8       #jsonArray:Lorg/json/JSONArray;
    .restart local v9       #jsonString:Ljava/lang/String;
    .restart local v10       #length:I
    .restart local v11       #obj:Lorg/json/JSONObject;
    .restart local v12       #postParameters:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v14       #request:Lorg/apache/http/client/methods/HttpPost;
    .restart local v15       #response:Lorg/apache/http/HttpResponse;
    :catch_3
    move-exception v4

    move-object v13, v14

    .end local v14           #request:Lorg/apache/http/client/methods/HttpPost;
    .restart local v13       #request:Lorg/apache/http/client/methods/HttpPost;
    move-object v1, v2

    .end local v2           #categoryList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/thememanager/model/WalppaperOnlineCategory;>;"
    .restart local v1       #categoryList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/thememanager/model/WalppaperOnlineCategory;>;"
    goto :goto_3

    .line 86
    .end local v5           #formEntity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .end local v6           #i:I
    .end local v8           #jsonArray:Lorg/json/JSONArray;
    .end local v9           #jsonString:Ljava/lang/String;
    .end local v10           #length:I
    .end local v11           #obj:Lorg/json/JSONObject;
    .end local v12           #postParameters:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v13           #request:Lorg/apache/http/client/methods/HttpPost;
    .end local v15           #response:Lorg/apache/http/HttpResponse;
    .restart local v14       #request:Lorg/apache/http/client/methods/HttpPost;
    :catch_4
    move-exception v4

    move-object v13, v14

    .end local v14           #request:Lorg/apache/http/client/methods/HttpPost;
    .restart local v13       #request:Lorg/apache/http/client/methods/HttpPost;
    goto :goto_2

    .end local v1           #categoryList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/thememanager/model/WalppaperOnlineCategory;>;"
    .end local v13           #request:Lorg/apache/http/client/methods/HttpPost;
    .restart local v2       #categoryList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/thememanager/model/WalppaperOnlineCategory;>;"
    .restart local v5       #formEntity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .restart local v6       #i:I
    .restart local v8       #jsonArray:Lorg/json/JSONArray;
    .restart local v9       #jsonString:Ljava/lang/String;
    .restart local v10       #length:I
    .restart local v11       #obj:Lorg/json/JSONObject;
    .restart local v12       #postParameters:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v14       #request:Lorg/apache/http/client/methods/HttpPost;
    .restart local v15       #response:Lorg/apache/http/HttpResponse;
    :catch_5
    move-exception v4

    move-object v13, v14

    .end local v14           #request:Lorg/apache/http/client/methods/HttpPost;
    .restart local v13       #request:Lorg/apache/http/client/methods/HttpPost;
    move-object v1, v2

    .end local v2           #categoryList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/thememanager/model/WalppaperOnlineCategory;>;"
    .restart local v1       #categoryList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/thememanager/model/WalppaperOnlineCategory;>;"
    goto :goto_2

    .end local v1           #categoryList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/thememanager/model/WalppaperOnlineCategory;>;"
    .end local v3           #client:Lorg/apache/http/client/HttpClient;
    .end local v13           #request:Lorg/apache/http/client/methods/HttpPost;
    .restart local v2       #categoryList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/thememanager/model/WalppaperOnlineCategory;>;"
    .restart local v7       #item:Lcom/baidu/launcher/thememanager/model/WalppaperOnlineCategory;
    .restart local v14       #request:Lorg/apache/http/client/methods/HttpPost;
    :cond_7
    move-object v13, v14

    .end local v14           #request:Lorg/apache/http/client/methods/HttpPost;
    .restart local v13       #request:Lorg/apache/http/client/methods/HttpPost;
    move-object v1, v2

    .end local v2           #categoryList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/thememanager/model/WalppaperOnlineCategory;>;"
    .restart local v1       #categoryList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/thememanager/model/WalppaperOnlineCategory;>;"
    goto :goto_1
.end method

.method public getWallpaperList(Ljava/lang/String;IIII)Ljava/util/ArrayList;
    .locals 21
    .parameter "categoryName"
    .parameter "pageIndex"
    .parameter "pageSize"
    .parameter "reqWidth"
    .parameter "reqHeight"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "IIII)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/json/JSONException;,
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 106
    const/16 v16, 0x0

    .line 108
    .local v16, wallpaperList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;>;"
    const-string v18, "Android"

    invoke-static/range {v18 .. v18}, Landroid/net/http/AndroidHttpClient;->newInstance(Ljava/lang/String;)Landroid/net/http/AndroidHttpClient;

    move-result-object v3

    .line 109
    .local v3, client:Lorg/apache/http/client/HttpClient;
    const/4 v13, 0x0

    .line 113
    .local v13, request:Lorg/apache/http/client/methods/HttpPost;
    :try_start_0
    new-instance v14, Lorg/apache/http/client/methods/HttpPost;

    const-string v18, "http://os.baidu.com/wp/bw"

    move-object/from16 v0, v18

    invoke-direct {v14, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 115
    .end local v13           #request:Lorg/apache/http/client/methods/HttpPost;
    .local v14, request:Lorg/apache/http/client/methods/HttpPost;
    :try_start_1
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 116
    .local v12, postParameters:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    new-instance v18, Lorg/apache/http/message/BasicNameValuePair;

    const-string v19, "sn"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p1

    invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    new-instance v18, Lorg/apache/http/message/BasicNameValuePair;

    const-string v19, "p"

    invoke-static/range {p2 .. p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance v18, Lorg/apache/http/message/BasicNameValuePair;

    const-string v19, "r"

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    new-instance v18, Lorg/apache/http/message/BasicNameValuePair;

    const-string v19, "w"

    invoke-static/range {p4 .. p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    new-instance v18, Lorg/apache/http/message/BasicNameValuePair;

    const-string v19, "h"

    invoke-static/range {p5 .. p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v18 .. v20}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v0, v18

    invoke-interface {v12, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    new-instance v5, Lorg/apache/http/client/entity/UrlEncodedFormEntity;

    const-string v18, "utf-8"

    move-object/from16 v0, v18

    invoke-direct {v5, v12, v0}, Lorg/apache/http/client/entity/UrlEncodedFormEntity;-><init>(Ljava/util/List;Ljava/lang/String;)V

    .line 123
    .local v5, formEntity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    invoke-virtual {v14, v5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .line 125
    invoke-interface {v3, v14}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v15

    .line 127
    .local v15, response:Lorg/apache/http/HttpResponse;
    invoke-interface {v15}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v18

    const-string v19, "utf-8"

    invoke-static/range {v18 .. v19}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 130
    .local v9, jsonString:Ljava/lang/String;
    new-instance v8, Lorg/json/JSONArray;

    invoke-direct {v8, v9}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 132
    .local v8, jsonArray:Lorg/json/JSONArray;
    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v10

    .line 134
    .local v10, length:I
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 136
    .end local v16           #wallpaperList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;>;"
    .local v17, wallpaperList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;>;"
    const/4 v7, 0x0

    .line 137
    .local v7, item:Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;
    const/4 v11, 0x0

    .line 138
    .local v11, obj:Lorg/json/JSONObject;
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    if-ge v6, v10, :cond_0

    .line 139
    :try_start_2
    invoke-virtual {v8, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 140
    new-instance v7, Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;

    .end local v7           #item:Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;
    invoke-direct {v7}, Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;-><init>()V

    .line 141
    .restart local v7       #item:Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;
    move-object/from16 v0, p1

    invoke-virtual {v7, v0}, Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;->setmCategoryName(Ljava/lang/String;)V

    .line 142
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "http://os.baidu.com/wp/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "u"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;->setThumbUrl(Ljava/lang/String;)V

    .line 143
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "http://os.baidu.com/wp/"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v19, "ul"

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;->setOriginalUrl(Ljava/lang/String;)V

    .line 144
    const-string v18, "size"

    move-object/from16 v0, v18

    invoke-virtual {v11, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;->setmSize(Ljava/lang/Integer;)V

    .line 146
    move-object/from16 v0, v17

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_8
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    .line 138
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 157
    :cond_0
    if-eqz v3, :cond_1

    .line 158
    check-cast v3, Landroid/net/http/AndroidHttpClient;

    .end local v3           #client:Lorg/apache/http/client/HttpClient;
    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 160
    :cond_1
    if-eqz v14, :cond_8

    .line 161
    invoke-virtual {v14}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    move-object v13, v14

    .end local v14           #request:Lorg/apache/http/client/methods/HttpPost;
    .restart local v13       #request:Lorg/apache/http/client/methods/HttpPost;
    move-object/from16 v16, v17

    .line 164
    .end local v5           #formEntity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .end local v6           #i:I
    .end local v7           #item:Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;
    .end local v8           #jsonArray:Lorg/json/JSONArray;
    .end local v9           #jsonString:Ljava/lang/String;
    .end local v10           #length:I
    .end local v11           #obj:Lorg/json/JSONObject;
    .end local v12           #postParameters:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v15           #response:Lorg/apache/http/HttpResponse;
    .end local v17           #wallpaperList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;>;"
    .restart local v16       #wallpaperList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;>;"
    :cond_2
    :goto_1
    return-object v16

    .line 149
    .restart local v3       #client:Lorg/apache/http/client/HttpClient;
    :catch_0
    move-exception v4

    .line 150
    .local v4, e:Ljava/lang/NumberFormatException;
    :goto_2
    const/16 v16, 0x0

    .line 151
    :try_start_3
    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 157
    if-eqz v3, :cond_3

    .line 158
    check-cast v3, Landroid/net/http/AndroidHttpClient;

    .end local v3           #client:Lorg/apache/http/client/HttpClient;
    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 160
    :cond_3
    if-eqz v13, :cond_2

    .line 161
    invoke-virtual {v13}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    goto :goto_1

    .line 152
    .end local v4           #e:Ljava/lang/NumberFormatException;
    .restart local v3       #client:Lorg/apache/http/client/HttpClient;
    :catch_1
    move-exception v4

    .line 153
    .local v4, e:Lorg/apache/http/client/ClientProtocolException;
    :goto_3
    :try_start_4
    invoke-virtual {v4}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 157
    if-eqz v3, :cond_4

    .line 158
    check-cast v3, Landroid/net/http/AndroidHttpClient;

    .end local v3           #client:Lorg/apache/http/client/HttpClient;
    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 160
    :cond_4
    if-eqz v13, :cond_2

    .line 161
    invoke-virtual {v13}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    goto :goto_1

    .line 154
    .end local v4           #e:Lorg/apache/http/client/ClientProtocolException;
    .restart local v3       #client:Lorg/apache/http/client/HttpClient;
    :catch_2
    move-exception v4

    .line 155
    .local v4, e:Ljava/lang/Exception;
    :goto_4
    :try_start_5
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 157
    if-eqz v3, :cond_5

    .line 158
    check-cast v3, Landroid/net/http/AndroidHttpClient;

    .end local v3           #client:Lorg/apache/http/client/HttpClient;
    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 160
    :cond_5
    if-eqz v13, :cond_2

    .line 161
    invoke-virtual {v13}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    goto :goto_1

    .line 157
    .end local v4           #e:Ljava/lang/Exception;
    .restart local v3       #client:Lorg/apache/http/client/HttpClient;
    :catchall_0
    move-exception v18

    :goto_5
    if-eqz v3, :cond_6

    .line 158
    check-cast v3, Landroid/net/http/AndroidHttpClient;

    .end local v3           #client:Lorg/apache/http/client/HttpClient;
    invoke-virtual {v3}, Landroid/net/http/AndroidHttpClient;->close()V

    .line 160
    :cond_6
    if-eqz v13, :cond_7

    .line 161
    invoke-virtual {v13}, Lorg/apache/http/client/methods/HttpPost;->abort()V

    :cond_7
    throw v18

    .line 157
    .end local v13           #request:Lorg/apache/http/client/methods/HttpPost;
    .restart local v3       #client:Lorg/apache/http/client/HttpClient;
    .restart local v14       #request:Lorg/apache/http/client/methods/HttpPost;
    :catchall_1
    move-exception v18

    move-object v13, v14

    .end local v14           #request:Lorg/apache/http/client/methods/HttpPost;
    .restart local v13       #request:Lorg/apache/http/client/methods/HttpPost;
    goto :goto_5

    .end local v13           #request:Lorg/apache/http/client/methods/HttpPost;
    .end local v16           #wallpaperList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;>;"
    .restart local v5       #formEntity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .restart local v6       #i:I
    .restart local v8       #jsonArray:Lorg/json/JSONArray;
    .restart local v9       #jsonString:Ljava/lang/String;
    .restart local v10       #length:I
    .restart local v11       #obj:Lorg/json/JSONObject;
    .restart local v12       #postParameters:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v14       #request:Lorg/apache/http/client/methods/HttpPost;
    .restart local v15       #response:Lorg/apache/http/HttpResponse;
    .restart local v17       #wallpaperList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;>;"
    :catchall_2
    move-exception v18

    move-object v13, v14

    .end local v14           #request:Lorg/apache/http/client/methods/HttpPost;
    .restart local v13       #request:Lorg/apache/http/client/methods/HttpPost;
    move-object/from16 v16, v17

    .end local v17           #wallpaperList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;>;"
    .restart local v16       #wallpaperList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;>;"
    goto :goto_5

    .line 154
    .end local v5           #formEntity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .end local v6           #i:I
    .end local v8           #jsonArray:Lorg/json/JSONArray;
    .end local v9           #jsonString:Ljava/lang/String;
    .end local v10           #length:I
    .end local v11           #obj:Lorg/json/JSONObject;
    .end local v12           #postParameters:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v13           #request:Lorg/apache/http/client/methods/HttpPost;
    .end local v15           #response:Lorg/apache/http/HttpResponse;
    .restart local v14       #request:Lorg/apache/http/client/methods/HttpPost;
    :catch_3
    move-exception v4

    move-object v13, v14

    .end local v14           #request:Lorg/apache/http/client/methods/HttpPost;
    .restart local v13       #request:Lorg/apache/http/client/methods/HttpPost;
    goto :goto_4

    .end local v13           #request:Lorg/apache/http/client/methods/HttpPost;
    .end local v16           #wallpaperList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;>;"
    .restart local v5       #formEntity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .restart local v6       #i:I
    .restart local v8       #jsonArray:Lorg/json/JSONArray;
    .restart local v9       #jsonString:Ljava/lang/String;
    .restart local v10       #length:I
    .restart local v11       #obj:Lorg/json/JSONObject;
    .restart local v12       #postParameters:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v14       #request:Lorg/apache/http/client/methods/HttpPost;
    .restart local v15       #response:Lorg/apache/http/HttpResponse;
    .restart local v17       #wallpaperList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;>;"
    :catch_4
    move-exception v4

    move-object v13, v14

    .end local v14           #request:Lorg/apache/http/client/methods/HttpPost;
    .restart local v13       #request:Lorg/apache/http/client/methods/HttpPost;
    move-object/from16 v16, v17

    .end local v17           #wallpaperList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;>;"
    .restart local v16       #wallpaperList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;>;"
    goto :goto_4

    .line 152
    .end local v5           #formEntity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .end local v6           #i:I
    .end local v8           #jsonArray:Lorg/json/JSONArray;
    .end local v9           #jsonString:Ljava/lang/String;
    .end local v10           #length:I
    .end local v11           #obj:Lorg/json/JSONObject;
    .end local v12           #postParameters:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v13           #request:Lorg/apache/http/client/methods/HttpPost;
    .end local v15           #response:Lorg/apache/http/HttpResponse;
    .restart local v14       #request:Lorg/apache/http/client/methods/HttpPost;
    :catch_5
    move-exception v4

    move-object v13, v14

    .end local v14           #request:Lorg/apache/http/client/methods/HttpPost;
    .restart local v13       #request:Lorg/apache/http/client/methods/HttpPost;
    goto :goto_3

    .end local v13           #request:Lorg/apache/http/client/methods/HttpPost;
    .end local v16           #wallpaperList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;>;"
    .restart local v5       #formEntity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .restart local v6       #i:I
    .restart local v8       #jsonArray:Lorg/json/JSONArray;
    .restart local v9       #jsonString:Ljava/lang/String;
    .restart local v10       #length:I
    .restart local v11       #obj:Lorg/json/JSONObject;
    .restart local v12       #postParameters:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v14       #request:Lorg/apache/http/client/methods/HttpPost;
    .restart local v15       #response:Lorg/apache/http/HttpResponse;
    .restart local v17       #wallpaperList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;>;"
    :catch_6
    move-exception v4

    move-object v13, v14

    .end local v14           #request:Lorg/apache/http/client/methods/HttpPost;
    .restart local v13       #request:Lorg/apache/http/client/methods/HttpPost;
    move-object/from16 v16, v17

    .end local v17           #wallpaperList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;>;"
    .restart local v16       #wallpaperList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;>;"
    goto :goto_3

    .line 149
    .end local v5           #formEntity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .end local v6           #i:I
    .end local v8           #jsonArray:Lorg/json/JSONArray;
    .end local v9           #jsonString:Ljava/lang/String;
    .end local v10           #length:I
    .end local v11           #obj:Lorg/json/JSONObject;
    .end local v12           #postParameters:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .end local v13           #request:Lorg/apache/http/client/methods/HttpPost;
    .end local v15           #response:Lorg/apache/http/HttpResponse;
    .restart local v14       #request:Lorg/apache/http/client/methods/HttpPost;
    :catch_7
    move-exception v4

    move-object v13, v14

    .end local v14           #request:Lorg/apache/http/client/methods/HttpPost;
    .restart local v13       #request:Lorg/apache/http/client/methods/HttpPost;
    goto :goto_2

    .end local v13           #request:Lorg/apache/http/client/methods/HttpPost;
    .end local v16           #wallpaperList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;>;"
    .restart local v5       #formEntity:Lorg/apache/http/client/entity/UrlEncodedFormEntity;
    .restart local v6       #i:I
    .restart local v8       #jsonArray:Lorg/json/JSONArray;
    .restart local v9       #jsonString:Ljava/lang/String;
    .restart local v10       #length:I
    .restart local v11       #obj:Lorg/json/JSONObject;
    .restart local v12       #postParameters:Ljava/util/List;,"Ljava/util/List<Lorg/apache/http/NameValuePair;>;"
    .restart local v14       #request:Lorg/apache/http/client/methods/HttpPost;
    .restart local v15       #response:Lorg/apache/http/HttpResponse;
    .restart local v17       #wallpaperList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;>;"
    :catch_8
    move-exception v4

    move-object v13, v14

    .end local v14           #request:Lorg/apache/http/client/methods/HttpPost;
    .restart local v13       #request:Lorg/apache/http/client/methods/HttpPost;
    move-object/from16 v16, v17

    .end local v17           #wallpaperList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;>;"
    .restart local v16       #wallpaperList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;>;"
    goto :goto_2

    .end local v3           #client:Lorg/apache/http/client/HttpClient;
    .end local v13           #request:Lorg/apache/http/client/methods/HttpPost;
    .end local v16           #wallpaperList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;>;"
    .restart local v7       #item:Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;
    .restart local v14       #request:Lorg/apache/http/client/methods/HttpPost;
    .restart local v17       #wallpaperList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;>;"
    :cond_8
    move-object v13, v14

    .end local v14           #request:Lorg/apache/http/client/methods/HttpPost;
    .restart local v13       #request:Lorg/apache/http/client/methods/HttpPost;
    move-object/from16 v16, v17

    .end local v17           #wallpaperList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;>;"
    .restart local v16       #wallpaperList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;>;"
    goto :goto_1
.end method
