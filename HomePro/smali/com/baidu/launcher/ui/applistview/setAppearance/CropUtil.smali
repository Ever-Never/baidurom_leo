.class public Lcom/baidu/launcher/ui/applistview/setAppearance/CropUtil;
.super Ljava/lang/Object;
.source "CropUtil.java"


# static fields
.field public static APPLISTBG_FILE_NAME:Ljava/lang/String;

.field public static mApplistBgChange:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    const-string v0, "applistBg.jpeg"

    sput-object v0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropUtil;->APPLISTBG_FILE_NAME:Ljava/lang/String;

    .line 20
    const/4 v0, 0x1

    sput-boolean v0, Lcom/baidu/launcher/ui/applistview/setAppearance/CropUtil;->mApplistBgChange:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static closeIO(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 1
    .parameter "in"
    .parameter "out"

    .prologue
    .line 54
    if-eqz p0, :cond_0

    .line 55
    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 56
    :cond_0
    if-eqz p1, :cond_1

    .line 57
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    :cond_1
    :goto_0
    return-void

    .line 58
    :catch_0
    move-exception v0

    .line 59
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public static compressPhotoByte(Landroid/graphics/Bitmap;II)[B
    .locals 12
    .parameter "b"
    .parameter "len"
    .parameter "maxSize"

    .prologue
    const/4 v1, 0x0

    .line 22
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 23
    .local v3, w:I
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 25
    .local v4, h:I
    if-ge v3, p1, :cond_1

    if-ge v4, p1, :cond_1

    .line 26
    const/high16 v10, 0x3f80

    .line 34
    .local v10, s:F
    :goto_0
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 35
    .local v5, matrix:Landroid/graphics/Matrix;
    invoke-virtual {v5, v10, v10}, Landroid/graphics/Matrix;->postScale(FF)Z

    move-object v0, p0

    move v2, v1

    move v6, v1

    .line 36
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 37
    .local v8, newB:Landroid/graphics/Bitmap;
    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 38
    .local v7, bos:Ljava/io/ByteArrayOutputStream;
    const/16 v9, 0x46

    .line 39
    .local v9, qt:I
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v8, v0, v9, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 40
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v11

    .line 41
    .local v11, size:I
    :goto_1
    if-eqz v9, :cond_3

    if-le v11, p2, :cond_3

    .line 42
    if-gez v9, :cond_0

    .line 43
    const/4 v9, 0x0

    .line 44
    :cond_0
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 45
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {v8, v0, v9, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 46
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v11

    .line 47
    add-int/lit8 v9, v9, -0xa

    goto :goto_1

    .line 28
    .end local v5           #matrix:Landroid/graphics/Matrix;
    .end local v7           #bos:Ljava/io/ByteArrayOutputStream;
    .end local v8           #newB:Landroid/graphics/Bitmap;
    .end local v9           #qt:I
    .end local v10           #s:F
    .end local v11           #size:I
    :cond_1
    if-le v3, v4, :cond_2

    .line 29
    int-to-float v0, p1

    int-to-float v2, v3

    div-float v10, v0, v2

    .restart local v10       #s:F
    goto :goto_0

    .line 31
    .end local v10           #s:F
    :cond_2
    int-to-float v0, p1

    int-to-float v2, v4

    div-float v10, v0, v2

    .restart local v10       #s:F
    goto :goto_0

    .line 49
    .restart local v5       #matrix:Landroid/graphics/Matrix;
    .restart local v7       #bos:Ljava/io/ByteArrayOutputStream;
    .restart local v8       #newB:Landroid/graphics/Bitmap;
    .restart local v9       #qt:I
    .restart local v11       #size:I
    :cond_3
    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method public static makeTempFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/io/File;
    .locals 11
    .parameter "photo"
    .parameter "nameKey"

    .prologue
    const/4 v6, 0x0

    .line 64
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v4

    .line 65
    .local v4, status:Ljava/lang/String;
    const-string v7, "mounted"

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 66
    new-instance v6, Ljava/lang/RuntimeException;

    const-string v7, ""

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 67
    :cond_0
    const/16 v7, 0x500

    const v8, 0xfa000

    invoke-static {p0, v7, v8}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropUtil;->compressPhotoByte(Landroid/graphics/Bitmap;II)[B

    move-result-object v5

    .line 68
    .local v5, tempData:[B
    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/baidu/launcher/utils/StorageUtil;->getApplistBackgroudDir()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v0, v7, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .local v0, bFile:Ljava/io/File;
    const/4 v2, 0x0

    .line 71
    .local v2, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .local v3, fos:Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v3, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 73
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 74
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->length()J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v7, v7, v9

    if-lez v7, :cond_1

    .line 79
    invoke-static {v6, v3}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropUtil;->closeIO(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    move-object v2, v3

    .line 81
    .end local v0           #bFile:Ljava/io/File;
    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :goto_0
    return-object v0

    .line 79
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #bFile:Ljava/io/File;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :cond_1
    invoke-static {v6, v3}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropUtil;->closeIO(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    :goto_1
    move-object v0, v6

    .line 81
    goto :goto_0

    .line 76
    :catch_0
    move-exception v1

    .line 77
    .local v1, e:Ljava/lang/Exception;
    :goto_2
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    invoke-static {v6, v2}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropUtil;->closeIO(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    goto :goto_1

    .end local v1           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    :goto_3
    invoke-static {v6, v2}, Lcom/baidu/launcher/ui/applistview/setAppearance/CropUtil;->closeIO(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    throw v7

    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catchall_1
    move-exception v7

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_3

    .line 76
    .end local v2           #fos:Ljava/io/FileOutputStream;
    .restart local v3       #fos:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v1

    move-object v2, v3

    .end local v3           #fos:Ljava/io/FileOutputStream;
    .restart local v2       #fos:Ljava/io/FileOutputStream;
    goto :goto_2
.end method
