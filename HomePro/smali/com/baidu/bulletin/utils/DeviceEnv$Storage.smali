.class public Lcom/baidu/bulletin/utils/DeviceEnv$Storage;
.super Ljava/lang/Object;
.source "DeviceEnv.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/utils/DeviceEnv;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Storage"
.end annotation


# static fields
.field static final FREE_SPACE_MIN_SIZE:J = 0xa00000L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 199
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getDirectory()Ljava/io/File;
    .locals 1

    .prologue
    .line 204
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public static getFreeSpace()J
    .locals 3

    .prologue
    .line 212
    invoke-static {}, Lcom/baidu/bulletin/utils/DeviceEnv$Storage;->getDirectory()Ljava/io/File;

    move-result-object v0

    .line 213
    .local v0, path:Ljava/io/File;
    if-nez v0, :cond_0

    const-wide/16 v1, 0x0

    :goto_0
    return-wide v1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v1

    goto :goto_0
.end method

.method public static isAvailable()Z
    .locals 2

    .prologue
    .line 208
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isHasFreeStorageSpace()Z
    .locals 4

    .prologue
    .line 217
    invoke-static {}, Lcom/baidu/bulletin/utils/DeviceEnv$Storage;->getFreeSpace()J

    move-result-wide v0

    const-wide/32 v2, 0xa00000

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
