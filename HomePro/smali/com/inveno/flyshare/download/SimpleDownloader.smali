.class public Lcom/inveno/flyshare/download/SimpleDownloader;
.super Lcom/inveno/flyshare/download/Downloader;
.source "SimpleDownloader.java"


# static fields
.field private static final ONCE_FLUSHA:I = 0x1000


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/inveno/flyshare/download/Downloader;-><init>()V

    return-void
.end method


# virtual methods
.method public downloadAndCompress(Ljava/lang/String;Lcom/inveno/flyshare/config/BitmapDisplayConfig;Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;Lcom/inveno/flyshare/callback/BitmapLoadCallBack;Lcom/inveno/flyshare/download/FlowUsedApi;)Landroid/graphics/Bitmap;
    .locals 10
    .parameter "url"
    .parameter "config"
    .parameter
    .parameter
    .parameter "flowUsedApi"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/inveno/flyshare/config/BitmapDisplayConfig;",
            "Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask",
            "<*>;",
            "Lcom/inveno/flyshare/callback/BitmapLoadCallBack",
            "<*>;",
            "Lcom/inveno/flyshare/download/FlowUsedApi;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    .prologue
    .line 149
    .local p3, task:Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;,"Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask<*>;"
    .local p4, callBack:Lcom/inveno/flyshare/callback/BitmapLoadCallBack;,"Lcom/inveno/flyshare/callback/BitmapLoadCallBack<*>;"
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;->isCancelled()Z

    move-result v7

    if-nez v7, :cond_0

    .line 150
    invoke-virtual {p3}, Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;->getTargetContainer()Landroid/view/View;

    move-result-object v7

    if-nez v7, :cond_1

    .line 151
    :cond_0
    const/4 v7, 0x0

    .line 182
    :goto_0
    return-object v7

    .line 153
    :cond_1
    const/4 v6, 0x0

    .line 154
    .local v6, urlConnection:Ljava/net/URLConnection;
    const/4 v0, 0x0

    .line 156
    .local v0, bis:Ljava/io/BufferedInputStream;
    invoke-static {}, Lcom/inveno/flyshare/utils/OtherUtils;->trustAllSSLForHttpsURLConnection()V

    .line 157
    const-wide/16 v3, -0x1

    .line 160
    .local v3, totalSize:J
    :try_start_0
    new-instance v5, Ljava/net/URL;

    invoke-direct {v5, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 161
    .local v5, uri:Ljava/net/URL;
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v6

    .line 162
    invoke-virtual {p0}, Lcom/inveno/flyshare/download/SimpleDownloader;->getDefaultConnectTimeout()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 163
    invoke-virtual {p0}, Lcom/inveno/flyshare/download/SimpleDownloader;->getDefaultReadTimeout()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 164
    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-virtual {v6}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 165
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .local v1, bis:Ljava/io/BufferedInputStream;
    :try_start_1
    invoke-virtual {v6}, Ljava/net/URLConnection;->getContentLength()I

    move-result v7

    int-to-long v3, v7

    .line 167
    const-string v7, "lhc"

    new-instance v8, Ljava/lang/StringBuilder;

    const-string v9, "\u4e0b\u8f7d\u56fe\u7247\u6d88\u8017\uff1a"

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/inveno/flyshare/utils/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    if-eqz p5, :cond_2

    .line 169
    long-to-int v7, v3

    invoke-interface {p5, v7}, Lcom/inveno/flyshare/download/FlowUsedApi;->downImageUseFlow(I)V

    .line 171
    :cond_2
    invoke-virtual {p3}, Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;->isCancelled()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual {p3}, Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;->getTargetContainer()Landroid/view/View;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v7

    if-nez v7, :cond_4

    .line 179
    :cond_3
    invoke-static {v1}, Lcom/inveno/flyshare/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 172
    const/4 v7, 0x0

    goto :goto_0

    .line 174
    :cond_4
    :try_start_2
    invoke-virtual {p2}, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->getBitmapMaxSize()Lcom/inveno/flyshare/lru/BitmapSize;

    move-result-object v7

    .line 175
    invoke-virtual {v7}, Lcom/inveno/flyshare/lru/BitmapSize;->getWidth()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {p2}, Lcom/inveno/flyshare/config/BitmapDisplayConfig;->getBitmapMaxSize()Lcom/inveno/flyshare/lru/BitmapSize;

    move-result-object v8

    invoke-virtual {v8}, Lcom/inveno/flyshare/lru/BitmapSize;->getHeight()I

    move-result v8

    int-to-float v8, v8

    .line 174
    invoke-static {v1, v7, v8}, Lcom/inveno/flyshare/utils/BitmapTools;->compress(Ljava/io/InputStream;FF)Landroid/graphics/Bitmap;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v7

    .line 179
    invoke-static {v1}, Lcom/inveno/flyshare/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .line 176
    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .end local v5           #uri:Ljava/net/URL;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    :catch_0
    move-exception v2

    .line 177
    .local v2, e:Ljava/lang/Throwable;
    :goto_1
    :try_start_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/inveno/flyshare/utils/LogTools;->showLogA(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 179
    invoke-static {v0}, Lcom/inveno/flyshare/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 182
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 178
    .end local v2           #e:Ljava/lang/Throwable;
    :catchall_0
    move-exception v7

    .line 179
    :goto_2
    invoke-static {v0}, Lcom/inveno/flyshare/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 180
    throw v7

    .line 178
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    .restart local v5       #uri:Ljava/net/URL;
    :catchall_1
    move-exception v7

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    goto :goto_2

    .line 176
    .end local v0           #bis:Ljava/io/BufferedInputStream;
    .restart local v1       #bis:Ljava/io/BufferedInputStream;
    :catch_1
    move-exception v2

    move-object v0, v1

    .end local v1           #bis:Ljava/io/BufferedInputStream;
    .restart local v0       #bis:Ljava/io/BufferedInputStream;
    goto :goto_1
.end method

.method public downloadToStream(Ljava/lang/String;Ljava/io/OutputStream;Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;Lcom/inveno/flyshare/callback/BitmapLoadCallBack;)J
    .locals 2
    .parameter "uri"
    .parameter "outputStream"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/OutputStream;",
            "Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask",
            "<*>;",
            "Lcom/inveno/flyshare/callback/BitmapLoadCallBack",
            "<*>;)J"
        }
    .end annotation

    .prologue
    .line 41
    .local p3, task:Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;,"Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask<*>;"
    .local p4, callBack:Lcom/inveno/flyshare/callback/BitmapLoadCallBack;,"Lcom/inveno/flyshare/callback/BitmapLoadCallBack<*>;"
    const-wide/16 v0, -0x1

    .line 105
    .local v0, result:J
    return-wide v0
.end method

.method public downloadToStream(Ljava/lang/String;Ljava/io/OutputStream;Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;Lcom/inveno/flyshare/callback/BitmapLoadCallBack;Lcom/inveno/flyshare/download/FlowUsedApi;)J
    .locals 20
    .parameter "uri"
    .parameter "outputStream"
    .parameter
    .parameter
    .parameter "flowUsedApi"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/OutputStream;",
            "Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask",
            "<*>;",
            "Lcom/inveno/flyshare/callback/BitmapLoadCallBack",
            "<*>;",
            "Lcom/inveno/flyshare/download/FlowUsedApi;",
            ")J"
        }
    .end annotation

    .prologue
    .line 190
    .local p3, task:Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;,"Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask<*>;"
    .local p4, callBack:Lcom/inveno/flyshare/callback/BitmapLoadCallBack;,"Lcom/inveno/flyshare/callback/BitmapLoadCallBack<*>;"
    if-eqz p3, :cond_0

    invoke-virtual/range {p3 .. p3}, Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 191
    invoke-virtual/range {p3 .. p3}, Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;->getTargetContainer()Landroid/view/View;

    move-result-object v2

    if-nez v2, :cond_1

    .line 192
    :cond_0
    const-wide/16 v16, -0x1

    .line 267
    :goto_0
    return-wide v16

    .line 194
    :cond_1
    const/16 v19, 0x0

    .line 195
    .local v19, urlConnection:Ljava/net/URLConnection;
    const/4 v9, 0x0

    .line 197
    .local v9, bis:Ljava/io/BufferedInputStream;
    invoke-static {}, Lcom/inveno/flyshare/utils/OtherUtils;->trustAllSSLForHttpsURLConnection()V

    .line 199
    const-wide/16 v16, -0x1

    .line 200
    .local v16, result:J
    const-wide/16 v7, -0x1

    .line 202
    .local v7, totalSize:J
    :try_start_0
    const-string v2, "/"

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 204
    new-instance v14, Ljava/io/FileInputStream;

    move-object/from16 v0, p1

    invoke-direct {v14, v0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 205
    .local v14, fileInputStream:Ljava/io/FileInputStream;
    new-instance v10, Ljava/io/BufferedInputStream;

    invoke-direct {v10, v14}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    .end local v9           #bis:Ljava/io/BufferedInputStream;
    .local v10, bis:Ljava/io/BufferedInputStream;
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Lcom/inveno/flyshare/download/SimpleDownloader;->getDefaultExpiry()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v4

    add-long v16, v2, v4

    move-object v9, v10

    .line 241
    .end local v10           #bis:Ljava/io/BufferedInputStream;
    .end local v14           #fileInputStream:Ljava/io/FileInputStream;
    .restart local v9       #bis:Ljava/io/BufferedInputStream;
    :goto_1
    :try_start_2
    invoke-virtual/range {p3 .. p3}, Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual/range {p3 .. p3}, Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;->getTargetContainer()Landroid/view/View;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v2

    if-nez v2, :cond_5

    .line 265
    :cond_2
    invoke-static {v9}, Lcom/inveno/flyshare/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 242
    const-wide/16 v16, -0x1

    goto :goto_0

    .line 219
    :cond_3
    :try_start_3
    new-instance v18, Ljava/net/URL;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 220
    .local v18, url:Ljava/net/URL;
    invoke-virtual/range {v18 .. v18}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v19

    .line 222
    invoke-virtual/range {p0 .. p0}, Lcom/inveno/flyshare/download/SimpleDownloader;->getDefaultConnectTimeout()I

    move-result v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 223
    invoke-virtual/range {p0 .. p0}, Lcom/inveno/flyshare/download/SimpleDownloader;->getDefaultReadTimeout()I

    move-result v2

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 224
    new-instance v10, Ljava/io/BufferedInputStream;

    invoke-virtual/range {v19 .. v19}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-direct {v10, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 225
    .end local v9           #bis:Ljava/io/BufferedInputStream;
    .restart local v10       #bis:Ljava/io/BufferedInputStream;
    :try_start_4
    invoke-virtual/range {v19 .. v19}, Ljava/net/URLConnection;->getExpiration()J

    move-result-wide v16

    .line 226
    invoke-virtual/range {v19 .. v19}, Ljava/net/URLConnection;->getContentLength()I

    move-result v2

    int-to-long v7, v2

    .line 237
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v2, v16, v2

    if-gez v2, :cond_4

    .line 238
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual/range {p0 .. p0}, Lcom/inveno/flyshare/download/SimpleDownloader;->getDefaultExpiry()J
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    move-result-wide v4

    .line 237
    add-long v16, v2, v4

    :cond_4
    move-object v9, v10

    .end local v10           #bis:Ljava/io/BufferedInputStream;
    .restart local v9       #bis:Ljava/io/BufferedInputStream;
    goto :goto_1

    .line 244
    .end local v18           #url:Ljava/net/URL;
    :cond_5
    const/16 v2, 0x1000

    :try_start_5
    new-array v11, v2, [B

    .line 245
    .local v11, buffer:[B
    const/4 v15, 0x0

    .line 246
    .local v15, len:I
    const/4 v12, 0x0

    .line 247
    .local v12, c:I
    :goto_2
    invoke-virtual {v9, v11}, Ljava/io/BufferedInputStream;->read([B)I

    move-result v15

    const/4 v2, -0x1

    if-ne v15, v2, :cond_7

    .line 255
    const-string v2, "lhc"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, " flowUsedApi:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p5

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u4e0b\u8f7durl\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/inveno/flyshare/utils/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    if-eqz p5, :cond_6

    .line 257
    move-object/from16 v0, p5

    invoke-interface {v0, v12}, Lcom/inveno/flyshare/download/FlowUsedApi;->downImageUseFlow(I)V

    .line 260
    :cond_6
    invoke-virtual/range {p2 .. p2}, Ljava/io/OutputStream;->flush()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0

    .line 265
    invoke-static {v9}, Lcom/inveno/flyshare/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 248
    :cond_7
    add-int/2addr v12, v15

    .line 249
    const/4 v2, 0x0

    :try_start_6
    move-object/from16 v0, p2

    invoke-virtual {v0, v11, v2, v15}, Ljava/io/OutputStream;->write([BII)V

    .line 251
    invoke-virtual/range {p3 .. p3}, Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;->isCancelled()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual/range {p3 .. p3}, Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;->getTargetContainer()Landroid/view/View;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0

    move-result-object v2

    if-nez v2, :cond_9

    .line 265
    :cond_8
    invoke-static {v9}, Lcom/inveno/flyshare/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 252
    const-wide/16 v16, -0x1

    goto/16 :goto_0

    .line 253
    :cond_9
    :try_start_7
    invoke-virtual/range {p3 .. p3}, Lcom/inveno/flyshare/BitmapUtils$BitmapLoadTask;->getTargetContainer()Landroid/view/View;

    move-result-object v3

    int-to-long v5, v12

    move-object/from16 v2, p4

    move-object/from16 v4, p1

    invoke-virtual/range {v2 .. v8}, Lcom/inveno/flyshare/callback/BitmapLoadCallBack;->onLoading(Ljava/lang/Object;Ljava/lang/String;JJ)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_2

    .line 261
    .end local v11           #buffer:[B
    .end local v12           #c:I
    .end local v15           #len:I
    :catch_0
    move-exception v13

    .line 262
    .local v13, e:Ljava/lang/Throwable;
    :goto_3
    const-wide/16 v16, -0x1

    .line 263
    :try_start_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/inveno/flyshare/utils/LogTools;->showLogA(Ljava/lang/String;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 265
    invoke-static {v9}, Lcom/inveno/flyshare/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    goto/16 :goto_0

    .line 264
    .end local v13           #e:Ljava/lang/Throwable;
    :catchall_0
    move-exception v2

    .line 265
    :goto_4
    invoke-static {v9}, Lcom/inveno/flyshare/utils/IOUtils;->closeQuietly(Ljava/io/Closeable;)V

    .line 266
    throw v2

    .line 264
    .end local v9           #bis:Ljava/io/BufferedInputStream;
    .restart local v10       #bis:Ljava/io/BufferedInputStream;
    :catchall_1
    move-exception v2

    move-object v9, v10

    .end local v10           #bis:Ljava/io/BufferedInputStream;
    .restart local v9       #bis:Ljava/io/BufferedInputStream;
    goto :goto_4

    .line 261
    .end local v9           #bis:Ljava/io/BufferedInputStream;
    .restart local v10       #bis:Ljava/io/BufferedInputStream;
    :catch_1
    move-exception v13

    move-object v9, v10

    .end local v10           #bis:Ljava/io/BufferedInputStream;
    .restart local v9       #bis:Ljava/io/BufferedInputStream;
    goto :goto_3
.end method
