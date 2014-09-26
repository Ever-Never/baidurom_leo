.class public Lcom/inveno/newpiflow/tools/AdUtil;
.super Ljava/lang/Object;
.source "AdUtil.java"


# static fields
.field public static final ACTION:Ljava/lang/String; = "action"

.field private static final BYCURL:Ljava/lang/String; = "baiyechuangurl"

.field public static final CLSNAME:Ljava/lang/String; = "clsname"

.field public static final PKGNAME:Ljava/lang/String; = "pkgname"

.field public static final PREF:Ljava/lang/String; = "com.inveno.flow.ad"

.field public static final PREF_COUNT:Ljava/lang/String; = "com.inveno.flow.ad.count"

.field public static final PREF_DOWNLOADID:Ljava/lang/String; = "com.inveno.flow.ad.iqiyi.downloadid"

.field public static final PREF_URL:Ljava/lang/String; = "com.inveno.flow.ad.url"

.field private static final PREF_USED:Ljava/lang/String; = "com.inveno.flow.ad.used"

.field public static final SCHEMA:Ljava/lang/String; = "schema"

.field public static final TYPE_ACTIVITY:Ljava/lang/String; = "activity"

.field public static final TYPE_RECEIVER:Ljava/lang/String; = "receiver"

.field public static final TYPE_SERVICE:Ljava/lang/String; = "service"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearDownloadID(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 100
    const-string v1, "com.inveno.flow.ad"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 101
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "com.inveno.flow.ad.iqiyi.downloadid"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 102
    return-void
.end method

.method public static getBycUrlFromJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "content"

    .prologue
    .line 64
    const/4 v2, 0x0

    .line 66
    .local v2, rst:Ljava/lang/String;
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 67
    .local v1, obj:Lorg/json/JSONObject;
    const-string v3, "baiyechuangurl"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 72
    .end local v1           #obj:Lorg/json/JSONObject;
    :goto_0
    return-object v2

    .line 68
    :catch_0
    move-exception v0

    .line 70
    .local v0, e:Lorg/json/JSONException;
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getContent(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .parameter "path"

    .prologue
    .line 113
    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    .line 114
    .local v6, sb:Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .line 115
    .local v0, br:Ljava/io/BufferedReader;
    const/4 v4, 0x0

    .line 117
    .local v4, fr:Ljava/io/FileReader;
    :try_start_0
    new-instance v5, Ljava/io/FileReader;

    invoke-direct {v5, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2

    .line 118
    .end local v4           #fr:Ljava/io/FileReader;
    .local v5, fr:Ljava/io/FileReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_c
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_a

    .line 119
    .end local v0           #br:Ljava/io/BufferedReader;
    .local v1, br:Ljava/io/BufferedReader;
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .line 120
    .local v2, data:Ljava/lang/String;
    :goto_0
    if-eqz v2, :cond_0

    .line 121
    invoke-virtual {v6, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 122
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_b

    move-result-object v2

    goto :goto_0

    .line 131
    :cond_0
    if-eqz v1, :cond_1

    .line 133
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_8

    .line 139
    :cond_1
    :goto_1
    if-eqz v5, :cond_2

    .line 141
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_9

    :cond_2
    :goto_2
    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    move-object v0, v1

    .line 148
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v2           #data:Ljava/lang/String;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :cond_3
    :goto_3
    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    .line 124
    :catch_0
    move-exception v3

    .line 126
    .local v3, e:Ljava/io/FileNotFoundException;
    :goto_4
    :try_start_5
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 131
    if-eqz v0, :cond_4

    .line 133
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 139
    .end local v3           #e:Ljava/io/FileNotFoundException;
    :cond_4
    :goto_5
    if-eqz v4, :cond_3

    .line 141
    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_1

    goto :goto_3

    .line 142
    :catch_1
    move-exception v3

    .line 144
    .local v3, e:Ljava/io/IOException;
    :goto_6
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 127
    .end local v3           #e:Ljava/io/IOException;
    :catch_2
    move-exception v3

    .line 129
    .restart local v3       #e:Ljava/io/IOException;
    :goto_7
    :try_start_8
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 131
    if-eqz v0, :cond_5

    .line 133
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    .line 139
    :cond_5
    :goto_8
    if-eqz v4, :cond_3

    .line 141
    :try_start_a
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_3

    goto :goto_3

    .line 142
    :catch_3
    move-exception v3

    goto :goto_6

    .line 131
    .end local v3           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v7

    :goto_9
    if-eqz v0, :cond_6

    .line 133
    :try_start_b
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_4

    .line 139
    :cond_6
    :goto_a
    if-eqz v4, :cond_7

    .line 141
    :try_start_c
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_5

    .line 131
    :cond_7
    :goto_b
    throw v7

    .line 134
    :catch_4
    move-exception v3

    .line 136
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 142
    .end local v3           #e:Ljava/io/IOException;
    :catch_5
    move-exception v3

    .line 144
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_b

    .line 134
    .local v3, e:Ljava/io/FileNotFoundException;
    :catch_6
    move-exception v3

    .line 136
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    .line 134
    :catch_7
    move-exception v3

    .line 136
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 134
    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v3           #e:Ljava/io/IOException;
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v2       #data:Ljava/lang/String;
    .restart local v5       #fr:Ljava/io/FileReader;
    :catch_8
    move-exception v3

    .line 136
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 142
    .end local v3           #e:Ljava/io/IOException;
    :catch_9
    move-exception v3

    .line 144
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 131
    .end local v1           #br:Ljava/io/BufferedReader;
    .end local v2           #data:Ljava/lang/String;
    .end local v3           #e:Ljava/io/IOException;
    .restart local v0       #br:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v7

    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    goto :goto_9

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    :catchall_2
    move-exception v7

    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_9

    .line 127
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    :catch_a
    move-exception v3

    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    goto :goto_7

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    :catch_b
    move-exception v3

    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_7

    .line 124
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    :catch_c
    move-exception v3

    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    goto :goto_4

    .end local v0           #br:Ljava/io/BufferedReader;
    .end local v4           #fr:Ljava/io/FileReader;
    .restart local v1       #br:Ljava/io/BufferedReader;
    .restart local v5       #fr:Ljava/io/FileReader;
    :catch_d
    move-exception v3

    move-object v4, v5

    .end local v5           #fr:Ljava/io/FileReader;
    .restart local v4       #fr:Ljava/io/FileReader;
    move-object v0, v1

    .end local v1           #br:Ljava/io/BufferedReader;
    .restart local v0       #br:Ljava/io/BufferedReader;
    goto :goto_4
.end method

.method public static getCount(Landroid/content/Context;)I
    .locals 3
    .parameter "context"

    .prologue
    .line 79
    const-string v1, "com.inveno.flow.ad"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 80
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "com.inveno.flow.ad.count"

    const/4 v2, -0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method private static getDownloadID(Landroid/content/Context;)J
    .locals 4
    .parameter "context"

    .prologue
    .line 96
    const-string v1, "com.inveno.flow.ad"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 97
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "com.inveno.flow.ad.iqiyi.downloadid"

    const-wide/16 v2, -0x1

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    return-wide v1
.end method

.method public static getDownloadPath(Landroid/content/Context;)Ljava/lang/String;
    .locals 9
    .parameter "context"

    .prologue
    .line 177
    invoke-static {p0}, Lcom/inveno/newpiflow/tools/AdUtil;->getDownloadID(Landroid/content/Context;)J

    move-result-wide v2

    .line 178
    .local v2, id:J
    const/4 v4, 0x0

    .line 179
    .local v4, path:Ljava/lang/String;
    const-string v7, "download"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/DownloadManager;

    .line 180
    .local v1, dm:Landroid/app/DownloadManager;
    new-instance v5, Landroid/app/DownloadManager$Query;

    invoke-direct {v5}, Landroid/app/DownloadManager$Query;-><init>()V

    .line 181
    .local v5, query:Landroid/app/DownloadManager$Query;
    const/4 v7, 0x1

    new-array v7, v7, [J

    const/4 v8, 0x0

    aput-wide v2, v7, v8

    invoke-virtual {v5, v7}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 182
    const/4 v0, 0x0

    .line 184
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {v1, v5}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 185
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 186
    const-string v7, "status"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    .line 187
    .local v6, status:I
    const/16 v7, 0x8

    if-ne v6, v7, :cond_0

    .line 188
    const-string v7, "local_filename"

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v4

    .line 193
    .end local v6           #status:I
    :cond_0
    if-eqz v0, :cond_1

    .line 194
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 197
    :cond_1
    return-object v4

    .line 193
    :catchall_0
    move-exception v7

    if-eqz v0, :cond_2

    .line 194
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 193
    :cond_2
    throw v7
.end method

.method private static getDownloadStatus(Landroid/content/Context;J)I
    .locals 6
    .parameter "context"
    .parameter "id"

    .prologue
    .line 158
    const/4 v3, -0x1

    .line 159
    .local v3, status:I
    const-string v4, "download"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/DownloadManager;

    .line 160
    .local v1, dm:Landroid/app/DownloadManager;
    new-instance v2, Landroid/app/DownloadManager$Query;

    invoke-direct {v2}, Landroid/app/DownloadManager$Query;-><init>()V

    .line 161
    .local v2, query:Landroid/app/DownloadManager$Query;
    const/4 v4, 0x1

    new-array v4, v4, [J

    const/4 v5, 0x0

    aput-wide p1, v4, v5

    invoke-virtual {v2, v4}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    .line 162
    const/4 v0, 0x0

    .line 164
    .local v0, c:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {v1, v2}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v0

    .line 165
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 166
    const-string v4, "status"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    .line 170
    :cond_0
    if-eqz v0, :cond_1

    .line 171
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 174
    :cond_1
    return v3

    .line 170
    :catchall_0
    move-exception v4

    if-eqz v0, :cond_2

    .line 171
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 170
    :cond_2
    throw v4
.end method

.method public static getUrl(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .parameter "context"

    .prologue
    .line 88
    const-string v1, "com.inveno.flow.ad"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 89
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "com.inveno.flow.ad.url"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static initBizData(Landroid/content/Context;Ljava/lang/String;I)Lcom/inveno/newpiflow/model/BizShowFlowNew;
    .locals 6
    .parameter "context"
    .parameter "content"
    .parameter "type"

    .prologue
    .line 49
    const/4 v2, 0x0

    .line 51
    .local v2, mBizNews:Lcom/inveno/newpiflow/model/BizShowFlowNew;
    :try_start_0
    invoke-static {p0, p1}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;->parse(Landroid/content/Context;Ljava/lang/String;)Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;

    move-result-object v1

    .line 52
    .local v1, flowNewinfosBiz:Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;
    new-instance v3, Lcom/inveno/newpiflow/model/BizShowFlowNew;

    invoke-direct {v3}, Lcom/inveno/newpiflow/model/BizShowFlowNew;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/inveno/newpiflow/download/NoUpdateException; {:try_start_0 .. :try_end_0} :catch_1

    .line 53
    .end local v2           #mBizNews:Lcom/inveno/newpiflow/model/BizShowFlowNew;
    .local v3, mBizNews:Lcom/inveno/newpiflow/model/BizShowFlowNew;
    :try_start_1
    invoke-virtual {v3, p0, p1, v1, p2}, Lcom/inveno/newpiflow/model/BizShowFlowNew;->initData(Landroid/content/Context;Ljava/lang/String;Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;I)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lcom/inveno/newpiflow/download/NoUpdateException; {:try_start_1 .. :try_end_1} :catch_2

    move-object v2, v3

    .line 61
    .end local v1           #flowNewinfosBiz:Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;
    .end local v3           #mBizNews:Lcom/inveno/newpiflow/model/BizShowFlowNew;
    .restart local v2       #mBizNews:Lcom/inveno/newpiflow/model/BizShowFlowNew;
    :goto_0
    return-object v2

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, e:Lorg/json/JSONException;
    :goto_1
    const-string v4, "lswlsw"

    const-string v5, "error occur when parse json"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_0

    .line 57
    .end local v0           #e:Lorg/json/JSONException;
    :catch_1
    move-exception v0

    .line 58
    .local v0, e:Lcom/inveno/newpiflow/download/NoUpdateException;
    :goto_2
    const-string v4, "lswlsw"

    const-string v5, "error occur when parse json"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    invoke-virtual {v0}, Lcom/inveno/newpiflow/download/NoUpdateException;->printStackTrace()V

    goto :goto_0

    .line 57
    .end local v0           #e:Lcom/inveno/newpiflow/download/NoUpdateException;
    .end local v2           #mBizNews:Lcom/inveno/newpiflow/model/BizShowFlowNew;
    .restart local v1       #flowNewinfosBiz:Lcom/inveno/flow/entity/model/showflow/ShowFlowNews;
    .restart local v3       #mBizNews:Lcom/inveno/newpiflow/model/BizShowFlowNew;
    :catch_2
    move-exception v0

    move-object v2, v3

    .end local v3           #mBizNews:Lcom/inveno/newpiflow/model/BizShowFlowNew;
    .restart local v2       #mBizNews:Lcom/inveno/newpiflow/model/BizShowFlowNew;
    goto :goto_2

    .line 54
    .end local v2           #mBizNews:Lcom/inveno/newpiflow/model/BizShowFlowNew;
    .restart local v3       #mBizNews:Lcom/inveno/newpiflow/model/BizShowFlowNew;
    :catch_3
    move-exception v0

    move-object v2, v3

    .end local v3           #mBizNews:Lcom/inveno/newpiflow/model/BizShowFlowNew;
    .restart local v2       #mBizNews:Lcom/inveno/newpiflow/model/BizShowFlowNew;
    goto :goto_1
.end method

.method public static isDownloading(Landroid/content/Context;)Z
    .locals 6
    .parameter "context"

    .prologue
    const/4 v4, 0x1

    .line 104
    const/4 v2, 0x0

    .line 105
    .local v2, rst:Z
    invoke-static {p0}, Lcom/inveno/newpiflow/tools/AdUtil;->getDownloadID(Landroid/content/Context;)J

    move-result-wide v0

    .line 106
    .local v0, id:J
    invoke-static {p0, v0, v1}, Lcom/inveno/newpiflow/tools/AdUtil;->getDownloadStatus(Landroid/content/Context;J)I

    move-result v3

    .line 107
    .local v3, status:I
    const/4 v5, 0x4

    if-eq v5, v3, :cond_0

    if-eq v4, v3, :cond_0

    const/4 v5, 0x2

    if-ne v5, v3, :cond_1

    :cond_0
    move v2, v4

    .line 110
    :goto_0
    return v2

    .line 107
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isURL(Ljava/lang/String;)Z
    .locals 3
    .parameter "urlString"

    .prologue
    .line 152
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 153
    sget-object v1, Landroid/util/Patterns;->WEB_URL:Ljava/util/regex/Pattern;

    .line 154
    .local v1, patt:Ljava/util/regex/Pattern;
    invoke-virtual {v1, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 155
    .local v0, matcher:Ljava/util/regex/Matcher;
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method

.method public static isUsed(Landroid/content/Context;)Z
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 207
    const-string v1, "com.inveno.flow.ad"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 208
    .local v0, pref:Landroid/content/SharedPreferences;
    const-string v1, "com.inveno.flow.ad.used"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public static isValidPackage(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .parameter "context"
    .parameter "filePath"

    .prologue
    const/4 v2, 0x1

    .line 201
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 202
    .local v1, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 204
    .local v0, info:Landroid/content/pm/PackageInfo;
    if-eqz v0, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static setCount(Landroid/content/Context;I)V
    .locals 3
    .parameter "context"
    .parameter "count"

    .prologue
    .line 75
    const-string v1, "com.inveno.flow.ad"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 76
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "com.inveno.flow.ad.count"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 77
    return-void
.end method

.method public static setDownloadID(Landroid/content/Context;J)V
    .locals 3
    .parameter "context"
    .parameter "id"

    .prologue
    .line 92
    const-string v1, "com.inveno.flow.ad"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 93
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "com.inveno.flow.ad.iqiyi.downloadid"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 94
    return-void
.end method

.method public static setUrl(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .parameter "context"
    .parameter "url"

    .prologue
    .line 84
    const-string v1, "com.inveno.flow.ad"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 85
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "com.inveno.flow.ad.url"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 86
    return-void
.end method

.method public static setUsedFlag(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 211
    const-string v1, "com.inveno.flow.ad"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 212
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v1, "com.inveno.flow.ad.used"

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 213
    return-void
.end method
