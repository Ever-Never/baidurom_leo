.class final Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem$1;
.super Ljava/lang/Object;
.source "WallpaperLocalItem.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;
    .locals 1
    .parameter "source"

    .prologue
    .line 131
    new-instance v0, Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;

    invoke-direct {v0, p1}, Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem$1;->createFromParcel(Landroid/os/Parcel;)Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;
    .locals 1
    .parameter "size"

    .prologue
    .line 136
    new-array v0, p1, [Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 127
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem$1;->newArray(I)[Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;

    move-result-object v0

    return-object v0
.end method
