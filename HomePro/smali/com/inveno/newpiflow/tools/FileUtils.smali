.class public Lcom/inveno/newpiflow/tools/FileUtils;
.super Ljava/lang/Object;
.source "FileUtils.java"


# static fields
.field public static final WHAT_COPY_FINISH:I = 0x3

.field public static final WHAT_COPY_PROGRESS:I = 0x2

.field public static final WHAT_COPY_START:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static appendFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .parameter "file"
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/inveno/newpiflow/tools/FileUtils;->writeFileByWriter(Ljava/io/File;Ljava/lang/String;Z)V

    .line 62
    return-void
.end method

.method public static appendFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "file"
    .parameter "text"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 66
    const/4 v0, 0x1

    invoke-static {p0, p1, v0, p2}, Lcom/inveno/newpiflow/tools/FileUtils;->writeFileByStream(Ljava/io/File;Ljava/lang/String;ZLjava/lang/String;)V

    .line 67
    return-void
.end method

.method public static appendFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "path"
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 90
    .local v0, myFile:Ljava/io/File;
    invoke-static {v0, p1}, Lcom/inveno/newpiflow/tools/FileUtils;->appendFile(Ljava/io/File;Ljava/lang/String;)V

    .line 91
    return-void
.end method

.method public static appendFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "path"
    .parameter "text"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 95
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 96
    .local v0, myFile:Ljava/io/File;
    invoke-static {v0, p1, p2}, Lcom/inveno/newpiflow/tools/FileUtils;->appendFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method public static copyAssetFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)Z
    .locals 12
    .parameter "context"
    .parameter "fileName"
    .parameter "saveDir"
    .parameter "hProgress"

    .prologue
    .line 284
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 285
    .local v4, fBusybox:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    .line 286
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 289
    :cond_0
    const/16 v10, 0x2000

    :try_start_0
    new-array v0, v10, [B

    .line 291
    .local v0, buffer:[B
    new-instance v2, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 293
    .local v2, dest:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 294
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 297
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    invoke-virtual {v10, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v6

    .line 298
    .local v6, is:Ljava/io/InputStream;
    new-instance v5, Ljava/io/BufferedOutputStream;

    new-instance v10, Ljava/io/FileOutputStream;

    .line 299
    invoke-direct {v10, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 298
    invoke-direct {v5, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 301
    .local v5, fos:Ljava/io/OutputStream;
    const/4 v1, 0x0

    .line 302
    .local v1, count:I
    invoke-virtual {v6}, Ljava/io/InputStream;->available()I

    move-result v9

    .line 303
    .local v9, size:I
    if-eqz p3, :cond_2

    .line 304
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 305
    .local v7, msg:Landroid/os/Message;
    const/4 v10, 0x1

    iput v10, v7, Landroid/os/Message;->what:I

    .line 306
    const/4 v10, 0x0

    iput v10, v7, Landroid/os/Message;->arg1:I

    .line 307
    iput v9, v7, Landroid/os/Message;->arg2:I

    .line 308
    invoke-virtual {p3, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 311
    .end local v7           #msg:Landroid/os/Message;
    :cond_2
    :goto_0
    const/4 v10, 0x0

    array-length v11, v0

    invoke-virtual {v6, v0, v10, v11}, Ljava/io/InputStream;->read([BII)I

    move-result v8

    .local v8, n:I
    const/4 v10, -0x1

    if-ne v8, v10, :cond_4

    .line 323
    invoke-virtual {v6}, Ljava/io/InputStream;->close()V

    .line 324
    invoke-virtual {v5}, Ljava/io/OutputStream;->close()V

    .line 325
    if-eqz p3, :cond_3

    .line 326
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 327
    .restart local v7       #msg:Landroid/os/Message;
    const/4 v10, 0x3

    iput v10, v7, Landroid/os/Message;->what:I

    .line 328
    const/4 v10, 0x0

    iput v10, v7, Landroid/os/Message;->arg1:I

    .line 329
    const/4 v10, 0x0

    iput v10, v7, Landroid/os/Message;->arg2:I

    .line 330
    invoke-virtual {p3, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 332
    .end local v7           #msg:Landroid/os/Message;
    :cond_3
    const/4 v10, 0x1

    .line 334
    .end local v0           #buffer:[B
    .end local v1           #count:I
    .end local v2           #dest:Ljava/io/File;
    .end local v5           #fos:Ljava/io/OutputStream;
    .end local v6           #is:Ljava/io/InputStream;
    .end local v8           #n:I
    .end local v9           #size:I
    :goto_1
    return v10

    .line 312
    .restart local v0       #buffer:[B
    .restart local v1       #count:I
    .restart local v2       #dest:Ljava/io/File;
    .restart local v5       #fos:Ljava/io/OutputStream;
    .restart local v6       #is:Ljava/io/InputStream;
    .restart local v8       #n:I
    .restart local v9       #size:I
    :cond_4
    const/4 v10, 0x0

    invoke-virtual {v5, v0, v10, v8}, Ljava/io/OutputStream;->write([BII)V

    .line 313
    add-int/2addr v1, v8

    .line 314
    if-eqz p3, :cond_2

    .line 315
    new-instance v7, Landroid/os/Message;

    invoke-direct {v7}, Landroid/os/Message;-><init>()V

    .line 316
    .restart local v7       #msg:Landroid/os/Message;
    const/4 v10, 0x2

    iput v10, v7, Landroid/os/Message;->what:I

    .line 317
    iput v1, v7, Landroid/os/Message;->arg1:I

    .line 318
    iput v9, v7, Landroid/os/Message;->arg2:I

    .line 319
    invoke-virtual {p3, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 333
    .end local v0           #buffer:[B
    .end local v1           #count:I
    .end local v2           #dest:Ljava/io/File;
    .end local v5           #fos:Ljava/io/OutputStream;
    .end local v6           #is:Ljava/io/InputStream;
    .end local v7           #msg:Landroid/os/Message;
    .end local v8           #n:I
    .end local v9           #size:I
    :catch_0
    move-exception v3

    .line 334
    .local v3, ex:Ljava/lang/Exception;
    const/4 v10, 0x0

    goto :goto_1
.end method

.method public static copyFile(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 10
    .parameter "source"
    .parameter "dest"
    .parameter "hProgress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x0

    .line 139
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 140
    .local v6, oldFile:Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 141
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 142
    .local v3, is:Ljava/io/InputStream;
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 144
    .local v2, fs:Ljava/io/FileOutputStream;
    invoke-virtual {v3}, Ljava/io/InputStream;->available()I

    move-result v7

    .line 145
    .local v7, size:I
    if-eqz p2, :cond_0

    .line 146
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 147
    .local v4, msg:Landroid/os/Message;
    const/4 v8, 0x1

    iput v8, v4, Landroid/os/Message;->what:I

    .line 148
    iput v9, v4, Landroid/os/Message;->arg1:I

    .line 149
    iput v7, v4, Landroid/os/Message;->arg2:I

    .line 150
    invoke-virtual {p2, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 152
    .end local v4           #msg:Landroid/os/Message;
    :cond_0
    const/4 v1, 0x0

    .line 153
    .local v1, count:I
    const/4 v5, 0x0

    .line 155
    .local v5, n:I
    const/16 v8, 0x5a4

    new-array v0, v8, [B

    .line 156
    .local v0, buffer:[B
    :cond_1
    :goto_0
    invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v8, -0x1

    if-ne v5, v8, :cond_3

    .line 167
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    .line 168
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 169
    if-eqz p2, :cond_2

    .line 170
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 171
    .restart local v4       #msg:Landroid/os/Message;
    const/4 v8, 0x3

    iput v8, v4, Landroid/os/Message;->what:I

    .line 172
    iput v9, v4, Landroid/os/Message;->arg1:I

    .line 173
    iput v9, v4, Landroid/os/Message;->arg2:I

    .line 174
    invoke-virtual {p2, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 177
    .end local v0           #buffer:[B
    .end local v1           #count:I
    .end local v2           #fs:Ljava/io/FileOutputStream;
    .end local v3           #is:Ljava/io/InputStream;
    .end local v4           #msg:Landroid/os/Message;
    .end local v5           #n:I
    .end local v7           #size:I
    :cond_2
    return-void

    .line 157
    .restart local v0       #buffer:[B
    .restart local v1       #count:I
    .restart local v2       #fs:Ljava/io/FileOutputStream;
    .restart local v3       #is:Ljava/io/InputStream;
    .restart local v5       #n:I
    .restart local v7       #size:I
    :cond_3
    invoke-virtual {v2, v0, v9, v5}, Ljava/io/FileOutputStream;->write([BII)V

    .line 158
    add-int/2addr v1, v5

    .line 159
    if-eqz p2, :cond_1

    .line 160
    new-instance v4, Landroid/os/Message;

    invoke-direct {v4}, Landroid/os/Message;-><init>()V

    .line 161
    .restart local v4       #msg:Landroid/os/Message;
    const/4 v8, 0x2

    iput v8, v4, Landroid/os/Message;->what:I

    .line 162
    iput v1, v4, Landroid/os/Message;->arg1:I

    .line 163
    iput v7, v4, Landroid/os/Message;->arg2:I

    .line 164
    invoke-virtual {p2, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0
.end method

.method public static copyFolder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .parameter "source"
    .parameter "dest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 181
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->mkdirs()Z

    .line 182
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 183
    .local v0, a:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v2

    .line 184
    .local v2, file:[Ljava/lang/String;
    const/4 v7, 0x0

    .line 185
    .local v7, temp:Ljava/io/File;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v8, v2

    if-lt v3, v8, :cond_0

    .line 211
    return-void

    .line 186
    :cond_0
    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 187
    new-instance v7, Ljava/io/File;

    .end local v7           #temp:Ljava/io/File;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v9, v2, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 192
    .restart local v7       #temp:Ljava/io/File;
    :goto_1
    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 193
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 194
    .local v4, input:Ljava/io/FileInputStream;
    new-instance v6, Ljava/io/FileOutputStream;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 195
    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 194
    invoke-direct {v6, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 196
    .local v6, output:Ljava/io/FileOutputStream;
    const/16 v8, 0x1400

    new-array v1, v8, [B

    .line 198
    .local v1, b:[B
    :goto_2
    invoke-virtual {v4, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v5

    .local v5, len:I
    const/4 v8, -0x1

    if-ne v5, v8, :cond_4

    .line 201
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->flush()V

    .line 202
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V

    .line 203
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    .line 205
    .end local v1           #b:[B
    .end local v4           #input:Ljava/io/FileInputStream;
    .end local v5           #len:I
    .end local v6           #output:Ljava/io/FileOutputStream;
    :cond_1
    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 206
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v2, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 207
    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    aget-object v10, v2, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 206
    invoke-static {v8, v9}, Lcom/inveno/newpiflow/tools/FileUtils;->copyFolder(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 189
    :cond_3
    new-instance v7, Ljava/io/File;

    .end local v7           #temp:Ljava/io/File;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v9, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    aget-object v9, v2, v3

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v7       #temp:Ljava/io/File;
    goto/16 :goto_1

    .line 199
    .restart local v1       #b:[B
    .restart local v4       #input:Ljava/io/FileInputStream;
    .restart local v5       #len:I
    .restart local v6       #output:Ljava/io/FileOutputStream;
    :cond_4
    const/4 v8, 0x0

    invoke-virtual {v6, v1, v8, v5}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_2
.end method

.method public static deleteDir(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    .line 105
    invoke-static {p0}, Lcom/inveno/newpiflow/tools/FileUtils;->deleteSubFiles(Ljava/lang/String;)V

    .line 106
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 107
    .local v0, myDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    return v1
.end method

.method public static deleteFile(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    .line 100
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 101
    .local v0, myFile:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    return v1
.end method

.method public static deleteSubFiles(Ljava/lang/String;)V
    .locals 6
    .parameter "path"

    .prologue
    .line 111
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 112
    .local v1, myFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    .line 134
    :cond_0
    return-void

    .line 115
    :cond_1
    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 118
    invoke-virtual {v1}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v3

    .line 119
    .local v3, tempList:[Ljava/lang/String;
    const/4 v2, 0x0

    .line 120
    .local v2, temp:Ljava/io/File;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    array-length v4, v3

    if-ge v0, v4, :cond_0

    .line 121
    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p0, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 122
    new-instance v2, Ljava/io/File;

    .end local v2           #temp:Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 126
    .restart local v2       #temp:Ljava/io/File;
    :goto_1
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 127
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 129
    :cond_2
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 130
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/inveno/newpiflow/tools/FileUtils;->deleteSubFiles(Ljava/lang/String;)V

    .line 131
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/inveno/newpiflow/tools/FileUtils;->deleteDir(Ljava/lang/String;)Z

    .line 120
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 124
    :cond_4
    new-instance v2, Ljava/io/File;

    .end local v2           #temp:Ljava/io/File;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v5, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v3, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .restart local v2       #temp:Ljava/io/File;
    goto :goto_1
.end method

.method public static getDirSize(Ljava/io/File;)J
    .locals 8
    .parameter "dir"

    .prologue
    const-wide/16 v0, 0x0

    .line 397
    if-nez p0, :cond_1

    .line 413
    :cond_0
    return-wide v0

    .line 400
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 403
    const-wide/16 v0, 0x0

    .line 404
    .local v0, dirSize:J
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v3

    .line 405
    .local v3, files:[Ljava/io/File;
    array-length v5, v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v2, v3, v4

    .line 406
    .local v2, file:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 407
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v0, v6

    .line 405
    :cond_2
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 408
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 409
    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v0, v6

    .line 410
    invoke-static {v2}, Lcom/inveno/newpiflow/tools/FileUtils;->getDirSize(Ljava/io/File;)J

    move-result-wide v6

    add-long/2addr v0, v6

    goto :goto_1
.end method

.method public static getDirSize(Ljava/lang/String;)J
    .locals 2
    .parameter "path"

    .prologue
    .line 393
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/inveno/newpiflow/tools/FileUtils;->getDirSize(Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static loadListFromFile(Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .parameter "path"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 368
    const/4 v2, 0x0

    .line 370
    .local v2, list:Ljava/util/List;,"Ljava/util/List<*>;"
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 371
    .local v1, freader:Ljava/io/FileInputStream;
    new-instance v3, Ljava/io/ObjectInputStream;

    invoke-direct {v3, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    .line 372
    .local v3, objectInputStream:Ljava/io/ObjectInputStream;
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/util/List;

    move-object v2, v0

    .line 373
    invoke-virtual {v3}, Ljava/io/ObjectInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 377
    .end local v1           #freader:Ljava/io/FileInputStream;
    .end local v3           #objectInputStream:Ljava/io/ObjectInputStream;
    :goto_0
    return-object v2

    .line 374
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method public static mkdir(Ljava/lang/String;)Z
    .locals 3
    .parameter "path"

    .prologue
    .line 32
    const/4 v1, 0x0

    .line 33
    .local v1, ret:Z
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 34
    .local v0, myDir:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 35
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    .line 37
    :cond_0
    return v1
.end method

.method public static moveFile(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 0
    .parameter "source"
    .parameter "dest"
    .parameter "hProgress"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    invoke-static {p0, p1, p2}, Lcom/inveno/newpiflow/tools/FileUtils;->copyFile(Ljava/lang/String;Ljava/lang/String;Landroid/os/Handler;)V

    .line 216
    invoke-static {p0}, Lcom/inveno/newpiflow/tools/FileUtils;->deleteFile(Ljava/lang/String;)Z

    .line 218
    return-void
.end method

.method public static moveFolder(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "source"
    .parameter "dest"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 222
    invoke-static {p0, p1}, Lcom/inveno/newpiflow/tools/FileUtils;->copyFolder(Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    invoke-static {p0}, Lcom/inveno/newpiflow/tools/FileUtils;->deleteDir(Ljava/lang/String;)Z

    .line 225
    return-void
.end method

.method public static readAssertFileAsList(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 6
    .parameter "context"
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 269
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 270
    .local v1, is:Ljava/io/InputStream;
    new-instance v4, Ljava/io/InputStreamReader;

    invoke-direct {v4, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 271
    .local v4, myStreamReader:Ljava/io/InputStreamReader;
    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 273
    .local v3, myBufferedReader:Ljava/io/BufferedReader;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 274
    .local v0, fileText:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    .local v2, line:Ljava/lang/String;
    if-nez v2, :cond_0

    .line 277
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    .line 278
    invoke-virtual {v4}, Ljava/io/InputStreamReader;->close()V

    .line 279
    return-object v0

    .line 275
    :cond_0
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static readAssetFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "fileName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 256
    .local v2, is:Ljava/io/InputStream;
    const/16 v4, 0x400

    new-array v1, v4, [B

    .line 257
    .local v1, bytes:[B
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 258
    .local v0, arrayOutputStream:Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 261
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 262
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 263
    new-instance v3, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([B)V

    .line 264
    .local v3, text:Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 259
    .end local v3           #text:Ljava/lang/String;
    :cond_0
    const/4 v4, 0x0

    array-length v5, v1

    invoke-virtual {v0, v1, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method

.method public static readFile(Ljava/io/File;)Ljava/util/List;
    .locals 4
    .parameter "file"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 228
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 229
    .local v3, myFileReader:Ljava/io/FileReader;
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 231
    .local v2, myBufferedReader:Ljava/io/BufferedReader;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v0, fileText:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    .local v1, line:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 235
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    .line 236
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    .line 237
    return-object v0

    .line 233
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public static readFile(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .parameter "path"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 249
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 250
    .local v0, myFile:Ljava/io/File;
    invoke-static {v0}, Lcom/inveno/newpiflow/tools/FileUtils;->readFile(Ljava/io/File;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method private static readFileStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .parameter "is"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 356
    const/16 v3, 0x400

    new-array v1, v3, [B

    .line 357
    .local v1, bytes:[B
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 358
    .local v0, arrayOutputStream:Ljava/io/ByteArrayOutputStream;
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_0

    .line 361
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 362
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 363
    new-instance v2, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 364
    .local v2, text:Ljava/lang/String;
    return-object v2

    .line 359
    .end local v2           #text:Ljava/lang/String;
    :cond_0
    const/4 v3, 0x0

    array-length v4, v1

    invoke-virtual {v0, v1, v3, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0
.end method

.method public static readFileString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 345
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 346
    .local v0, is:Ljava/io/InputStream;
    invoke-static {v0}, Lcom/inveno/newpiflow/tools/FileUtils;->readFileStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static readFileString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "path"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 351
    invoke-static {p0}, Lcom/inveno/newpiflow/tools/FileUtils;->readFileString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 352
    .local v0, ret:Ljava/lang/String;
    new-instance v1, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-direct {v1, v2, p1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method public static readInnerFile(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "context"
    .parameter "path"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 340
    invoke-virtual {p0, p1}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 341
    .local v0, is:Ljava/io/InputStream;
    invoke-static {v0}, Lcom/inveno/newpiflow/tools/FileUtils;->readFileStream(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static rewriteFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 1
    .parameter "file"
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/inveno/newpiflow/tools/FileUtils;->writeFileByWriter(Ljava/io/File;Ljava/lang/String;Z)V

    .line 47
    return-void
.end method

.method public static rewriteFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "file"
    .parameter "text"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/inveno/newpiflow/tools/FileUtils;->writeFileByStream(Ljava/io/File;Ljava/lang/String;ZLjava/lang/String;)V

    .line 43
    return-void
.end method

.method public static rewriteFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "path"
    .parameter "text"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 50
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    .local v0, myFile:Ljava/io/File;
    invoke-static {v0, p1}, Lcom/inveno/newpiflow/tools/FileUtils;->rewriteFile(Ljava/io/File;Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method public static rewriteFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "path"
    .parameter "text"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 57
    .local v0, myFile:Ljava/io/File;
    invoke-static {v0, p1, p2}, Lcom/inveno/newpiflow/tools/FileUtils;->rewriteFile(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    return-void
.end method

.method public static saveListToFile(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter "path"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 382
    .local p0, list:Ljava/util/List;,"Ljava/util/List<*>;"
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 383
    .local v1, outStream:Ljava/io/FileOutputStream;
    new-instance v0, Ljava/io/ObjectOutputStream;

    invoke-direct {v0, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 385
    .local v0, objectOutputStream:Ljava/io/ObjectOutputStream;
    invoke-virtual {v0, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 386
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 390
    .end local v0           #objectOutputStream:Ljava/io/ObjectOutputStream;
    .end local v1           #outStream:Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 387
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static toString(Ljava/util/List;)Ljava/lang/String;
    .locals 5
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 241
    .local p0, list:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, ""

    .line 242
    .local v0, ret:Ljava/lang/String;
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 245
    return-object v0

    .line 242
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 243
    .local v1, s:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static writeFileByStream(Ljava/io/File;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 2
    .parameter "file"
    .parameter "text"
    .parameter "append"
    .parameter "encoding"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 81
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0, p2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    .line 82
    .local v0, fos:Ljava/io/FileOutputStream;
    new-instance v1, Ljava/io/OutputStreamWriter;

    invoke-direct {v1, v0, p3}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 83
    .local v1, myWriter:Ljava/io/OutputStreamWriter;
    invoke-virtual {v1, p1}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    .line 84
    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V

    .line 85
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 86
    return-void
.end method

.method private static writeFileByWriter(Ljava/io/File;Ljava/lang/String;Z)V
    .locals 1
    .parameter "file"
    .parameter "text"
    .parameter "append"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, p0, p2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V

    .line 72
    .local v0, myFileWriter:Ljava/io/FileWriter;
    if-eqz p2, :cond_0

    .line 73
    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    .line 77
    :goto_0
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V

    .line 78
    return-void

    .line 75
    :cond_0
    invoke-virtual {v0, p1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    goto :goto_0
.end method
