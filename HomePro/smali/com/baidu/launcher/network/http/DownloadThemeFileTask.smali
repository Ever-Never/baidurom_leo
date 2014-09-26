.class public Lcom/baidu/launcher/network/http/DownloadThemeFileTask;
.super Ljava/lang/Object;
.source "DownloadThemeFileTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/launcher/network/http/DownloadThemeFileTask$Callback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DownloadFileTask"


# instance fields
.field public bNeedNotify:Z

.field public bSilent:Z

.field public bWifiOnly:Z

.field public callback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/baidu/launcher/network/http/DownloadThemeFileTask$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private file:Ljava/io/BufferedOutputStream;

.field private httpclient:Lorg/apache/http/impl/client/DefaultHttpClient;

.field public id:J

.field private last_progress:J

.field private volatile mCancel:Z

.field private mContext:Landroid/content/Context;

.field public mDescription:Ljava/lang/String;

.field public mDest:Ljava/lang/String;

.field public mMimeType:Ljava/lang/String;

.field private mTemp:Ljava/lang/String;

.field private mTempFile:Ljava/io/File;

.field public mTitle:Ljava/lang/String;

.field public mTotalSize:J

.field public mUrl:Ljava/lang/String;

.field public notifyType:I

.field public old_file_size:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJLcom/baidu/launcher/network/http/DownloadThemeFileTask$Callback;)V
    .locals 2
    .parameter "context"
    .parameter "url"
    .parameter "dst"
    .parameter "type"
    .parameter "title"
    .parameter "description"
    .parameter "oldSize"
    .parameter "id"
    .parameter "cb"

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->mUrl:Ljava/lang/String;

    .line 43
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->mDest:Ljava/lang/String;

    .line 45
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->mTemp:Ljava/lang/String;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->mTempFile:Ljava/io/File;

    .line 48
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->mMimeType:Ljava/lang/String;

    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->mTitle:Ljava/lang/String;

    .line 50
    const-string v0, ""

    iput-object v0, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->mDescription:Ljava/lang/String;

    .line 52
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->old_file_size:J

    .line 53
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->mTotalSize:J

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->mCancel:Z

    .line 58
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->file:Ljava/io/BufferedOutputStream;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->bWifiOnly:Z

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->bNeedNotify:Z

    .line 62
    const/4 v0, 0x0

    iput v0, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->notifyType:I

    .line 65
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->last_progress:J

    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->callback:Ljava/lang/ref/WeakReference;

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->bSilent:Z

    .line 75
    iput-object p2, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->mUrl:Ljava/lang/String;

    .line 76
    iput-object p3, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->mDest:Ljava/lang/String;

    .line 77
    iput-object p4, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->mMimeType:Ljava/lang/String;

    .line 78
    iput-object p5, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->mTitle:Ljava/lang/String;

    .line 79
    iput-object p6, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->mDescription:Ljava/lang/String;

    .line 80
    iput-wide p7, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->old_file_size:J

    .line 81
    iput-wide p9, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->id:J

    .line 83
    iput-object p1, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->mContext:Landroid/content/Context;

    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/launcher/utils/StorageUtil;->getDownloadTempDir()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->mUrl:Ljava/lang/String;

    invoke-static {v1}, Lcom/baidu/launcher/utils/Utilities;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->mTemp:Ljava/lang/String;

    .line 85
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->mTemp:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->mTempFile:Ljava/io/File;

    .line 87
    if-eqz p11, :cond_0

    .line 88
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p11}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->callback:Ljava/lang/ref/WeakReference;

    .line 91
    :cond_0
    return-void
.end method

.method private httpGet(J)V
    .locals 22
    .parameter "startpos"

    .prologue
    .line 146
    invoke-direct/range {p0 .. p0}, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->setup()V

    .line 150
    new-instance v12, Lorg/apache/http/client/methods/HttpGet;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->mUrl:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v12, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/lang/String;)V

    .line 152
    .local v12, req:Lorg/apache/http/client/methods/HttpUriRequest;
    const-wide/16 v18, 0x0

    cmp-long v18, p1, v18

    if-lez v18, :cond_0

    .line 153
    const-string v18, "RANGE"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "bytes="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move-wide/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "-"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v12, v0, v1}, Lorg/apache/http/client/methods/HttpUriRequest;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :cond_0
    const/4 v13, 0x0

    .line 159
    .local v13, resEntity:Lorg/apache/http/HttpEntity;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->httpclient:Lorg/apache/http/impl/client/DefaultHttpClient;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Lorg/apache/http/impl/client/DefaultHttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v14

    .line 161
    .local v14, response:Lorg/apache/http/HttpResponse;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->mCancel:Z

    move/from16 v18, v0

    if-nez v18, :cond_1

    .line 163
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v13

    .line 165
    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v16

    .line 167
    .local v16, total:J
    add-long v18, v16, p1

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->mTotalSize:J

    .line 170
    new-instance v11, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->mDest:Ljava/lang/String;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-direct {v11, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 172
    .local v11, oldFile:Ljava/io/File;
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_2

    invoke-virtual {v11}, Ljava/io/File;->length()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->mTotalSize:J

    move-wide/from16 v20, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    cmp-long v18, v18, v20

    if-nez v18, :cond_2

    .line 174
    :try_start_1
    invoke-interface {v12}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 179
    :goto_0
    const/16 v18, 0x0

    :try_start_2
    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->onFinish(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    .line 255
    .end local v11           #oldFile:Ljava/io/File;
    .end local v16           #total:J
    :cond_1
    :goto_1
    invoke-interface {v12}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    .line 257
    .end local v14           #response:Lorg/apache/http/HttpResponse;
    :goto_2
    return-void

    .line 175
    .restart local v11       #oldFile:Ljava/io/File;
    .restart local v14       #response:Lorg/apache/http/HttpResponse;
    .restart local v16       #total:J
    :catch_0
    move-exception v7

    .line 176
    .local v7, e:Ljava/lang/Exception;
    :try_start_3
    const-string v18, "DownloadFileTask"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "len = total, req.abort() "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v7}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_0

    .line 242
    .end local v7           #e:Ljava/lang/Exception;
    .end local v11           #oldFile:Ljava/io/File;
    .end local v14           #response:Lorg/apache/http/HttpResponse;
    .end local v16           #total:J
    :catch_1
    move-exception v7

    .line 243
    .local v7, e:Lorg/apache/http/client/ClientProtocolException;
    :try_start_4
    invoke-virtual {v7}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    .line 244
    const-string v18, "DownloadFileTask"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "1 "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v7}, Lorg/apache/http/client/ClientProtocolException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->onFinish(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 255
    invoke-interface {v12}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    goto :goto_2

    .line 181
    .end local v7           #e:Lorg/apache/http/client/ClientProtocolException;
    .restart local v11       #oldFile:Ljava/io/File;
    .restart local v14       #response:Lorg/apache/http/HttpResponse;
    .restart local v16       #total:J
    :cond_2
    :try_start_5
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 182
    invoke-virtual {v11}, Ljava/io/File;->delete()Z

    .line 185
    :cond_3
    const-wide/16 v18, 0x0

    cmp-long v18, p1, v18

    if-lez v18, :cond_4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->old_file_size:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v18, v18, v20

    if-lez v18, :cond_b

    const-wide/16 v18, 0x0

    cmp-long v18, p1, v18

    if-lez v18, :cond_b

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->mTotalSize:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->old_file_size:J

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-nez v18, :cond_b

    .line 188
    :cond_4
    const-wide/16 v18, 0x0

    cmp-long v18, p1, v18

    if-gtz v18, :cond_7

    .line 189
    new-instance v18, Ljava/io/BufferedOutputStream;

    new-instance v19, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->mTempFile:Ljava/io/File;

    move-object/from16 v20, v0

    invoke-direct/range {v19 .. v20}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct/range {v18 .. v19}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->file:Ljava/io/BufferedOutputStream;

    .line 194
    :goto_3
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->mTotalSize:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    move-wide/from16 v3, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->onProgress(JJ)V

    .line 196
    invoke-interface {v14}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v18

    invoke-interface/range {v18 .. v18}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v15

    .line 197
    .local v15, statusCode:I
    const/16 v18, 0xc8

    move/from16 v0, v18

    if-eq v0, v15, :cond_5

    const/16 v18, 0xce

    move/from16 v0, v18

    if-ne v0, v15, :cond_1

    .line 200
    :cond_5
    invoke-interface {v13}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v8

    .line 202
    .local v8, is:Ljava/io/InputStream;
    const/16 v18, 0x2000

    move/from16 v0, v18

    new-array v5, v0, [B

    .line 203
    .local v5, buf:[B
    const/4 v6, -0x1

    .line 204
    .local v6, ch:I
    move-wide/from16 v9, p1

    .line 206
    .local v9, len:J
    :cond_6
    :goto_4
    invoke-virtual {v8, v5}, Ljava/io/InputStream;->read([B)I

    move-result v6

    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v6, v0, :cond_8

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->mCancel:Z

    move/from16 v18, v0

    if-nez v18, :cond_8

    .line 207
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->file:Ljava/io/BufferedOutputStream;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-virtual {v0, v5, v1, v6}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 209
    int-to-long v0, v6

    move-wide/from16 v18, v0

    add-long v9, v9, v18

    .line 211
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->mTotalSize:J

    move-wide/from16 v18, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2, v9, v10}, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->onProgress(JJ)V

    .line 213
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->mCancel:Z

    move/from16 v18, v0

    if-eqz v18, :cond_6

    .line 214
    const-string v18, "DownloadFileTask"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "aCancel = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->mCancel:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    .line 246
    .end local v5           #buf:[B
    .end local v6           #ch:I
    .end local v8           #is:Ljava/io/InputStream;
    .end local v9           #len:J
    .end local v11           #oldFile:Ljava/io/File;
    .end local v14           #response:Lorg/apache/http/HttpResponse;
    .end local v15           #statusCode:I
    .end local v16           #total:J
    :catch_2
    move-exception v7

    .line 247
    .local v7, e:Ljava/io/IOException;
    :try_start_6
    invoke-virtual {v7}, Ljava/io/IOException;->printStackTrace()V

    .line 248
    const-string v18, "DownloadFileTask"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "2 "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v7}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 249
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->onFinish(I)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 255
    invoke-interface {v12}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    goto/16 :goto_2

    .line 191
    .end local v7           #e:Ljava/io/IOException;
    .restart local v11       #oldFile:Ljava/io/File;
    .restart local v14       #response:Lorg/apache/http/HttpResponse;
    .restart local v16       #total:J
    :cond_7
    :try_start_7
    new-instance v18, Ljava/io/BufferedOutputStream;

    new-instance v19, Ljava/io/FileOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->mTempFile:Ljava/io/File;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-direct/range {v19 .. v21}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    invoke-direct/range {v18 .. v19}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->file:Ljava/io/BufferedOutputStream;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    goto/16 :goto_3

    .line 250
    .end local v11           #oldFile:Ljava/io/File;
    .end local v14           #response:Lorg/apache/http/HttpResponse;
    .end local v16           #total:J
    :catch_3
    move-exception v7

    .line 251
    .local v7, e:Ljava/lang/Exception;
    :try_start_8
    invoke-virtual {v7}, Ljava/lang/Exception;->printStackTrace()V

    .line 252
    const-string v18, "DownloadFileTask"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "3 "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v7}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 253
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->onFinish(I)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 255
    invoke-interface {v12}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    goto/16 :goto_2

    .line 217
    .end local v7           #e:Ljava/lang/Exception;
    .restart local v5       #buf:[B
    .restart local v6       #ch:I
    .restart local v8       #is:Ljava/io/InputStream;
    .restart local v9       #len:J
    .restart local v11       #oldFile:Ljava/io/File;
    .restart local v14       #response:Lorg/apache/http/HttpResponse;
    .restart local v15       #statusCode:I
    .restart local v16       #total:J
    :cond_8
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->file:Ljava/io/BufferedOutputStream;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedOutputStream;->flush()V

    .line 218
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->file:Ljava/io/BufferedOutputStream;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedOutputStream;->close()V

    .line 220
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->mCancel:Z

    move/from16 v18, v0

    if-eqz v18, :cond_9

    .line 221
    const/16 v18, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->onFinish(I)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_2
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    goto/16 :goto_1

    .line 255
    .end local v5           #buf:[B
    .end local v6           #ch:I
    .end local v8           #is:Ljava/io/InputStream;
    .end local v9           #len:J
    .end local v11           #oldFile:Ljava/io/File;
    .end local v14           #response:Lorg/apache/http/HttpResponse;
    .end local v15           #statusCode:I
    .end local v16           #total:J
    :catchall_0
    move-exception v18

    invoke-interface {v12}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V

    throw v18

    .line 223
    .restart local v5       #buf:[B
    .restart local v6       #ch:I
    .restart local v8       #is:Ljava/io/InputStream;
    .restart local v9       #len:J
    .restart local v11       #oldFile:Ljava/io/File;
    .restart local v14       #response:Lorg/apache/http/HttpResponse;
    .restart local v15       #statusCode:I
    .restart local v16       #total:J
    :cond_9
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->mTempFile:Ljava/io/File;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/File;->length()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->mTotalSize:J

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-eqz v18, :cond_a

    .line 224
    const-string v18, "DownloadFileTask"

    const-string v19, "download error, length != total"

    invoke-static/range {v18 .. v19}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    const/16 v18, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->onFinish(I)V

    goto/16 :goto_1

    .line 229
    :cond_a
    const/16 v18, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->onFinish(I)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    goto/16 :goto_1

    .line 234
    .end local v5           #buf:[B
    .end local v6           #ch:I
    .end local v8           #is:Ljava/io/InputStream;
    .end local v9           #len:J
    .end local v15           #statusCode:I
    :cond_b
    :try_start_b
    invoke-interface {v12}, Lorg/apache/http/client/methods/HttpUriRequest;->abort()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_b .. :try_end_b} :catch_1
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    .line 238
    :goto_5
    const-wide/16 v18, 0x0

    :try_start_c
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->httpGet(J)V

    goto/16 :goto_1

    .line 235
    :catch_4
    move-exception v7

    .line 236
    .restart local v7       #e:Ljava/lang/Exception;
    const-string v18, "DownloadFileTask"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "req.abort "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v7}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_2
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3

    goto :goto_5
.end method

.method private setup()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 94
    new-instance v0, Lorg/apache/http/params/BasicHttpParams;

    invoke-direct {v0}, Lorg/apache/http/params/BasicHttpParams;-><init>()V

    .line 95
    .local v0, httpParams:Lorg/apache/http/params/HttpParams;
    sget-object v1, Lorg/apache/http/HttpVersion;->HTTP_1_1:Lorg/apache/http/HttpVersion;

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setVersion(Lorg/apache/http/params/HttpParams;Lorg/apache/http/ProtocolVersion;)V

    .line 96
    const-string v1, "utf-8"

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpProtocolParams;->setContentCharset(Lorg/apache/http/params/HttpParams;Ljava/lang/String;)V

    .line 97
    invoke-static {v0, v4}, Lorg/apache/http/params/HttpProtocolParams;->setUseExpectContinue(Lorg/apache/http/params/HttpParams;Z)V

    .line 98
    const/16 v1, 0x1770

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setConnectionTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 99
    const/16 v1, 0x2710

    invoke-static {v0, v1}, Lorg/apache/http/params/HttpConnectionParams;->setSoTimeout(Lorg/apache/http/params/HttpParams;I)V

    .line 100
    new-instance v1, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v1, v0}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>(Lorg/apache/http/params/HttpParams;)V

    iput-object v1, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->httpclient:Lorg/apache/http/impl/client/DefaultHttpClient;

    .line 101
    iget-object v1, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->httpclient:Lorg/apache/http/impl/client/DefaultHttpClient;

    new-instance v2, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;

    const/4 v3, 0x3

    invoke-direct {v2, v3, v4}, Lorg/apache/http/impl/client/DefaultHttpRequestRetryHandler;-><init>(IZ)V

    invoke-virtual {v1, v2}, Lorg/apache/http/impl/client/DefaultHttpClient;->setHttpRequestRetryHandler(Lorg/apache/http/client/HttpRequestRetryHandler;)V

    .line 102
    return-void
.end method

.method private start()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 106
    iget-boolean v2, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->mCancel:Z

    if-nez v2, :cond_6

    .line 107
    invoke-virtual {p0}, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->onStart()V

    .line 109
    invoke-static {}, Lcom/baidu/launcher/utils/StorageUtil;->IsSdCardMounted()Z

    move-result v2

    if-nez v2, :cond_0

    .line 110
    const-string v2, "DownloadFileTask"

    const-string v3, "sd card not mounted"

    invoke-static {v2, v3}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->onFinish(I)V

    .line 143
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-boolean v2, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->bWifiOnly:Z

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->isWifiConnection(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 114
    invoke-virtual {p0, v3}, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->onFinish(I)V

    goto :goto_0

    .line 116
    :cond_1
    iget-object v2, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->isNetworkConnectivity(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 118
    const-wide/16 v0, 0x0

    .line 120
    .local v0, pos:J
    iget-object v2, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->mTempFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 122
    iget-wide v2, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->old_file_size:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gtz v2, :cond_3

    .line 123
    iget-object v2, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->mTempFile:Ljava/io/File;

    invoke-static {v2}, Lcom/baidu/launcher/utils/StorageUtil;->deleteDir(Ljava/io/File;)V

    .line 129
    :cond_2
    :goto_1
    iget-object v2, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->mTempFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-wide v2, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->old_file_size:J

    iget-object v4, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->mTempFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    .line 131
    const-string v2, "DownloadFileTask"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "old_file_size == "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->mTempFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->length()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->onFinish(I)V

    goto :goto_0

    .line 125
    :cond_3
    iget-object v2, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->mTempFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v0

    goto :goto_1

    .line 135
    :cond_4
    invoke-direct {p0, v0, v1}, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->httpGet(J)V

    goto :goto_0

    .line 138
    .end local v0           #pos:J
    :cond_5
    invoke-virtual {p0, v3}, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->onFinish(I)V

    goto :goto_0

    .line 141
    :cond_6
    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->onFinish(I)V

    goto :goto_0
.end method


# virtual methods
.method public onFinish(I)V
    .locals 11
    .parameter "result"

    .prologue
    .line 304
    if-nez p1, :cond_0

    .line 305
    new-instance v1, Ljava/io/File;

    iget-object v6, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->mDest:Ljava/lang/String;

    invoke-direct {v1, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 306
    .local v1, dst:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->mTotalSize:J

    cmp-long v6, v6, v8

    if-nez v6, :cond_4

    .line 307
    const-string v6, "DownloadFileTask"

    const-string v7, "dst file already exists"

    invoke-static {v6, v7}, Lcom/baidu/launcher/utils/LogEx;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 320
    .end local v1           #dst:Ljava/io/File;
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->callback:Ljava/lang/ref/WeakReference;

    if-eqz v6, :cond_1

    .line 321
    iget-object v6, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask$Callback;

    .line 322
    .local v0, cb:Lcom/baidu/launcher/network/http/DownloadThemeFileTask$Callback;
    if-eqz v0, :cond_1

    .line 323
    iget-wide v6, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->id:J

    invoke-interface {v0, v6, v7}, Lcom/baidu/launcher/network/http/DownloadThemeFileTask$Callback;->onFinish(J)V

    .line 327
    .end local v0           #cb:Lcom/baidu/launcher/network/http/DownloadThemeFileTask$Callback;
    :cond_1
    new-instance v2, Landroid/content/Intent;

    const-string v6, "com.baidu.launcher.download_completed"

    invoke-direct {v2, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 328
    .local v2, intent:Landroid/content/Intent;
    const-string v6, "extra_id"

    iget-wide v7, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->id:J

    invoke-virtual {v2, v6, v7, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 329
    const-string v6, "extra_result"

    invoke-virtual {v2, v6, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 330
    const-string v6, "extra_dest_path"

    iget-object v7, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->mDest:Ljava/lang/String;

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 332
    const-string v6, "DownloadFileTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "need nof "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-boolean v8, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->bNeedNotify:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    iget-boolean v6, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->bNeedNotify:Z

    if-eqz v6, :cond_2

    .line 335
    const-string v6, "extra_notify_type"

    iget v7, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->notifyType:I

    invoke-virtual {v2, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 338
    :cond_2
    iget-object v6, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->mContext:Landroid/content/Context;

    invoke-virtual {v6, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 340
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    .line 342
    .local v5, values:Landroid/content/ContentValues;
    const-string v6, "total_size"

    iget-wide v7, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->mTotalSize:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 343
    const-string v6, "status"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 345
    iget-object v6, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/baidu/launcher/utils/Constant;->DOWNLOAD_URI:Landroid/net/Uri;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "_id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v9, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->id:J

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v5, v8, v9}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 349
    const-string v6, "DownloadFileTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onFinish "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->mDest:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/baidu/launcher/utils/LogEx;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    const-string v6, "DownloadFileTask"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onFinish "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/baidu/launcher/utils/LogEx;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    iget-boolean v6, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->bSilent:Z

    if-nez v6, :cond_3

    .line 353
    new-instance v3, Landroid/os/Message;

    invoke-direct {v3}, Landroid/os/Message;-><init>()V

    .line 354
    .local v3, msg:Landroid/os/Message;
    const/16 v6, 0x67

    iput v6, v3, Landroid/os/Message;->what:I

    .line 356
    const/4 v6, 0x3

    if-ne p1, v6, :cond_5

    .line 357
    iget-object v6, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->mContext:Landroid/content/Context;

    const v7, 0x7f0c00d6

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 358
    iget-object v6, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/baidu/launcher/app/LauncherApplication;

    iget-object v6, v6, Lcom/baidu/launcher/app/LauncherApplication;->handler:Lcom/baidu/launcher/app/LauncherApplication$LauncherHandler;

    invoke-virtual {v6, v3}, Lcom/baidu/launcher/app/LauncherApplication$LauncherHandler;->sendMessage(Landroid/os/Message;)Z

    .line 368
    .end local v3           #msg:Landroid/os/Message;
    :cond_3
    :goto_1
    return-void

    .line 309
    .end local v2           #intent:Landroid/content/Intent;
    .end local v5           #values:Landroid/content/ContentValues;
    .restart local v1       #dst:Ljava/io/File;
    :cond_4
    invoke-static {v1}, Lcom/baidu/launcher/utils/StorageUtil;->deleteDir(Ljava/io/File;)V

    .line 310
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 311
    iget-object v6, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->mTempFile:Ljava/io/File;

    invoke-virtual {v6, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v4

    .line 313
    .local v4, ret:Z
    if-nez v4, :cond_0

    .line 314
    const-string v6, "DownloadFileTask"

    const-string v7, "rename error"

    invoke-static {v6, v7}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 315
    const/4 p1, 0x1

    goto/16 :goto_0

    .line 359
    .end local v1           #dst:Ljava/io/File;
    .end local v4           #ret:Z
    .restart local v2       #intent:Landroid/content/Intent;
    .restart local v3       #msg:Landroid/os/Message;
    .restart local v5       #values:Landroid/content/ContentValues;
    :cond_5
    const/4 v6, 0x1

    if-ne p1, v6, :cond_3

    .line 360
    iget-object v6, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/baidu/launcher/utils/PhoneInfoStateManager;->isNetworkConnectivity(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 361
    iget-object v6, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->mContext:Landroid/content/Context;

    const v7, 0x7f0c020e

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 365
    :goto_2
    iget-object v6, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    check-cast v6, Lcom/baidu/launcher/app/LauncherApplication;

    iget-object v6, v6, Lcom/baidu/launcher/app/LauncherApplication;->handler:Lcom/baidu/launcher/app/LauncherApplication$LauncherHandler;

    invoke-virtual {v6, v3}, Lcom/baidu/launcher/app/LauncherApplication$LauncherHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    .line 363
    :cond_6
    iget-object v6, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->mContext:Landroid/content/Context;

    const v7, 0x7f0c020f

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_2
.end method

.method public onProgress(JJ)V
    .locals 7
    .parameter "total"
    .parameter "current"

    .prologue
    .line 281
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 282
    .local v0, _now:J
    iget-wide v3, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->last_progress:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    iget-wide v3, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->last_progress:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0x3e8

    cmp-long v3, v3, v5

    if-lez v3, :cond_1

    .line 284
    :cond_0
    iput-wide v0, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->last_progress:J

    .line 286
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.baidu.launcher.download_progress"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 287
    .local v2, intent:Landroid/content/Intent;
    const-string v3, "extra_id"

    iget-wide v4, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->id:J

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 288
    const-string v3, "extra_total"

    invoke-virtual {v2, v3, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 289
    const-string v3, "extra_current"

    invoke-virtual {v2, v3, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 290
    const-string v3, "extra_url"

    iget-object v4, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->mUrl:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    const-string v3, "extra_mimetype"

    iget-object v4, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->mMimeType:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    iget-object v3, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 297
    .end local v2           #intent:Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 5

    .prologue
    .line 271
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.baidu.launcher.download_start"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 272
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "extra_id"

    iget-wide v2, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->id:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 274
    iget-object v1, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 276
    const-string v1, "DownloadFileTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onStart"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->id:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/launcher/utils/LogEx;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    return-void
.end method

.method public run()V
    .locals 0

    .prologue
    .line 266
    invoke-direct {p0}, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->start()V

    .line 267
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/baidu/launcher/network/http/DownloadThemeFileTask;->mCancel:Z

    .line 262
    return-void
.end method
