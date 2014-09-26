.class public Lcom/baidu/yi/sdk/storage/ExternalStorage;
.super Ljava/lang/Object;
.source "ExternalStorage.java"


# static fields
.field protected static final TAG:Ljava/lang/String; = "ExternalStorage"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getExternalStorageDirectory()Ljava/io/File;
    .locals 2

    .prologue
    .line 29
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 30
    .local v0, status:Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 30
    :goto_0
    return-object v1

    .line 32
    :cond_0
    invoke-static {}, Lcom/baidu/yi/sdk/storage/SecondaryStorageReflect;->getSecondaryExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    goto :goto_0
.end method

.method public static getExternalStorageState()Ljava/lang/String;
    .locals 2

    .prologue
    .line 20
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 21
    .local v0, status:Ljava/lang/String;
    const-string v1, "mounted"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .end local v0           #status:Ljava/lang/String;
    :goto_0
    return-object v0

    .line 22
    .restart local v0       #status:Ljava/lang/String;
    :cond_0
    invoke-static {}, Lcom/baidu/yi/sdk/storage/SecondaryStorageReflect;->getSecondaryExternalStorageState()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
