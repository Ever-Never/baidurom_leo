.class Lcom/baidu/yi/sdk/cloudstorage/global/OfflineInfo$1;
.super Ljava/lang/Object;
.source "OfflineInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/yi/sdk/cloudstorage/global/OfflineInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;
    .locals 1
    .parameter "source"

    .prologue
    .line 54
    new-instance v0, Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;

    invoke-direct {v0, p1}, Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/baidu/yi/sdk/cloudstorage/global/OfflineInfo$1;->createFromParcel(Landroid/os/Parcel;)Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;
    .locals 1
    .parameter "size"

    .prologue
    .line 59
    new-array v0, p1, [Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter

    .prologue
    .line 1
    invoke-virtual {p0, p1}, Lcom/baidu/yi/sdk/cloudstorage/global/OfflineInfo$1;->newArray(I)[Lcom/baidu/yi/sdk/cloudstorage/global/FileEntry;

    move-result-object v0

    return-object v0
.end method
