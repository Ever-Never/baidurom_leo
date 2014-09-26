.class public Lcom/baidu/bulletin/db/manager/CacheManager;
.super Ljava/lang/Object;
.source "CacheManager.java"

# interfaces
.implements Lcom/baidu/bulletin/db/manager/ICacheManager;


# static fields
.field private static final IMAGESTOREMAXSIZE:J = 0x3200000L

.field private static final IMAGESTOREPATH:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static volatile _INSTANCE:Lcom/baidu/bulletin/db/manager/CacheManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    const-class v0, Lcom/baidu/bulletin/db/manager/CacheManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/bulletin/db/manager/CacheManager;->TAG:Ljava/lang/String;

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/baidu/bulletin/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/baidu/bulletin/db/manager/CacheManager;->IMAGESTOREPATH:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/bulletin/db/manager/CacheManager;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/baidu/bulletin/db/manager/CacheManager;->clearImagesSync()V

    return-void
.end method

.method private declared-synchronized clearImagesSync()V
    .locals 9

    .prologue
    .line 70
    monitor-enter p0

    :try_start_0
    new-instance v3, Ljava/io/File;

    sget-object v8, Lcom/baidu/bulletin/db/manager/CacheManager;->IMAGESTOREPATH:Ljava/lang/String;

    invoke-direct {v3, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 75
    .local v3, cleanPath:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 76
    .local v0, allFiles:[Ljava/io/File;
    if-nez v0, :cond_1

    .line 96
    :cond_0
    monitor-exit p0

    return-void

    .line 78
    :cond_1
    move-object v1, v0

    .local v1, arr$:[Ljava/io/File;
    :try_start_1
    array-length v7, v1

    .local v7, len$:I
    const/4 v6, 0x0

    .local v6, i$:I
    :goto_0
    if-ge v6, v7, :cond_0

    aget-object v4, v1, v6

    .line 79
    .local v4, file:Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 80
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    .line 81
    .local v2, childFiles:[Ljava/io/File;
    if-eqz v2, :cond_2

    array-length v8, v2

    if-nez v8, :cond_3

    .line 78
    .end local v2           #childFiles:[Ljava/io/File;
    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 85
    .restart local v2       #childFiles:[Ljava/io/File;
    :cond_3
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    array-length v8, v2

    if-ge v5, v8, :cond_2

    .line 86
    aget-object v8, v2, v5

    invoke-virtual {v8}, Ljava/io/File;->delete()Z

    .line 85
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 88
    .end local v2           #childFiles:[Ljava/io/File;
    .end local v5           #i:I
    :cond_4
    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 89
    invoke-virtual {v4}, Ljava/io/File;->delete()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 70
    .end local v0           #allFiles:[Ljava/io/File;
    .end local v1           #arr$:[Ljava/io/File;
    .end local v3           #cleanPath:Ljava/io/File;
    .end local v4           #file:Ljava/io/File;
    .end local v6           #i$:I
    .end local v7           #len$:I
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8
.end method

.method public static getInstance()Lcom/baidu/bulletin/db/manager/CacheManager;
    .locals 2

    .prologue
    .line 21
    sget-object v0, Lcom/baidu/bulletin/db/manager/CacheManager;->_INSTANCE:Lcom/baidu/bulletin/db/manager/CacheManager;

    if-nez v0, :cond_1

    .line 22
    const-class v1, Lcom/baidu/bulletin/db/manager/CacheManager;

    monitor-enter v1

    .line 23
    :try_start_0
    sget-object v0, Lcom/baidu/bulletin/db/manager/CacheManager;->_INSTANCE:Lcom/baidu/bulletin/db/manager/CacheManager;

    if-nez v0, :cond_0

    .line 24
    new-instance v0, Lcom/baidu/bulletin/db/manager/CacheManager;

    invoke-direct {v0}, Lcom/baidu/bulletin/db/manager/CacheManager;-><init>()V

    sput-object v0, Lcom/baidu/bulletin/db/manager/CacheManager;->_INSTANCE:Lcom/baidu/bulletin/db/manager/CacheManager;

    .line 26
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_1
    sget-object v0, Lcom/baidu/bulletin/db/manager/CacheManager;->_INSTANCE:Lcom/baidu/bulletin/db/manager/CacheManager;

    return-object v0

    .line 26
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public clearImagesAsync()V
    .locals 2

    .prologue
    .line 37
    sget-object v0, Lcom/baidu/bulletin/db/manager/CacheManager;->TAG:Ljava/lang/String;

    const-string v1, "clearImages"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    new-instance v0, Lcom/baidu/bulletin/db/manager/CacheManager$1;

    invoke-direct {v0, p0}, Lcom/baidu/bulletin/db/manager/CacheManager$1;-><init>(Lcom/baidu/bulletin/db/manager/CacheManager;)V

    invoke-virtual {v0}, Lcom/baidu/bulletin/db/manager/CacheManager$1;->start()V

    .line 44
    return-void
.end method
