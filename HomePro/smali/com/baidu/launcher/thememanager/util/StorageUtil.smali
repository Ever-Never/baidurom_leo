.class public Lcom/baidu/launcher/thememanager/util/StorageUtil;
.super Ljava/lang/Object;
.source "StorageUtil.java"


# static fields
.field public static final DEFAULTSIZE:I = 0x190

.field public static final DEFAULTTHEME:[Ljava/lang/String; = null

.field public static final DEFAULTWALLPAPER:Ljava/lang/String; = "wallpaper_preview.jpg"

.field private static final TAG:Ljava/lang/String; = "StorageUtil"

.field private static externaldir:Ljava/lang/String; = null

.field private static final minSpaceMB:I = 0xf


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 24
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "defaultTheme.btp"

    aput-object v2, v0, v1

    sput-object v0, Lcom/baidu/launcher/thememanager/util/StorageUtil;->DEFAULTTHEME:[Ljava/lang/String;

    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/baidu/launcher/thememanager/util/StorageUtil;->externaldir:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static FileCopy(Ljava/lang/String;Ljava/lang/String;)I
    .locals 10
    .parameter "fromFile"
    .parameter "toFile"

    .prologue
    const/4 v8, 0x0

    .line 102
    const/4 v4, 0x0

    .line 103
    .local v4, fosfrom:Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 105
    .local v6, fosto:Ljava/io/OutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/util/zip/ZipException; {:try_start_0 .. :try_end_0} :catch_14
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9

    .line 106
    .end local v4           #fosfrom:Ljava/io/InputStream;
    .local v5, fosfrom:Ljava/io/InputStream;
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/util/zip/ZipException; {:try_start_1 .. :try_end_1} :catch_15
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_12
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_10
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_e
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_c

    .line 107
    .end local v6           #fosto:Ljava/io/OutputStream;
    .local v7, fosto:Ljava/io/OutputStream;
    const/16 v9, 0x2000

    :try_start_2
    new-array v0, v9, [B

    .line 109
    .local v0, bt:[B
    :goto_0
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, c:I
    if-lez v1, :cond_2

    .line 110
    const/4 v9, 0x0

    invoke-virtual {v7, v0, v9, v1}, Ljava/io/OutputStream;->write([BII)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2
    .catch Ljava/util/zip/ZipException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_d

    goto :goto_0

    .line 116
    .end local v0           #bt:[B
    .end local v1           #c:I
    :catch_0
    move-exception v2

    move-object v6, v7

    .end local v7           #fosto:Ljava/io/OutputStream;
    .restart local v6       #fosto:Ljava/io/OutputStream;
    move-object v4, v5

    .line 117
    .end local v5           #fosfrom:Ljava/io/InputStream;
    .local v2, e:Ljava/util/zip/ZipException;
    .restart local v4       #fosfrom:Ljava/io/InputStream;
    :goto_1
    :try_start_3
    invoke-virtual {v2}, Ljava/util/zip/ZipException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 128
    if-eqz v4, :cond_0

    .line 129
    :try_start_4
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 131
    :cond_0
    if-eqz v6, :cond_1

    .line 132
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 138
    .end local v2           #e:Ljava/util/zip/ZipException;
    :cond_1
    :goto_2
    const/4 v8, -0x1

    :goto_3
    return v8

    .line 112
    .end local v4           #fosfrom:Ljava/io/InputStream;
    .end local v6           #fosto:Ljava/io/OutputStream;
    .restart local v0       #bt:[B
    .restart local v1       #c:I
    .restart local v5       #fosfrom:Ljava/io/InputStream;
    .restart local v7       #fosto:Ljava/io/OutputStream;
    :cond_2
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 113
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2
    .catch Ljava/util/zip/ZipException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_13
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_11
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_d

    .line 128
    if-eqz v5, :cond_3

    .line 129
    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 131
    :cond_3
    if-eqz v7, :cond_4

    .line 132
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    :cond_4
    :goto_4
    move-object v6, v7

    .end local v7           #fosto:Ljava/io/OutputStream;
    .restart local v6       #fosto:Ljava/io/OutputStream;
    move-object v4, v5

    .line 136
    .end local v5           #fosfrom:Ljava/io/InputStream;
    .restart local v4       #fosfrom:Ljava/io/InputStream;
    goto :goto_3

    .line 134
    .end local v4           #fosfrom:Ljava/io/InputStream;
    .end local v6           #fosto:Ljava/io/OutputStream;
    .restart local v5       #fosfrom:Ljava/io/InputStream;
    .restart local v7       #fosto:Ljava/io/OutputStream;
    :catch_1
    move-exception v2

    .line 135
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 134
    .end local v0           #bt:[B
    .end local v1           #c:I
    .end local v5           #fosfrom:Ljava/io/InputStream;
    .end local v7           #fosto:Ljava/io/OutputStream;
    .local v2, e:Ljava/util/zip/ZipException;
    .restart local v4       #fosfrom:Ljava/io/InputStream;
    .restart local v6       #fosto:Ljava/io/OutputStream;
    :catch_2
    move-exception v2

    .line 135
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 118
    .end local v2           #e:Ljava/io/IOException;
    :catch_3
    move-exception v2

    .line 119
    .local v2, e:Ljava/lang/IllegalStateException;
    :goto_5
    :try_start_7
    invoke-virtual {v2}, Ljava/lang/IllegalStateException;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 128
    if-eqz v4, :cond_5

    .line 129
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 131
    :cond_5
    if-eqz v6, :cond_1

    .line 132
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_2

    .line 134
    :catch_4
    move-exception v2

    .line 135
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 120
    .end local v2           #e:Ljava/io/IOException;
    :catch_5
    move-exception v2

    .line 121
    .local v2, e:Ljava/lang/NullPointerException;
    :goto_6
    :try_start_9
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 128
    if-eqz v4, :cond_6

    .line 129
    :try_start_a
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 131
    :cond_6
    if-eqz v6, :cond_1

    .line 132
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_6

    goto :goto_2

    .line 134
    :catch_6
    move-exception v2

    .line 135
    .local v2, e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 122
    .end local v2           #e:Ljava/io/IOException;
    :catch_7
    move-exception v2

    .line 123
    .restart local v2       #e:Ljava/io/IOException;
    :goto_7
    :try_start_b
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 128
    if-eqz v4, :cond_7

    .line 129
    :try_start_c
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 131
    :cond_7
    if-eqz v6, :cond_1

    .line 132
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_8

    goto :goto_2

    .line 134
    :catch_8
    move-exception v2

    .line 135
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 124
    .end local v2           #e:Ljava/io/IOException;
    :catch_9
    move-exception v3

    .line 125
    .local v3, ex:Ljava/lang/Exception;
    :goto_8
    :try_start_d
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 128
    if-eqz v4, :cond_8

    .line 129
    :try_start_e
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 131
    :cond_8
    if-eqz v6, :cond_1

    .line 132
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_a

    goto :goto_2

    .line 134
    :catch_a
    move-exception v2

    .line 135
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 127
    .end local v2           #e:Ljava/io/IOException;
    .end local v3           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 128
    :goto_9
    if-eqz v4, :cond_9

    .line 129
    :try_start_f
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V

    .line 131
    :cond_9
    if-eqz v6, :cond_a

    .line 132
    invoke-virtual {v6}, Ljava/io/OutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_b

    .line 136
    :cond_a
    :goto_a
    throw v8

    .line 134
    :catch_b
    move-exception v2

    .line 135
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_a

    .line 127
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #fosfrom:Ljava/io/InputStream;
    .restart local v5       #fosfrom:Ljava/io/InputStream;
    :catchall_1
    move-exception v8

    move-object v4, v5

    .end local v5           #fosfrom:Ljava/io/InputStream;
    .restart local v4       #fosfrom:Ljava/io/InputStream;
    goto :goto_9

    .end local v4           #fosfrom:Ljava/io/InputStream;
    .end local v6           #fosto:Ljava/io/OutputStream;
    .restart local v5       #fosfrom:Ljava/io/InputStream;
    .restart local v7       #fosto:Ljava/io/OutputStream;
    :catchall_2
    move-exception v8

    move-object v6, v7

    .end local v7           #fosto:Ljava/io/OutputStream;
    .restart local v6       #fosto:Ljava/io/OutputStream;
    move-object v4, v5

    .end local v5           #fosfrom:Ljava/io/InputStream;
    .restart local v4       #fosfrom:Ljava/io/InputStream;
    goto :goto_9

    .line 124
    .end local v4           #fosfrom:Ljava/io/InputStream;
    .restart local v5       #fosfrom:Ljava/io/InputStream;
    :catch_c
    move-exception v3

    move-object v4, v5

    .end local v5           #fosfrom:Ljava/io/InputStream;
    .restart local v4       #fosfrom:Ljava/io/InputStream;
    goto :goto_8

    .end local v4           #fosfrom:Ljava/io/InputStream;
    .end local v6           #fosto:Ljava/io/OutputStream;
    .restart local v5       #fosfrom:Ljava/io/InputStream;
    .restart local v7       #fosto:Ljava/io/OutputStream;
    :catch_d
    move-exception v3

    move-object v6, v7

    .end local v7           #fosto:Ljava/io/OutputStream;
    .restart local v6       #fosto:Ljava/io/OutputStream;
    move-object v4, v5

    .end local v5           #fosfrom:Ljava/io/InputStream;
    .restart local v4       #fosfrom:Ljava/io/InputStream;
    goto :goto_8

    .line 122
    .end local v4           #fosfrom:Ljava/io/InputStream;
    .restart local v5       #fosfrom:Ljava/io/InputStream;
    :catch_e
    move-exception v2

    move-object v4, v5

    .end local v5           #fosfrom:Ljava/io/InputStream;
    .restart local v4       #fosfrom:Ljava/io/InputStream;
    goto :goto_7

    .end local v4           #fosfrom:Ljava/io/InputStream;
    .end local v6           #fosto:Ljava/io/OutputStream;
    .restart local v5       #fosfrom:Ljava/io/InputStream;
    .restart local v7       #fosto:Ljava/io/OutputStream;
    :catch_f
    move-exception v2

    move-object v6, v7

    .end local v7           #fosto:Ljava/io/OutputStream;
    .restart local v6       #fosto:Ljava/io/OutputStream;
    move-object v4, v5

    .end local v5           #fosfrom:Ljava/io/InputStream;
    .restart local v4       #fosfrom:Ljava/io/InputStream;
    goto :goto_7

    .line 120
    .end local v4           #fosfrom:Ljava/io/InputStream;
    .restart local v5       #fosfrom:Ljava/io/InputStream;
    :catch_10
    move-exception v2

    move-object v4, v5

    .end local v5           #fosfrom:Ljava/io/InputStream;
    .restart local v4       #fosfrom:Ljava/io/InputStream;
    goto :goto_6

    .end local v4           #fosfrom:Ljava/io/InputStream;
    .end local v6           #fosto:Ljava/io/OutputStream;
    .restart local v5       #fosfrom:Ljava/io/InputStream;
    .restart local v7       #fosto:Ljava/io/OutputStream;
    :catch_11
    move-exception v2

    move-object v6, v7

    .end local v7           #fosto:Ljava/io/OutputStream;
    .restart local v6       #fosto:Ljava/io/OutputStream;
    move-object v4, v5

    .end local v5           #fosfrom:Ljava/io/InputStream;
    .restart local v4       #fosfrom:Ljava/io/InputStream;
    goto :goto_6

    .line 118
    .end local v4           #fosfrom:Ljava/io/InputStream;
    .restart local v5       #fosfrom:Ljava/io/InputStream;
    :catch_12
    move-exception v2

    move-object v4, v5

    .end local v5           #fosfrom:Ljava/io/InputStream;
    .restart local v4       #fosfrom:Ljava/io/InputStream;
    goto :goto_5

    .end local v4           #fosfrom:Ljava/io/InputStream;
    .end local v6           #fosto:Ljava/io/OutputStream;
    .restart local v5       #fosfrom:Ljava/io/InputStream;
    .restart local v7       #fosto:Ljava/io/OutputStream;
    :catch_13
    move-exception v2

    move-object v6, v7

    .end local v7           #fosto:Ljava/io/OutputStream;
    .restart local v6       #fosto:Ljava/io/OutputStream;
    move-object v4, v5

    .end local v5           #fosfrom:Ljava/io/InputStream;
    .restart local v4       #fosfrom:Ljava/io/InputStream;
    goto/16 :goto_5

    .line 116
    :catch_14
    move-exception v2

    goto/16 :goto_1

    .end local v4           #fosfrom:Ljava/io/InputStream;
    .restart local v5       #fosfrom:Ljava/io/InputStream;
    :catch_15
    move-exception v2

    move-object v4, v5

    .end local v5           #fosfrom:Ljava/io/InputStream;
    .restart local v4       #fosfrom:Ljava/io/InputStream;
    goto/16 :goto_1
.end method

.method public static FileRename(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "srcPath"
    .parameter "oriPath"

    .prologue
    .line 143
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 144
    .local v0, srcFile:Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    .line 145
    return-void
.end method

.method public static FolderCopy(Ljava/lang/String;Ljava/lang/String;)I
    .locals 9
    .parameter "fromFile"
    .parameter "toFile"

    .prologue
    .line 57
    const/4 v3, 0x0

    .line 58
    .local v3, ret:I
    const/4 v1, 0x0

    .line 59
    .local v1, currentFiles:[Ljava/io/File;
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 61
    .local v4, root:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 62
    const/4 v3, -0x1

    .line 65
    :cond_0
    if-nez v3, :cond_1

    .line 66
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 68
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 69
    .local v5, targetDir:Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_1

    .line 70
    invoke-virtual {v5}, Ljava/io/File;->mkdirs()Z

    move-result v6

    if-nez v6, :cond_1

    .line 71
    const/4 v3, -0x1

    .line 76
    .end local v5           #targetDir:Ljava/io/File;
    :cond_1
    if-nez v3, :cond_2

    if-eqz v1, :cond_2

    .line 77
    const/4 v2, 0x0

    .local v2, i:I
    :goto_0
    array-length v6, v1

    if-ge v2, v6, :cond_2

    .line 78
    aget-object v6, v1, v2

    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 80
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v7, v1, v2

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v1, v2

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget-object v8, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/baidu/launcher/thememanager/util/StorageUtil;->FolderCopy(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 84
    .local v0, _ret:I
    if-eqz v0, :cond_4

    .line 97
    .end local v0           #_ret:I
    .end local v2           #i:I
    :cond_2
    return v3

    .line 89
    .restart local v2       #i:I
    :cond_3
    aget-object v6, v1, v2

    invoke-virtual {v6}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-object v8, v1, v2

    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/baidu/launcher/thememanager/util/StorageUtil;->FileCopy(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 91
    .restart local v0       #_ret:I
    if-nez v0, :cond_2

    .line 77
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 4
    .parameter "input"
    .parameter "output"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 273
    const/16 v3, 0x2000

    new-array v0, v3, [B

    .line 274
    .local v0, buffer:[B
    const/4 v1, 0x0

    .line 275
    .local v1, count:I
    const/4 v2, 0x0

    .line 276
    .local v2, n:I
    :goto_0
    const/4 v3, -0x1

    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-eq v3, v2, :cond_0

    .line 277
    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 278
    add-int/2addr v1, v2

    goto :goto_0

    .line 280
    :cond_0
    return v1
.end method

.method public static copyDefalutResource2Sdcard(Landroid/content/Context;)V
    .locals 12
    .parameter "ctx"

    .prologue
    .line 289
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v10

    const-string v11, "mounted"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 344
    :cond_0
    :goto_0
    return-void

    .line 293
    :cond_1
    new-instance v9, Ljava/io/File;

    invoke-static {}, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->DEFAULT_FOLDER()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 294
    .local v9, newfile:Ljava/io/File;
    invoke-virtual {v9}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_2

    .line 295
    invoke-virtual {v9}, Ljava/io/File;->mkdirs()Z

    .line 298
    :cond_2
    if-eqz p0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v10

    const-string v11, "mounted"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 300
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    .line 301
    .local v0, assets:Landroid/content/res/AssetManager;
    const/4 v7, 0x0

    .line 302
    .local v7, in:Ljava/io/InputStream;
    const/4 v4, 0x0

    .line 304
    .local v4, fos:Ljava/io/FileOutputStream;
    const/4 v8, -0x1

    .line 305
    .local v8, len:I
    const/16 v10, 0x4000

    new-array v1, v10, [B

    .line 308
    .local v1, buffer:[B
    const/4 v6, 0x0

    .local v6, i:I
    move-object v5, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .local v5, fos:Ljava/io/FileOutputStream;
    :goto_1
    :try_start_0
    sget-object v10, Lcom/baidu/launcher/thememanager/util/StorageUtil;->DEFAULTTHEME:[Ljava/lang/String;

    array-length v10, v10

    if-ge v6, v10, :cond_9

    .line 310
    sget-object v10, Lcom/baidu/launcher/thememanager/util/StorageUtil;->DEFAULTTHEME:[Ljava/lang/String;

    aget-object v10, v10, v6

    invoke-static {v10, p0}, Lcom/baidu/launcher/thememanager/util/ThemeUtils;->defaultThemeExsits(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v10

    if-eqz v10, :cond_3

    move-object v4, v5

    .line 308
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :goto_2
    add-int/lit8 v6, v6, 0x1

    move-object v5, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    goto :goto_1

    .line 313
    :cond_3
    sget-object v10, Lcom/baidu/launcher/thememanager/util/StorageUtil;->DEFAULTTHEME:[Ljava/lang/String;

    aget-object v10, v10, v6

    invoke-virtual {v0, v10}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v7

    .line 314
    if-eqz v7, :cond_b

    .line 315
    new-instance v3, Ljava/io/File;

    invoke-static {}, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->DEFAULT_FOLDER()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 317
    .local v3, file:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_4

    .line 318
    invoke-virtual {v3}, Ljava/io/File;->mkdirs()Z

    .line 320
    :cond_4
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->DEFAULT_FOLDER()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Lcom/baidu/launcher/thememanager/util/StorageUtil;->DEFAULTTHEME:[Ljava/lang/String;

    aget-object v11, v11, v6

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 322
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :goto_3
    :try_start_1
    invoke-virtual {v7, v1}, Ljava/io/InputStream;->read([B)I

    move-result v8

    if-lez v8, :cond_6

    .line 323
    const/4 v10, 0x0

    invoke-virtual {v4, v1, v10, v8}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    .line 331
    :catch_0
    move-exception v2

    .line 332
    .end local v3           #file:Ljava/io/File;
    .local v2, e:Ljava/io/IOException;
    :goto_4
    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 335
    if-eqz v7, :cond_5

    :try_start_3
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 336
    :cond_5
    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 337
    :catch_1
    move-exception v2

    .line 338
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 326
    .end local v2           #e:Ljava/io/IOException;
    .restart local v3       #file:Ljava/io/File;
    :cond_6
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 327
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v10

    invoke-virtual {v10}, Ljava/io/FileDescriptor;->sync()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    .line 334
    .end local v3           #file:Ljava/io/File;
    :catchall_0
    move-exception v10

    .line 335
    :goto_5
    if-eqz v7, :cond_7

    :try_start_5
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 336
    :cond_7
    if-eqz v4, :cond_8

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 339
    :cond_8
    :goto_6
    throw v10

    .line 335
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :cond_9
    if-eqz v7, :cond_a

    :try_start_6
    invoke-virtual {v7}, Ljava/io/InputStream;->close()V

    .line 336
    :cond_a
    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto/16 :goto_0

    .line 337
    :catch_2
    move-exception v2

    .line 338
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 337
    .end local v2           #e:Ljava/io/IOException;
    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catch_3
    move-exception v2

    .line 338
    .restart local v2       #e:Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    .line 334
    .end local v2           #e:Ljava/io/IOException;
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v10

    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_5

    .line 331
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :catch_4
    move-exception v2

    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto :goto_4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v5       #fos:Ljava/io/FileOutputStream;
    :cond_b
    move-object v4, v5

    .end local v5           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    goto/16 :goto_2
.end method

.method public static copyDefalutWallpaper2Sdcard(Landroid/content/Context;)V
    .locals 11
    .parameter "ctx"

    .prologue
    .line 358
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v9

    const-string v10, "mounted"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 409
    :cond_0
    :goto_0
    return-void

    .line 362
    :cond_1
    new-instance v7, Ljava/io/File;

    invoke-static {}, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->DEFAULT_FOLDER()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 363
    .local v7, newfile:Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_2

    .line 364
    invoke-virtual {v7}, Ljava/io/File;->mkdirs()Z

    .line 367
    :cond_2
    if-eqz p0, :cond_0

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v9

    const-string v10, "mounted"

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 369
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    .line 370
    .local v8, resources:Landroid/content/res/Resources;
    const/4 v5, 0x0

    .line 371
    .local v5, in:Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 372
    .local v3, fos:Ljava/io/FileOutputStream;
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->DEFAULT_FOLDER()Ljava/lang/String;

    move-result-object v9

    const-string v10, "wallpaper_preview.jpg"

    invoke-direct {v2, v9, v10}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 373
    .local v2, file:Ljava/io/File;
    const/4 v6, -0x1

    .line 374
    .local v6, len:I
    const/16 v9, 0x4000

    new-array v0, v9, [B

    .line 379
    .local v0, buffer:[B
    :try_start_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_3

    .line 380
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 382
    :cond_3
    const v9, 0x7f020372

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    .line 383
    if-eqz v5, :cond_6

    .line 385
    new-instance v4, Ljava/io/FileOutputStream;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->DEFAULT_FOLDER()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v10, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "wallpaper_preview.jpg"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v4, v9}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    .line 387
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .local v4, fos:Ljava/io/FileOutputStream;
    :goto_1
    :try_start_1
    invoke-virtual {v5, v0}, Ljava/io/InputStream;->read([B)I

    move-result v6

    if-lez v6, :cond_5

    .line 388
    const/4 v9, 0x0

    invoke-virtual {v4, v0, v9, v6}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 396
    :catch_0
    move-exception v1

    move-object v3, v4

    .line 397
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .local v1, e:Ljava/io/IOException;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :goto_2
    :try_start_2
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 400
    if-eqz v5, :cond_4

    :try_start_3
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 401
    :cond_4
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0

    .line 402
    :catch_1
    move-exception v1

    .line 403
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 391
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :cond_5
    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->flush()V

    .line 392
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v9

    invoke-virtual {v9}, Ljava/io/FileDescriptor;->sync()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    move-object v3, v4

    .line 400
    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :cond_6
    if-eqz v5, :cond_7

    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 401
    :cond_7
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    .line 402
    :catch_2
    move-exception v1

    .line 403
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 399
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v9

    .line 400
    :goto_3
    if-eqz v5, :cond_8

    :try_start_6
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V

    .line 401
    :cond_8
    if-eqz v3, :cond_9

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    .line 404
    :cond_9
    :goto_4
    throw v9

    .line 402
    :catch_3
    move-exception v1

    .line 403
    .restart local v1       #e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 399
    .end local v1           #e:Ljava/io/IOException;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v4       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v9

    move-object v3, v4

    .end local v4           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 396
    :catch_4
    move-exception v1

    goto :goto_2
.end method

.method public static deleteFile(Ljava/io/File;)V
    .locals 6
    .parameter "aPath"

    .prologue
    .line 36
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_0

    .line 53
    :goto_0
    return-void

    .line 40
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 41
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 43
    .local v2, files:[Ljava/io/File;
    if-eqz v2, :cond_1

    .line 44
    move-object v0, v2

    .local v0, arr$:[Ljava/io/File;
    array-length v4, v0

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 45
    .local v1, f:Ljava/io/File;
    invoke-static {v1}, Lcom/baidu/launcher/thememanager/util/StorageUtil;->deleteFile(Ljava/io/File;)V

    .line 44
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 48
    .end local v0           #arr$:[Ljava/io/File;
    .end local v1           #f:Ljava/io/File;
    .end local v3           #i$:I
    .end local v4           #len$:I
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0

    .line 51
    .end local v2           #files:[Ljava/io/File;
    :cond_2
    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public static getComponentPath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "context"
    .parameter "component"

    .prologue
    .line 174
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 175
    .local v0, dest_dir:Ljava/lang/StringBuilder;
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getDiskRoot()Ljava/lang/String;
    .locals 3

    .prologue
    .line 230
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "removed"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 232
    .local v0, has_sdcard:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 233
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 234
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    .line 237
    :goto_1
    return-object v1

    .line 230
    .end local v0           #has_sdcard:Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 237
    .restart local v0       #has_sdcard:Z
    :cond_1
    const-string v1, ""

    goto :goto_1
.end method

.method public static getDownloadPath()Ljava/lang/String;
    .locals 3

    .prologue
    .line 347
    invoke-static {}, Lcom/baidu/launcher/thememanager/util/StorageUtil;->getDiskRoot()Ljava/lang/String;

    move-result-object v0

    .line 348
    .local v0, str:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "baidu/theme/download/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getFileSize(Ljava/io/File;)I
    .locals 4
    .parameter "file"

    .prologue
    .line 148
    const/4 v2, 0x0

    .line 149
    .local v2, result:I
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 151
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 152
    .local v1, in:Ljava/io/FileInputStream;
    invoke-virtual {v1}, Ljava/io/FileInputStream;->available()I

    move-result v3

    div-int/lit16 v2, v3, 0x3e8
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    .end local v1           #in:Ljava/io/FileInputStream;
    :cond_0
    :goto_0
    return v2

    .line 153
    :catch_0
    move-exception v0

    .line 154
    .local v0, e:Ljava/io/IOException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getPathFromTempFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "tempPath"

    .prologue
    .line 264
    const/4 v0, 0x0

    .line 265
    .local v0, fileName:Ljava/lang/String;
    const-string v2, ".wallpapertemp"

    invoke-virtual {p0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 266
    .local v1, index:I
    if-lez v1, :cond_0

    .line 267
    const-string v2, ".wallpapertemp"

    const-string v3, ".jpg"

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 269
    :cond_0
    return-object v0
.end method

.method public static getSrcThemePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "key"
    .parameter "component"

    .prologue
    .line 182
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/baidu/launcher/thememanager/util/StorageUtil;->getDiskRoot()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    .local v0, src_dir:Ljava/lang/StringBuilder;
    sget-object v1, Lcom/baidu/launcher/thememanager/util/Constants;->THEME_CACHE_DIR:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    if-eqz p1, :cond_0

    .line 187
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 190
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getWallpaperPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "aOriginalUrl"

    .prologue
    .line 246
    invoke-static {p0}, Lcom/baidu/launcher/thememanager/util/ImageCache;->getHashKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 247
    .local v0, fileName:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->DEFAULT_FOLDER()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 248
    .local v1, path:Ljava/lang/String;
    return-object v1
.end method

.method public static getWallpaperTempPath(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "aOriginalUrl"

    .prologue
    .line 257
    invoke-static {p0}, Lcom/baidu/launcher/thememanager/util/ImageCache;->getHashKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 258
    .local v0, fileName:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->DEFAULT_FOLDER()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".jpg"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 259
    .local v1, path:Ljava/lang/String;
    return-object v1
.end method

.method public static isExternalSpaceAvailable()Z
    .locals 13

    .prologue
    const/4 v8, 0x0

    .line 204
    :try_start_0
    invoke-static {}, Lcom/baidu/launcher/thememanager/util/StorageUtil;->getDiskRoot()Ljava/lang/String;

    move-result-object v6

    .line 205
    .local v6, path:Ljava/lang/String;
    const-string v9, ""

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 215
    :cond_0
    :goto_0
    return v8

    .line 208
    :cond_1
    new-instance v7, Landroid/os/StatFs;

    invoke-direct {v7, v6}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 209
    .local v7, statFs:Landroid/os/StatFs;
    invoke-virtual {v7}, Landroid/os/StatFs;->getBlockSize()I

    move-result v9

    int-to-long v4, v9

    .line 210
    .local v4, blocSize:J
    invoke-virtual {v7}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v9

    int-to-long v0, v9

    .line 211
    .local v0, availaBlock:J
    mul-long v9, v0, v4

    const-wide/32 v11, 0x100000

    div-long v2, v9, v11

    .line 212
    .local v2, availableSpace:J
    const-wide/16 v9, 0xf

    div-long v9, v2, v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-wide/16 v11, 0x1

    cmp-long v9, v9, v11

    if-lez v9, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    .line 213
    .end local v0           #availaBlock:J
    .end local v2           #availableSpace:J
    .end local v4           #blocSize:J
    .end local v7           #statFs:Landroid/os/StatFs;
    :catch_0
    move-exception v9

    goto :goto_0
.end method

.method public static isImageFile(Ljava/lang/String;)Z
    .locals 8
    .parameter "path"

    .prologue
    .line 417
    const/4 v5, 0x0

    .line 419
    .local v5, isImage:Z
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 420
    .local v4, inputStream:Ljava/io/FileInputStream;
    const/4 v6, 0x2

    new-array v0, v6, [B

    .line 421
    .local v0, buffer:[B
    const-string v2, ""

    .line 423
    .local v2, filecode:Ljava/lang/String;
    invoke-virtual {v4, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    .line 424
    const/4 v3, 0x0

    .local v3, i:I
    :goto_0
    array-length v6, v0

    if-ge v3, v6, :cond_0

    .line 425
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-byte v7, v0, v3

    and-int/lit16 v7, v7, 0xff

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 424
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 427
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 436
    const/4 v5, 0x0

    .line 449
    .end local v0           #buffer:[B
    .end local v2           #filecode:Ljava/lang/String;
    .end local v3           #i:I
    .end local v4           #inputStream:Ljava/io/FileInputStream;
    :cond_1
    :goto_1
    return v5

    .line 430
    .restart local v0       #buffer:[B
    .restart local v2       #filecode:Ljava/lang/String;
    .restart local v3       #i:I
    .restart local v4       #inputStream:Ljava/io/FileInputStream;
    :sswitch_0
    const/4 v5, 0x1

    .line 431
    goto :goto_1

    .line 433
    :sswitch_1
    const/4 v5, 0x1

    .line 434
    goto :goto_1

    .line 440
    .end local v0           #buffer:[B
    .end local v2           #filecode:Ljava/lang/String;
    .end local v3           #i:I
    .end local v4           #inputStream:Ljava/io/FileInputStream;
    :catch_0
    move-exception v1

    .line 441
    .local v1, e:Ljava/io/FileNotFoundException;
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 442
    .end local v1           #e:Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v1

    .line 443
    .local v1, e:Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 444
    .end local v1           #e:Ljava/io/IOException;
    :catch_2
    move-exception v1

    .line 445
    .local v1, e:Ljava/lang/NumberFormatException;
    invoke-virtual {v1}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1

    .line 446
    .end local v1           #e:Ljava/lang/NumberFormatException;
    :catch_3
    move-exception v1

    .line 447
    .local v1, e:Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 427
    :sswitch_data_0
    .sparse-switch
        0x35d4 -> :sswitch_1
        0x3e4f0 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isPathExists(Ljava/lang/String;)Z
    .locals 2
    .parameter "path"

    .prologue
    .line 194
    if-eqz p0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 195
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 196
    .local v0, file:Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 197
    const/4 v1, 0x1

    .line 199
    .end local v0           #file:Ljava/io/File;
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isSdcardAvailable()Z
    .locals 3

    .prologue
    .line 219
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v1

    const-string v2, "mounted"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 220
    .local v0, has_sdcard:Z
    if-eqz v0, :cond_1

    .line 221
    invoke-static {}, Lcom/baidu/launcher/thememanager/util/StorageUtil;->getDiskRoot()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/baidu/launcher/thememanager/util/StorageUtil;->getDiskRoot()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    if-ne v1, v2, :cond_1

    .line 222
    :cond_0
    const/4 v0, 0x0

    .line 225
    :cond_1
    return v0
.end method
