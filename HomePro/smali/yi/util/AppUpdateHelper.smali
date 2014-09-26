.class public Lyi/util/AppUpdateHelper;
.super Ljava/lang/Object;
.source "AppUpdateHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lyi/util/AppUpdateHelper$AppUpdateCheckTask;,
        Lyi/util/AppUpdateHelper$AppUpdateHttpClient;,
        Lyi/util/AppUpdateHelper$AppUpdateInfo;,
        Lyi/util/AppUpdateHelper$UpdateCheckAsyncTask;,
        Lyi/util/AppUpdateHelper$UpdateListener;
    }
.end annotation


# static fields
.field public static final ERROR_CODE_INVALID_CONTEXT:I = 0x1

.field public static final ERROR_CODE_INVALID_HOST_NAME:I = 0xb

.field public static final ERROR_CODE_INVALID_HTTP_REQUEST:I = 0x6

.field public static final ERROR_CODE_INVALID_HTTP_RESPONSE:I = 0x7

.field public static final ERROR_CODE_INVALID_REST_PARAMETERS:I = 0xa

.field public static final ERROR_CODE_NETWORK_EXCEPTION:I = 0x2

.field public static final ERROR_CODE_NO_UPDATE_AVAILABLE:I = 0x5

.field public static final ERROR_CODE_PARSE_RESPONSE_FAILED:I = 0x9

.field public static final ERROR_CODE_REQUEST_CANCELLED:I = 0x4

.field public static final ERROR_CODE_REQUEST_FAILED:I = 0x8

.field public static final ERROR_CODE_SERVER_ERROR:I = 0x3

.field public static final ERROR_CODE_SUCCESS:I = 0x0

.field public static final ERROR_CODE_UNKNOWN:I = 0x63

.field private static final SERVER_URL:Ljava/lang/String; = "http://cloud.os.baidu.com/cloud/app/upgrade"

.field private static final TAG:Ljava/lang/String; = "AppUpdateHelper"

.field private static mInstance:Lyi/util/AppUpdateHelper;


# instance fields
.field private isDebug:Z

.field private mChannelId:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mCustomEntityMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCustomHostName:Ljava/lang/String;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 673
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    const/4 v0, 0x1

    iput-boolean v0, p0, Lyi/util/AppUpdateHelper;->isDebug:Z

    .line 674
    iput-object p1, p0, Lyi/util/AppUpdateHelper;->mContext:Landroid/content/Context;

    .line 675
    return-void
.end method

.method static synthetic access$0(Lyi/util/AppUpdateHelper;Lyi/util/AppUpdateHelper$AppUpdateHttpClient;)Lyi/util/AppUpdateHelper$AppUpdateInfo;
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 348
    invoke-direct {p0, p1}, Lyi/util/AppUpdateHelper;->checkUpdateSync(Lyi/util/AppUpdateHelper$AppUpdateHttpClient;)Lyi/util/AppUpdateHelper$AppUpdateInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lyi/util/AppUpdateHelper;)Z
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-boolean v0, p0, Lyi/util/AppUpdateHelper;->isDebug:Z

    return v0
.end method

.method private bytesToHex([B)Ljava/lang/String;
    .locals 6
    .parameter "bytes"

    .prologue
    .line 504
    const/16 v4, 0x10

    new-array v0, v4, [C

    fill-array-data v0, :array_0

    .line 505
    .local v0, hexArray:[C
    array-length v4, p1

    mul-int/lit8 v4, v4, 0x2

    new-array v1, v4, [C

    .line 507
    .local v1, hexChars:[C
    const/4 v2, 0x0

    .local v2, j:I
    :goto_0
    array-length v4, p1

    if-lt v2, v4, :cond_0

    .line 512
    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([C)V

    return-object v4

    .line 508
    :cond_0
    aget-byte v4, p1, v2

    and-int/lit16 v3, v4, 0xff

    .line 509
    .local v3, v:I
    mul-int/lit8 v4, v2, 0x2

    ushr-int/lit8 v5, v3, 0x4

    aget-char v5, v0, v5

    aput-char v5, v1, v4

    .line 510
    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    and-int/lit8 v5, v3, 0xf

    aget-char v5, v0, v5

    aput-char v5, v1, v4

    .line 507
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 504
    nop

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x41t 0x0t
        0x42t 0x0t
        0x43t 0x0t
        0x44t 0x0t
        0x45t 0x0t
        0x46t 0x0t
    .end array-data
.end method

.method private checkUpdateSync(Lyi/util/AppUpdateHelper$AppUpdateHttpClient;)Lyi/util/AppUpdateHelper$AppUpdateInfo;
    .locals 8
    .parameter "httpClient"

    .prologue
    const/4 v7, 0x2

    .line 349
    new-instance v1, Lyi/util/AppUpdateHelper$AppUpdateInfo;

    invoke-direct {v1}, Lyi/util/AppUpdateHelper$AppUpdateInfo;-><init>()V

    .line 350
    .local v1, info:Lyi/util/AppUpdateHelper$AppUpdateInfo;
    const/16 v5, 0x63

    iput v5, v1, Lyi/util/AppUpdateHelper$AppUpdateInfo;->mError:I

    .line 352
    iget-object v5, p0, Lyi/util/AppUpdateHelper;->mContext:Landroid/content/Context;

    if-nez v5, :cond_0

    .line 353
    const/4 v5, 0x1

    iput v5, v1, Lyi/util/AppUpdateHelper$AppUpdateInfo;->mError:I

    .line 387
    :goto_0
    return-object v1

    .line 357
    :cond_0
    invoke-direct {p0}, Lyi/util/AppUpdateHelper;->isNetWorkEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    .line 358
    iput v7, v1, Lyi/util/AppUpdateHelper$AppUpdateInfo;->mError:I

    goto :goto_0

    .line 363
    :cond_1
    iget-object v5, p0, Lyi/util/AppUpdateHelper;->mCustomHostName:Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lyi/util/AppUpdateHelper;->mCustomHostName:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_2
    const-string v4, "http://cloud.os.baidu.com/cloud/app/upgrade"

    .line 365
    .local v4, url:Ljava/lang/String;
    :goto_1
    if-eqz v4, :cond_3

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 366
    :cond_3
    const/16 v5, 0xb

    iput v5, v1, Lyi/util/AppUpdateHelper$AppUpdateInfo;->mError:I

    goto :goto_0

    .line 364
    .end local v4           #url:Ljava/lang/String;
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "http://"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v6, p0, Lyi/util/AppUpdateHelper;->mCustomHostName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/cloud/app/upgrade"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 370
    .restart local v4       #url:Ljava/lang/String;
    :cond_5
    invoke-direct {p0, v4}, Lyi/util/AppUpdateHelper;->composeRequest(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpUriRequest;

    move-result-object v2

    .line 371
    .local v2, request:Lorg/apache/http/client/methods/HttpUriRequest;
    if-nez v2, :cond_6

    .line 372
    const/4 v5, 0x6

    iput v5, v1, Lyi/util/AppUpdateHelper$AppUpdateInfo;->mError:I

    goto :goto_0

    .line 377
    :cond_6
    :try_start_0
    invoke-virtual {p1, v2}, Lyi/util/AppUpdateHelper$AppUpdateHttpClient;->checkUpdate(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v3

    .line 378
    .local v3, response:Lorg/apache/http/HttpResponse;
    invoke-direct {p0, v3, v1}, Lyi/util/AppUpdateHelper;->parseResponse(Lorg/apache/http/HttpResponse;Lyi/util/AppUpdateHelper$AppUpdateInfo;)V
    :try_end_0
    .catch Lorg/apache/http/client/ClientProtocolException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 379
    .end local v3           #response:Lorg/apache/http/HttpResponse;
    :catch_0
    move-exception v0

    .line 380
    .local v0, e:Lorg/apache/http/client/ClientProtocolException;
    iput v7, v1, Lyi/util/AppUpdateHelper$AppUpdateInfo;->mError:I

    .line 381
    invoke-virtual {v0}, Lorg/apache/http/client/ClientProtocolException;->printStackTrace()V

    goto :goto_0

    .line 382
    .end local v0           #e:Lorg/apache/http/client/ClientProtocolException;
    :catch_1
    move-exception v0

    .line 383
    .local v0, e:Ljava/io/IOException;
    iput v7, v1, Lyi/util/AppUpdateHelper$AppUpdateInfo;->mError:I

    .line 384
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private composeRequest(Ljava/lang/String;)Lorg/apache/http/client/methods/HttpUriRequest;
    .locals 13
    .parameter "url"

    .prologue
    .line 521
    iget-boolean v9, p0, Lyi/util/AppUpdateHelper;->isDebug:Z

    if-eqz v9, :cond_0

    .line 522
    const-string v9, "AppUpdateHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "composeRequest with url: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :cond_0
    new-instance v6, Lorg/apache/http/client/methods/HttpPost;

    invoke-direct {v6, p1}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    .line 526
    .local v6, request:Lorg/apache/http/client/methods/HttpPost;
    new-instance v5, Lorg/apache/http/entity/mime/MultipartEntity;

    invoke-direct {v5}, Lorg/apache/http/entity/mime/MultipartEntity;-><init>()V

    .line 528
    .local v5, reqEntity:Lorg/apache/http/entity/mime/MultipartEntity;
    iget-object v9, p0, Lyi/util/AppUpdateHelper;->mCustomEntityMap:Ljava/util/HashMap;

    if-eqz v9, :cond_2

    iget-object v9, p0, Lyi/util/AppUpdateHelper;->mCustomEntityMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_2

    .line 530
    :try_start_0
    iget-object v9, p0, Lyi/util/AppUpdateHelper;->mCustomEntityMap:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_0
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_1

    .line 533
    invoke-virtual {v6, v5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    :goto_1
    move-object v7, v6

    .line 593
    .end local v6           #request:Lorg/apache/http/client/methods/HttpPost;
    .local v7, request:Lorg/apache/http/client/methods/HttpPost;
    :goto_2
    return-object v7

    .line 530
    .end local v7           #request:Lorg/apache/http/client/methods/HttpPost;
    .restart local v6       #request:Lorg/apache/http/client/methods/HttpPost;
    :cond_1
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 531
    .local v2, entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    new-instance v12, Lorg/apache/http/entity/mime/content/StringBody;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-direct {v12, v10}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v9, v12}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 534
    .end local v2           #entry:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    :catch_0
    move-exception v0

    .line 535
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 536
    const/4 v6, 0x0

    goto :goto_1

    .line 537
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v0

    .line 539
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 540
    const/4 v6, 0x0

    goto :goto_1

    .line 546
    .end local v0           #e:Ljava/lang/IllegalArgumentException;
    :cond_2
    iget-object v9, p0, Lyi/util/AppUpdateHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 548
    .local v4, pm:Landroid/content/pm/PackageManager;
    :try_start_1
    iget-object v9, p0, Lyi/util/AppUpdateHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    .line 549
    const/16 v10, 0x40

    .line 548
    invoke-virtual {v4, v9, v10}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    .line 551
    .local v3, pi:Landroid/content/pm/PackageInfo;
    iget-boolean v9, p0, Lyi/util/AppUpdateHelper;->isDebug:Z

    if-eqz v9, :cond_3

    .line 552
    const-string v9, "AppUpdateHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "android_sdk code: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 553
    const-string v9, "AppUpdateHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "manufacture: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    const-string v9, "AppUpdateHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "model: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const-string v9, "AppUpdateHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "yi sdk: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v11, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 559
    :cond_3
    const-string v9, "app_name"

    new-instance v10, Lorg/apache/http/entity/mime/content/StringBody;

    iget-object v11, p0, Lyi/util/AppUpdateHelper;->mContext:Landroid/content/Context;

    iget-object v12, p0, Lyi/util/AppUpdateHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v12

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->labelRes:I

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v9, v10}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 560
    const-string v9, "pkg_name"

    new-instance v10, Lorg/apache/http/entity/mime/content/StringBody;

    iget-object v11, p0, Lyi/util/AppUpdateHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v9, v10}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 561
    const-string v9, "version_code"

    new-instance v10, Lorg/apache/http/entity/mime/content/StringBody;

    iget v11, v3, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v9, v10}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 562
    const-string v9, "version_name"

    new-instance v10, Lorg/apache/http/entity/mime/content/StringBody;

    iget-object v11, v3, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-direct {v10, v11}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v9, v10}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 563
    const-string v9, "manufacture"

    new-instance v10, Lorg/apache/http/entity/mime/content/StringBody;

    sget-object v11, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    invoke-direct {v10, v11}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v9, v10}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 564
    const-string v9, "model"

    new-instance v10, Lorg/apache/http/entity/mime/content/StringBody;

    sget-object v11, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {v10, v11}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v9, v10}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 565
    const-string v9, "android_sdk"

    new-instance v10, Lorg/apache/http/entity/mime/content/StringBody;

    sget v11, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v9, v10}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 566
    const-string v9, "yi_sdk"

    new-instance v10, Lorg/apache/http/entity/mime/content/StringBody;

    sget-object v11, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-direct {v10, v11}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v9, v10}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 567
    const-string v10, "channel_id"

    new-instance v11, Lorg/apache/http/entity/mime/content/StringBody;

    iget-object v9, p0, Lyi/util/AppUpdateHelper;->mChannelId:Ljava/lang/String;

    if-nez v9, :cond_5

    const-string v9, ""

    :goto_3
    invoke-direct {v11, v9}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v10, v11}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 569
    iget-object v8, v3, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 570
    .local v8, sigs:[Landroid/content/pm/Signature;
    if-eqz v8, :cond_4

    const/4 v9, 0x0

    aget-object v9, v8, v9

    if-eqz v9, :cond_4

    .line 571
    const-string v9, "signature"

    new-instance v10, Lorg/apache/http/entity/mime/content/StringBody;

    const/4 v11, 0x0

    aget-object v11, v8, v11

    invoke-virtual {v11}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v11

    invoke-direct {p0, v11}, Lyi/util/AppUpdateHelper;->md5([B)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Lorg/apache/http/entity/mime/content/StringBody;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v9, v10}, Lorg/apache/http/entity/mime/MultipartEntity;->addPart(Ljava/lang/String;Lorg/apache/http/entity/mime/content/ContentBody;)V

    .line 572
    iget-boolean v9, p0, Lyi/util/AppUpdateHelper;->isDebug:Z

    if-eqz v9, :cond_4

    .line 573
    const-string v9, "AppUpdateHelper"

    new-instance v10, Ljava/lang/StringBuilder;

    const-string v11, "signature: "

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v11, 0x0

    aget-object v11, v8, v11

    invoke-virtual {v11}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v11

    invoke-direct {p0, v11}, Lyi/util/AppUpdateHelper;->md5([B)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    :cond_4
    invoke-virtual {v6, v5}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    .end local v3           #pi:Landroid/content/pm/PackageInfo;
    .end local v8           #sigs:[Landroid/content/pm/Signature;
    :goto_4
    move-object v7, v6

    .line 593
    .end local v6           #request:Lorg/apache/http/client/methods/HttpPost;
    .restart local v7       #request:Lorg/apache/http/client/methods/HttpPost;
    goto/16 :goto_2

    .line 567
    .end local v7           #request:Lorg/apache/http/client/methods/HttpPost;
    .restart local v3       #pi:Landroid/content/pm/PackageInfo;
    .restart local v6       #request:Lorg/apache/http/client/methods/HttpPost;
    :cond_5
    iget-object v9, p0, Lyi/util/AppUpdateHelper;->mChannelId:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/apache/http/ParseException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_5

    goto :goto_3

    .line 578
    .end local v3           #pi:Landroid/content/pm/PackageInfo;
    :catch_2
    move-exception v0

    .line 579
    .local v0, e:Ljava/io/UnsupportedEncodingException;
    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    .line 580
    const/4 v6, 0x0

    goto :goto_4

    .line 581
    .end local v0           #e:Ljava/io/UnsupportedEncodingException;
    :catch_3
    move-exception v1

    .line 582
    .local v1, e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 583
    const/4 v6, 0x0

    goto :goto_4

    .line 584
    .end local v1           #e1:Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_4
    move-exception v0

    .line 585
    .local v0, e:Lorg/apache/http/ParseException;
    invoke-virtual {v0}, Lorg/apache/http/ParseException;->printStackTrace()V

    .line 586
    const/4 v6, 0x0

    goto :goto_4

    .line 587
    .end local v0           #e:Lorg/apache/http/ParseException;
    :catch_5
    move-exception v0

    .line 589
    .local v0, e:Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 590
    const/4 v6, 0x0

    goto :goto_4
.end method

.method public static declared-synchronized instance(Landroid/content/Context;)Lyi/util/AppUpdateHelper;
    .locals 2
    .parameter "context"

    .prologue
    .line 156
    const-class v1, Lyi/util/AppUpdateHelper;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lyi/util/AppUpdateHelper;->mInstance:Lyi/util/AppUpdateHelper;

    if-nez v0, :cond_0

    .line 157
    new-instance v0, Lyi/util/AppUpdateHelper;

    invoke-direct {v0, p0}, Lyi/util/AppUpdateHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lyi/util/AppUpdateHelper;->mInstance:Lyi/util/AppUpdateHelper;

    .line 160
    :cond_0
    sget-object v0, Lyi/util/AppUpdateHelper;->mInstance:Lyi/util/AppUpdateHelper;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 156
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private isNetWorkEnabled()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 604
    iget-object v3, p0, Lyi/util/AppUpdateHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 605
    const-string v4, "connectivity"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    .line 604
    check-cast v1, Landroid/net/ConnectivityManager;

    .line 607
    .local v1, manager:Landroid/net/ConnectivityManager;
    if-nez v1, :cond_1

    .line 617
    :cond_0
    :goto_0
    return v2

    .line 611
    :cond_1
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getAllNetworkInfo()[Landroid/net/NetworkInfo;

    move-result-object v4

    array-length v5, v4

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_0

    aget-object v0, v4, v3

    .line 612
    .local v0, info:Landroid/net/NetworkInfo;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 613
    const/4 v2, 0x1

    goto :goto_0

    .line 611
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1
.end method

.method private md5([B)Ljava/lang/String;
    .locals 3
    .parameter "data"

    .prologue
    .line 486
    const/4 v1, 0x0

    .line 488
    .local v1, md:Ljava/security/MessageDigest;
    :try_start_0
    const-string v2, "MD5"

    invoke-static {v2}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    .line 489
    invoke-virtual {v1, p1}, Ljava/security/MessageDigest;->update([B)V
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    :goto_0
    if-nez v1, :cond_0

    const-string v2, ""

    :goto_1
    return-object v2

    .line 490
    :catch_0
    move-exception v0

    .line 491
    .local v0, e:Ljava/security/NoSuchAlgorithmException;
    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_0

    .line 494
    .end local v0           #e:Ljava/security/NoSuchAlgorithmException;
    :cond_0
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v2

    invoke-direct {p0, v2}, Lyi/util/AppUpdateHelper;->bytesToHex([B)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private parseJSON(Ljava/lang/String;Lyi/util/AppUpdateHelper$AppUpdateInfo;)Z
    .locals 9
    .parameter "jsonString"
    .parameter "info"

    .prologue
    .line 434
    const/4 v4, 0x0

    .line 436
    .local v4, result:Z
    if-eqz p1, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    if-eqz p2, :cond_0

    .line 438
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 439
    .local v3, parsedcontent:Lorg/json/JSONObject;
    const-string v7, "status"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 440
    .local v5, status:Ljava/lang/String;
    if-eqz v5, :cond_0

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 441
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 442
    .local v6, statusCode:I
    if-nez v6, :cond_2

    .line 444
    const-string v7, "data"

    invoke-virtual {v3, v7}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    .line 445
    .local v0, data:Lorg/json/JSONObject;
    if-eqz v0, :cond_0

    .line 446
    const-string v7, "app_name"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p2, Lyi/util/AppUpdateHelper$AppUpdateInfo;->mAppName:Ljava/lang/String;

    .line 447
    const-string v7, "pkg_name"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p2, Lyi/util/AppUpdateHelper$AppUpdateInfo;->mPkgName:Ljava/lang/String;

    .line 448
    const-string v7, "url"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p2, Lyi/util/AppUpdateHelper$AppUpdateInfo;->mUrl:Ljava/lang/String;

    .line 449
    const-string v7, "size"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p2, Lyi/util/AppUpdateHelper$AppUpdateInfo;->mSize:I

    .line 450
    const-string v7, "hash"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p2, Lyi/util/AppUpdateHelper$AppUpdateInfo;->mMd5:Ljava/lang/String;

    .line 451
    const-string v7, "change_log"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p2, Lyi/util/AppUpdateHelper$AppUpdateInfo;->mChangeLog:Ljava/lang/String;

    .line 452
    const-string v7, "version_code"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p2, Lyi/util/AppUpdateHelper$AppUpdateInfo;->mVersionCode:I

    .line 453
    const-string v7, "version_name"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p2, Lyi/util/AppUpdateHelper$AppUpdateInfo;->mVersionName:Ljava/lang/String;

    .line 455
    const-string v7, "force"

    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    const/4 v7, 0x1

    :goto_0
    iput-boolean v7, p2, Lyi/util/AppUpdateHelper$AppUpdateInfo;->mIsForce:Z

    .line 456
    const/4 v4, 0x1

    .line 476
    .end local v0           #data:Lorg/json/JSONObject;
    .end local v3           #parsedcontent:Lorg/json/JSONObject;
    .end local v5           #status:Ljava/lang/String;
    .end local v6           #statusCode:I
    :cond_0
    :goto_1
    return v4

    .line 455
    .restart local v0       #data:Lorg/json/JSONObject;
    .restart local v3       #parsedcontent:Lorg/json/JSONObject;
    .restart local v5       #status:Ljava/lang/String;
    .restart local v6       #statusCode:I
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 458
    .end local v0           #data:Lorg/json/JSONObject;
    :cond_2
    const/4 v7, -0x1

    if-ne v6, v7, :cond_3

    .line 460
    const/4 v7, 0x3

    iput v7, p2, Lyi/util/AppUpdateHelper$AppUpdateInfo;->mError:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 469
    .end local v3           #parsedcontent:Lorg/json/JSONObject;
    .end local v5           #status:Ljava/lang/String;
    .end local v6           #statusCode:I
    :catch_0
    move-exception v1

    .line 470
    .local v1, e:Lorg/json/JSONException;
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1

    .line 461
    .end local v1           #e:Lorg/json/JSONException;
    .restart local v3       #parsedcontent:Lorg/json/JSONObject;
    .restart local v5       #status:Ljava/lang/String;
    .restart local v6       #statusCode:I
    :cond_3
    const/16 v7, 0x7531

    if-ne v6, v7, :cond_4

    .line 463
    const/4 v7, 0x5

    :try_start_1
    iput v7, p2, Lyi/util/AppUpdateHelper$AppUpdateInfo;->mError:I
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 471
    .end local v3           #parsedcontent:Lorg/json/JSONObject;
    .end local v5           #status:Ljava/lang/String;
    .end local v6           #statusCode:I
    :catch_1
    move-exception v2

    .line 472
    .local v2, e1:Ljava/lang/NumberFormatException;
    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_1

    .line 464
    .end local v2           #e1:Ljava/lang/NumberFormatException;
    .restart local v3       #parsedcontent:Lorg/json/JSONObject;
    .restart local v5       #status:Ljava/lang/String;
    .restart local v6       #statusCode:I
    :cond_4
    const/16 v7, 0x7532

    if-ne v6, v7, :cond_0

    .line 466
    const/16 v7, 0xa

    :try_start_2
    iput v7, p2, Lyi/util/AppUpdateHelper$AppUpdateInfo;->mError:I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1
.end method

.method private parseResponse(Lorg/apache/http/HttpResponse;Lyi/util/AppUpdateHelper$AppUpdateInfo;)V
    .locals 6
    .parameter "response"
    .parameter "info"

    .prologue
    .line 397
    if-nez p2, :cond_1

    .line 424
    :cond_0
    :goto_0
    return-void

    .line 401
    :cond_1
    if-nez p1, :cond_2

    .line 402
    const/4 v3, 0x7

    iput v3, p2, Lyi/util/AppUpdateHelper$AppUpdateInfo;->mError:I

    .line 405
    :cond_2
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v3

    invoke-interface {v3}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    const/16 v4, 0xc8

    if-ne v3, v4, :cond_3

    .line 406
    invoke-interface {p1}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v1

    .line 407
    .local v1, entity:Lorg/apache/http/HttpEntity;
    const/16 v3, 0x9

    iput v3, p2, Lyi/util/AppUpdateHelper$AppUpdateInfo;->mError:I

    .line 408
    if-eqz v1, :cond_0

    .line 410
    :try_start_0
    invoke-static {v1}, Lorg/apache/http/util/EntityUtils;->toString(Lorg/apache/http/HttpEntity;)Ljava/lang/String;

    move-result-object v2

    .line 411
    .local v2, result:Ljava/lang/String;
    const-string v3, "AppUpdateHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "response is: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    invoke-direct {p0, v2, p2}, Lyi/util/AppUpdateHelper;->parseJSON(Ljava/lang/String;Lyi/util/AppUpdateHelper$AppUpdateInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 413
    const/4 v3, 0x0

    iput v3, p2, Lyi/util/AppUpdateHelper$AppUpdateInfo;->mError:I
    :try_end_0
    .catch Lorg/apache/http/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 415
    .end local v2           #result:Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 416
    .local v0, e:Lorg/apache/http/ParseException;
    invoke-virtual {v0}, Lorg/apache/http/ParseException;->printStackTrace()V

    goto :goto_0

    .line 417
    .end local v0           #e:Lorg/apache/http/ParseException;
    :catch_1
    move-exception v0

    .line 418
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 422
    .end local v0           #e:Ljava/io/IOException;
    .end local v1           #entity:Lorg/apache/http/HttpEntity;
    :cond_3
    const/16 v3, 0x8

    iput v3, p2, Lyi/util/AppUpdateHelper$AppUpdateInfo;->mError:I

    goto :goto_0
.end method


# virtual methods
.method public checkUpdateAsync(ZLyi/util/AppUpdateHelper$UpdateListener;)Lyi/util/AppUpdateHelper$AppUpdateCheckTask;
    .locals 1
    .parameter "useAsyncTask"
    .parameter "listener"

    .prologue
    .line 227
    new-instance v0, Lyi/util/AppUpdateHelper$AppUpdateCheckTask;

    invoke-direct {v0, p0, p1, p2}, Lyi/util/AppUpdateHelper$AppUpdateCheckTask;-><init>(Lyi/util/AppUpdateHelper;ZLyi/util/AppUpdateHelper$UpdateListener;)V

    return-object v0
.end method

.method public checkUpdateSync()Lyi/util/AppUpdateHelper$AppUpdateInfo;
    .locals 2

    .prologue
    .line 199
    new-instance v0, Lyi/util/AppUpdateHelper$AppUpdateHttpClient;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lyi/util/AppUpdateHelper$AppUpdateHttpClient;-><init>(Z)V

    .line 200
    .local v0, httpClient:Lyi/util/AppUpdateHelper$AppUpdateHttpClient;
    invoke-direct {p0, v0}, Lyi/util/AppUpdateHelper;->checkUpdateSync(Lyi/util/AppUpdateHelper$AppUpdateHttpClient;)Lyi/util/AppUpdateHelper$AppUpdateInfo;

    move-result-object v1

    return-object v1
.end method

.method public errorCodeString(I)Ljava/lang/String;
    .locals 1
    .parameter "code"

    .prologue
    .line 627
    const-string v0, "ERROR_CODE_UNKNOWN"

    .line 629
    .local v0, res:Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 667
    :goto_0
    return-object v0

    .line 631
    :pswitch_0
    const-string v0, "ERROR_CODE_SUCCESS"

    .line 632
    goto :goto_0

    .line 634
    :pswitch_1
    const-string v0, "ERROR_CODE_INVALID_CONTEXT"

    .line 635
    goto :goto_0

    .line 637
    :pswitch_2
    const-string v0, "ERROR_CODE_NETWORK_EXCEPTION"

    .line 638
    goto :goto_0

    .line 640
    :pswitch_3
    const-string v0, "ERROR_CODE_SERVER_ERROR"

    .line 641
    goto :goto_0

    .line 643
    :pswitch_4
    const-string v0, "ERROR_CODE_REQUEST_CANCELLED"

    .line 644
    goto :goto_0

    .line 646
    :pswitch_5
    const-string v0, "ERROR_CODE_NO_UPDATE_AVAILABLE"

    .line 647
    goto :goto_0

    .line 649
    :pswitch_6
    const-string v0, "ERROR_CODE_INVALID_HTTP_REQUEST"

    .line 650
    goto :goto_0

    .line 652
    :pswitch_7
    const-string v0, "ERROR_CODE_INVALID_HTTP_RESPONSE"

    .line 653
    goto :goto_0

    .line 655
    :pswitch_8
    const-string v0, "ERROR_CODE_REQUEST_FAILED"

    .line 656
    goto :goto_0

    .line 658
    :pswitch_9
    const-string v0, "ERROR_CODE_PARSE_RESPONSE_FAILED"

    .line 659
    goto :goto_0

    .line 661
    :pswitch_a
    const-string v0, "ERROR_CODE_INVALID_REST_PARAMETERS"

    .line 662
    goto :goto_0

    .line 629
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public setChannelId(Ljava/lang/String;)V
    .locals 0
    .parameter "channelId"

    .prologue
    .line 190
    iput-object p1, p0, Lyi/util/AppUpdateHelper;->mChannelId:Ljava/lang/String;

    .line 191
    return-void
.end method

.method public setCustomEntity(Ljava/util/HashMap;)V
    .locals 0
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, customEntityMap:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lyi/util/AppUpdateHelper;->mCustomEntityMap:Ljava/util/HashMap;

    .line 182
    return-void
.end method

.method public setCustomURL(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 170
    iput-object p1, p0, Lyi/util/AppUpdateHelper;->mCustomHostName:Ljava/lang/String;

    .line 171
    return-void
.end method
