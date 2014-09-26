.class Lcom/android/systemui/statusbar/holiday/GifView$Service;
.super Landroid/os/AsyncTask;
.source "GifView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/holiday/GifView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Service"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "[B>;"
    }
.end annotation


# instance fields
.field private cacheFile:Ljava/io/File;

.field private isExist:Z

.field final synthetic this$0:Lcom/android/systemui/statusbar/holiday/GifView;

.field private versionCode:Ljava/lang/String;


# direct methods
.method private constructor <init>(Lcom/android/systemui/statusbar/holiday/GifView;)V
    .locals 1
    .parameter

    .prologue
    .line 158
    iput-object p1, p0, Lcom/android/systemui/statusbar/holiday/GifView$Service;->this$0:Lcom/android/systemui/statusbar/holiday/GifView;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/holiday/GifView$Service;->isExist:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/systemui/statusbar/holiday/GifView;Lcom/android/systemui/statusbar/holiday/GifView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 158
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/holiday/GifView$Service;-><init>(Lcom/android/systemui/statusbar/holiday/GifView;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 158
    check-cast p1, [Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/holiday/GifView$Service;->doInBackground([Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)[B
    .locals 15
    .parameter "resPath"

    .prologue
    .line 175
    const/4 v2, 0x0

    .line 176
    .local v2, conn:Ljava/net/HttpURLConnection;
    const/4 v4, 0x0

    .line 177
    .local v4, inputStream:Ljava/io/InputStream;
    const/4 v7, 0x0

    .line 178
    .local v7, outStream:Ljava/io/ByteArrayOutputStream;
    const/16 v11, 0x400

    new-array v1, v11, [B

    .line 179
    .local v1, buffer:[B
    const/4 v9, 0x0

    .line 181
    .local v9, reValue:[B
    const v11, 0xf00c

    :try_start_0
    invoke-static {v11}, Landroid/net/TrafficStats;->setThreadStatsTag(I)V

    .line 182
    const/4 v6, -0x1

    .line 183
    .local v6, len:I
    new-instance v8, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v8}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8

    .line 185
    .end local v7           #outStream:Ljava/io/ByteArrayOutputStream;
    .local v8, outStream:Ljava/io/ByteArrayOutputStream;
    :try_start_1
    new-instance v10, Ljava/net/URL;

    const/4 v11, 0x0

    aget-object v11, p1, v11

    invoke-direct {v10, v11}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 187
    .local v10, url:Ljava/net/URL;
    invoke-virtual {v10}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v11

    move-object v0, v11

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v2, v0

    .line 189
    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 190
    const-string v11, "GET"

    invoke-virtual {v2, v11}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 191
    const-string v11, ""

    iget-object v12, p0, Lcom/android/systemui/statusbar/holiday/GifView$Service;->versionCode:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_0

    iget-boolean v11, p0, Lcom/android/systemui/statusbar/holiday/GifView$Service;->isExist:Z

    if-eqz v11, :cond_0

    .line 192
    const-string v11, "If-Modified-Since"

    iget-object v12, p0, Lcom/android/systemui/statusbar/holiday/GifView$Service;->versionCode:Ljava/lang/String;

    invoke-virtual {v2, v11, v12}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    :cond_0
    const/16 v11, 0xbb8

    invoke-virtual {v2, v11}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 195
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->connect()V

    .line 196
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v11

    sparse-switch v11, :sswitch_data_0

    .line 235
    :cond_1
    :goto_0
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 237
    if-eqz v8, :cond_2

    .line 238
    :try_start_2
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 240
    :cond_2
    if-eqz v4, :cond_3

    .line 241
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 243
    :cond_3
    if-eqz v2, :cond_4

    .line 244
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    :cond_4
    move-object v7, v8

    .end local v6           #len:I
    .end local v8           #outStream:Ljava/io/ByteArrayOutputStream;
    .end local v10           #url:Ljava/net/URL;
    .restart local v7       #outStream:Ljava/io/ByteArrayOutputStream;
    :cond_5
    :goto_1
    move-object v11, v9

    .line 250
    :goto_2
    return-object v11

    .line 198
    .end local v7           #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #len:I
    .restart local v8       #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v10       #url:Ljava/net/URL;
    :sswitch_0
    :try_start_3
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v4

    .line 199
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v12, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getLastModified()J

    move-result-wide v13

    invoke-direct {v12, v13, v14}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12}, Ljava/util/Date;->getDay()I

    move-result v12

    #calls: Lcom/android/systemui/statusbar/holiday/GifView;->getWeek(I)Ljava/lang/String;
    invoke-static {v12}, Lcom/android/systemui/statusbar/holiday/GifView;->access$500(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    new-instance v12, Ljava/util/Date;

    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getLastModified()J

    move-result-wide v13

    invoke-direct {v12, v13, v14}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v12}, Ljava/util/Date;->toGMTString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Lcom/android/systemui/statusbar/holiday/GifView$Service;->versionCode:Ljava/lang/String;

    .line 200
    :goto_3
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v11, -0x1

    if-eq v6, v11, :cond_8

    .line 201
    const/4 v11, 0x0

    invoke-virtual {v8, v1, v11, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    .line 230
    .end local v10           #url:Ljava/net/URL;
    :catch_0
    move-exception v3

    move-object v7, v8

    .line 231
    .end local v6           #len:I
    .end local v8           #outStream:Ljava/io/ByteArrayOutputStream;
    .local v3, e:Ljava/net/MalformedURLException;
    .restart local v7       #outStream:Ljava/io/ByteArrayOutputStream;
    :goto_4
    :try_start_4
    invoke-virtual {v3}, Ljava/net/MalformedURLException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 235
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 237
    if-eqz v7, :cond_6

    .line 238
    :try_start_5
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 240
    :cond_6
    if-eqz v4, :cond_7

    .line 241
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 243
    :cond_7
    if-eqz v2, :cond_5

    .line 244
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_1

    .line 246
    :catch_1
    move-exception v3

    .line 247
    .local v3, e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 204
    .end local v3           #e:Ljava/io/IOException;
    .end local v7           #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #len:I
    .restart local v8       #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v10       #url:Ljava/net/URL;
    :cond_8
    :try_start_6
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 205
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    .line 206
    iget-object v11, p0, Lcom/android/systemui/statusbar/holiday/GifView$Service;->this$0:Lcom/android/systemui/statusbar/holiday/GifView;

    #getter for: Lcom/android/systemui/statusbar/holiday/GifView;->holidayVision:Lcom/android/systemui/statusbar/holiday/GifView$HolidayVersion;
    invoke-static {v11}, Lcom/android/systemui/statusbar/holiday/GifView;->access$400(Lcom/android/systemui/statusbar/holiday/GifView;)Lcom/android/systemui/statusbar/holiday/GifView$HolidayVersion;

    move-result-object v11

    iget-object v12, p0, Lcom/android/systemui/statusbar/holiday/GifView$Service;->versionCode:Ljava/lang/String;

    invoke-virtual {v11, v12}, Lcom/android/systemui/statusbar/holiday/GifView$HolidayVersion;->saveVersion(Ljava/lang/String;)V

    .line 207
    iget-object v11, p0, Lcom/android/systemui/statusbar/holiday/GifView$Service;->this$0:Lcom/android/systemui/statusbar/holiday/GifView;

    invoke-virtual {v11, v9}, Lcom/android/systemui/statusbar/holiday/GifView;->saveHoliday([B)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_0
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .line 232
    .end local v10           #url:Ljava/net/URL;
    :catch_2
    move-exception v3

    move-object v7, v8

    .line 233
    .end local v6           #len:I
    .end local v8           #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v3       #e:Ljava/io/IOException;
    .restart local v7       #outStream:Ljava/io/ByteArrayOutputStream;
    :goto_5
    :try_start_7
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 235
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 237
    if-eqz v7, :cond_9

    .line 238
    :try_start_8
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 240
    :cond_9
    if-eqz v4, :cond_a

    .line 241
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 243
    :cond_a
    if-eqz v2, :cond_5

    .line 244
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_3

    goto/16 :goto_1

    .line 246
    :catch_3
    move-exception v3

    .line 247
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    .line 211
    .end local v3           #e:Ljava/io/IOException;
    .end local v7           #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #len:I
    .restart local v8       #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v10       #url:Ljava/net/URL;
    :sswitch_1
    :try_start_9
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/holiday/GifView$Service;->isExist:Z

    if-eqz v11, :cond_b

    iget-object v11, p0, Lcom/android/systemui/statusbar/holiday/GifView$Service;->cacheFile:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 212
    :cond_b
    iget-object v11, p0, Lcom/android/systemui/statusbar/holiday/GifView$Service;->this$0:Lcom/android/systemui/statusbar/holiday/GifView;

    #getter for: Lcom/android/systemui/statusbar/holiday/GifView;->holidayVision:Lcom/android/systemui/statusbar/holiday/GifView$HolidayVersion;
    invoke-static {v11}, Lcom/android/systemui/statusbar/holiday/GifView;->access$400(Lcom/android/systemui/statusbar/holiday/GifView;)Lcom/android/systemui/statusbar/holiday/GifView$HolidayVersion;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/systemui/statusbar/holiday/GifView$HolidayVersion;->resetVersion()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1
    .catch Ljava/net/MalformedURLException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2

    .line 213
    const/4 v11, 0x0

    .line 235
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 237
    if-eqz v8, :cond_c

    .line 238
    :try_start_a
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 240
    :cond_c
    if-eqz v4, :cond_d

    .line 241
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 243
    :cond_d
    if-eqz v2, :cond_e

    .line 244
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4

    :cond_e
    :goto_6
    move-object v7, v8

    .line 248
    .end local v8           #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #outStream:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_2

    .line 246
    .end local v7           #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v8       #outStream:Ljava/io/ByteArrayOutputStream;
    :catch_4
    move-exception v3

    .line 247
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 215
    .end local v3           #e:Ljava/io/IOException;
    :sswitch_2
    :try_start_b
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/holiday/GifView$Service;->isExist:Z

    if-eqz v11, :cond_1

    .line 216
    new-instance v5, Ljava/io/FileInputStream;

    iget-object v11, p0, Lcom/android/systemui/statusbar/holiday/GifView$Service;->cacheFile:Ljava/io/File;

    invoke-direct {v5, v11}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1
    .catch Ljava/net/MalformedURLException; {:try_start_b .. :try_end_b} :catch_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    .line 217
    .end local v4           #inputStream:Ljava/io/InputStream;
    .local v5, inputStream:Ljava/io/InputStream;
    :goto_7
    :try_start_c
    invoke-virtual {v5, v1}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/4 v11, -0x1

    if-eq v6, v11, :cond_f

    .line 218
    const/4 v11, 0x0

    invoke-virtual {v8, v1, v11, v6}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_7

    .line 230
    :catch_5
    move-exception v3

    move-object v7, v8

    .end local v8           #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #outStream:Ljava/io/ByteArrayOutputStream;
    move-object v4, v5

    .end local v5           #inputStream:Ljava/io/InputStream;
    .restart local v4       #inputStream:Ljava/io/InputStream;
    goto/16 :goto_4

    .line 220
    .end local v4           #inputStream:Ljava/io/InputStream;
    .end local v7           #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #inputStream:Ljava/io/InputStream;
    .restart local v8       #outStream:Ljava/io/ByteArrayOutputStream;
    :cond_f
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->flush()V

    .line 221
    invoke-virtual {v8}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2
    .catch Ljava/net/MalformedURLException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_9

    move-result-object v9

    move-object v4, v5

    .end local v5           #inputStream:Ljava/io/InputStream;
    .restart local v4       #inputStream:Ljava/io/InputStream;
    goto/16 :goto_0

    .line 246
    :catch_6
    move-exception v3

    .line 247
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    move-object v7, v8

    .line 249
    .end local v8           #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #outStream:Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_1

    .line 235
    .end local v3           #e:Ljava/io/IOException;
    .end local v6           #len:I
    .end local v10           #url:Ljava/net/URL;
    :catchall_0
    move-exception v11

    :goto_8
    invoke-static {}, Landroid/net/TrafficStats;->clearThreadStatsTag()V

    .line 237
    if-eqz v7, :cond_10

    .line 238
    :try_start_d
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 240
    :cond_10
    if-eqz v4, :cond_11

    .line 241
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 243
    :cond_11
    if-eqz v2, :cond_12

    .line 244
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->disconnect()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    .line 248
    :cond_12
    :goto_9
    throw v11

    .line 246
    :catch_7
    move-exception v3

    .line 247
    .restart local v3       #e:Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_9

    .line 235
    .end local v3           #e:Ljava/io/IOException;
    .end local v7           #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v6       #len:I
    .restart local v8       #outStream:Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v11

    move-object v7, v8

    .end local v8           #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #outStream:Ljava/io/ByteArrayOutputStream;
    goto :goto_8

    .end local v4           #inputStream:Ljava/io/InputStream;
    .end local v7           #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #inputStream:Ljava/io/InputStream;
    .restart local v8       #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v10       #url:Ljava/net/URL;
    :catchall_2
    move-exception v11

    move-object v7, v8

    .end local v8           #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #outStream:Ljava/io/ByteArrayOutputStream;
    move-object v4, v5

    .end local v5           #inputStream:Ljava/io/InputStream;
    .restart local v4       #inputStream:Ljava/io/InputStream;
    goto :goto_8

    .line 232
    .end local v6           #len:I
    .end local v10           #url:Ljava/net/URL;
    :catch_8
    move-exception v3

    goto/16 :goto_5

    .end local v4           #inputStream:Ljava/io/InputStream;
    .end local v7           #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v5       #inputStream:Ljava/io/InputStream;
    .restart local v6       #len:I
    .restart local v8       #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v10       #url:Ljava/net/URL;
    :catch_9
    move-exception v3

    move-object v7, v8

    .end local v8           #outStream:Ljava/io/ByteArrayOutputStream;
    .restart local v7       #outStream:Ljava/io/ByteArrayOutputStream;
    move-object v4, v5

    .end local v5           #inputStream:Ljava/io/InputStream;
    .restart local v4       #inputStream:Ljava/io/InputStream;
    goto/16 :goto_5

    .line 230
    .end local v6           #len:I
    .end local v10           #url:Ljava/net/URL;
    :catch_a
    move-exception v3

    goto/16 :goto_4

    .line 196
    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_0
        0x12e -> :sswitch_1
        0x130 -> :sswitch_2
        0x194 -> :sswitch_1
    .end sparse-switch
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 158
    check-cast p1, [B

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/holiday/GifView$Service;->onPostExecute([B)V

    return-void
.end method

.method protected onPostExecute([B)V
    .locals 2
    .parameter "result"

    .prologue
    .line 255
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 257
    if-eqz p1, :cond_0

    .line 258
    iget-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifView$Service;->this$0:Lcom/android/systemui/statusbar/holiday/GifView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/holiday/GifView;->setHolidayContentVisiable(Z)V

    .line 259
    iget-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifView$Service;->this$0:Lcom/android/systemui/statusbar/holiday/GifView;

    #calls: Lcom/android/systemui/statusbar/holiday/GifView;->setGifDecoderImage([B)V
    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/holiday/GifView;->access$600(Lcom/android/systemui/statusbar/holiday/GifView;[B)V

    .line 263
    :goto_0
    return-void

    .line 261
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifView$Service;->this$0:Lcom/android/systemui/statusbar/holiday/GifView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/holiday/GifView;->setHolidayContentVisiable(Z)V

    goto :goto_0
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 168
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/systemui/statusbar/holiday/GifView$Service;->this$0:Lcom/android/systemui/statusbar/holiday/GifView;

    #getter for: Lcom/android/systemui/statusbar/holiday/GifView;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/systemui/statusbar/holiday/GifView;->access$300(Lcom/android/systemui/statusbar/holiday/GifView;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "holiday.gif"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifView$Service;->cacheFile:Ljava/io/File;

    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifView$Service;->cacheFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/holiday/GifView$Service;->isExist:Z

    .line 170
    iget-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifView$Service;->this$0:Lcom/android/systemui/statusbar/holiday/GifView;

    #getter for: Lcom/android/systemui/statusbar/holiday/GifView;->holidayVision:Lcom/android/systemui/statusbar/holiday/GifView$HolidayVersion;
    invoke-static {v0}, Lcom/android/systemui/statusbar/holiday/GifView;->access$400(Lcom/android/systemui/statusbar/holiday/GifView;)Lcom/android/systemui/statusbar/holiday/GifView$HolidayVersion;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/holiday/GifView$HolidayVersion;->getVersion()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/holiday/GifView$Service;->versionCode:Ljava/lang/String;

    .line 171
    return-void
.end method
