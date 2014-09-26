.class public Lcom/baidu/launcher/thememanager/model/WallpaperLocalList;
.super Ljava/lang/Object;
.source "WallpaperLocalList.java"


# static fields
.field private static final lock:Ljava/lang/Object;

.field private static mInstance:Lcom/baidu/launcher/thememanager/model/WallpaperLocalList;

.field private static mWallpaperlocalList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/baidu/launcher/thememanager/model/WallpaperLocalList;->mWallpaperlocalList:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/baidu/launcher/thememanager/model/WallpaperLocalList;->lock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/baidu/launcher/thememanager/model/WallpaperLocalList;
    .locals 2

    .prologue
    .line 13
    sget-object v1, Lcom/baidu/launcher/thememanager/model/WallpaperLocalList;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 14
    :try_start_0
    sget-object v0, Lcom/baidu/launcher/thememanager/model/WallpaperLocalList;->mInstance:Lcom/baidu/launcher/thememanager/model/WallpaperLocalList;

    if-eqz v0, :cond_0

    .line 15
    sget-object v0, Lcom/baidu/launcher/thememanager/model/WallpaperLocalList;->mInstance:Lcom/baidu/launcher/thememanager/model/WallpaperLocalList;

    monitor-exit v1

    .line 19
    :goto_0
    return-object v0

    .line 17
    :cond_0
    new-instance v0, Lcom/baidu/launcher/thememanager/model/WallpaperLocalList;

    invoke-direct {v0}, Lcom/baidu/launcher/thememanager/model/WallpaperLocalList;-><init>()V

    sput-object v0, Lcom/baidu/launcher/thememanager/model/WallpaperLocalList;->mInstance:Lcom/baidu/launcher/thememanager/model/WallpaperLocalList;

    .line 18
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    sget-object v0, Lcom/baidu/launcher/thememanager/model/WallpaperLocalList;->mInstance:Lcom/baidu/launcher/thememanager/model/WallpaperLocalList;

    goto :goto_0

    .line 18
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public add(Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;)V
    .locals 3
    .parameter "item"

    .prologue
    .line 23
    sget-object v1, Lcom/baidu/launcher/thememanager/model/WallpaperLocalList;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 24
    :try_start_0
    sget-object v0, Lcom/baidu/launcher/thememanager/model/WallpaperLocalList;->mWallpaperlocalList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;->getmItemPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/baidu/launcher/thememanager/util/Utils;->constains(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 25
    sget-object v0, Lcom/baidu/launcher/thememanager/model/WallpaperLocalList;->mWallpaperlocalList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    :cond_0
    monitor-exit v1

    .line 28
    return-void

    .line 27
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public clear()V
    .locals 2

    .prologue
    .line 55
    sget-object v1, Lcom/baidu/launcher/thememanager/model/WallpaperLocalList;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 56
    :try_start_0
    sget-object v0, Lcom/baidu/launcher/thememanager/model/WallpaperLocalList;->mWallpaperlocalList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 57
    monitor-exit v1

    .line 58
    return-void

    .line 57
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public get(I)Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;
    .locals 1
    .parameter "index"

    .prologue
    .line 31
    sget-object v0, Lcom/baidu/launcher/thememanager/model/WallpaperLocalList;->mWallpaperlocalList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;

    return-object v0
.end method

.method public indexof(Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;)I
    .locals 2
    .parameter "item"

    .prologue
    .line 47
    sget-object v0, Lcom/baidu/launcher/thememanager/model/WallpaperLocalList;->mWallpaperlocalList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;->getmItemPath()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/baidu/launcher/thememanager/util/Utils;->indexof(Ljava/util/ArrayList;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public remove(I)V
    .locals 2
    .parameter "index"

    .prologue
    .line 35
    sget-object v1, Lcom/baidu/launcher/thememanager/model/WallpaperLocalList;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 36
    :try_start_0
    sget-object v0, Lcom/baidu/launcher/thememanager/model/WallpaperLocalList;->mWallpaperlocalList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 37
    monitor-exit v1

    .line 38
    return-void

    .line 37
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public remove(Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;)V
    .locals 3
    .parameter "item"

    .prologue
    .line 41
    sget-object v1, Lcom/baidu/launcher/thememanager/model/WallpaperLocalList;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 42
    :try_start_0
    sget-object v0, Lcom/baidu/launcher/thememanager/model/WallpaperLocalList;->mWallpaperlocalList:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/baidu/launcher/thememanager/model/WallpaperLocalList;->indexof(Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 43
    monitor-exit v1

    .line 44
    return-void

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public size()I
    .locals 1

    .prologue
    .line 51
    sget-object v0, Lcom/baidu/launcher/thememanager/model/WallpaperLocalList;->mWallpaperlocalList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method
