.class public Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;
.super Ljava/lang/Object;
.source "WallpaperOnlineItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCategoryName:Ljava/lang/String;

.field private mOriginalUrl:Ljava/lang/String;

.field private mSize:I

.field private mThumbUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 66
    new-instance v0, Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem$1;

    invoke-direct {v0}, Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem$1;-><init>()V

    sput-object v0, Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;->mCategoryName:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;->mThumbUrl:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;->mOriginalUrl:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;->mSize:I

    .line 85
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;->mOriginalUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbHighUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;->mThumbUrl:Ljava/lang/String;

    const-string v2, "[?]"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?h=330&w=350"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThumbUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;->mThumbUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getmCategoryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;->mCategoryName:Ljava/lang/String;

    return-object v0
.end method

.method public getmSize()I
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;->mSize:I

    return v0
.end method

.method public setOriginalUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "originalUrl"

    .prologue
    .line 26
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;->mOriginalUrl:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setThumbUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "thumbUrl"

    .prologue
    .line 18
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;->mThumbUrl:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setmCategoryName(Ljava/lang/String;)V
    .locals 0
    .parameter "mCategoryName"

    .prologue
    .line 39
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;->mCategoryName:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setmSize(Ljava/lang/Integer;)V
    .locals 1
    .parameter "mSize"

    .prologue
    .line 48
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    iput v0, p0, Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;->mSize:I

    .line 49
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 60
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;->mCategoryName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;->mThumbUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;->mOriginalUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 63
    iget v0, p0, Lcom/baidu/launcher/thememanager/model/WallpaperOnlineItem;->mSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 64
    return-void
.end method
