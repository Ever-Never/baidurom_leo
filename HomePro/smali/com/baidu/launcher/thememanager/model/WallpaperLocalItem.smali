.class public Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;
.super Ljava/lang/Object;
.source "WallpaperLocalItem.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCategoryName:Ljava/lang/String;

.field private mId:I

.field private mItemPath:Ljava/lang/String;

.field private mOriginalUrl:Ljava/lang/String;

.field private mSize:I

.field private mThumbUrl:Ljava/lang/String;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 127
    new-instance v0, Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem$1;

    invoke-direct {v0}, Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem$1;-><init>()V

    sput-object v0, Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;->mId:I

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;->mType:I

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;->mSize:I

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;->mCategoryName:Ljava/lang/String;

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;->mItemPath:Ljava/lang/String;

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;->mThumbUrl:Ljava/lang/String;

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;->mOriginalUrl:Ljava/lang/String;

    .line 148
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 113
    const/4 v0, 0x0

    return v0
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;->mOriginalUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getThumbHighUrl()Ljava/lang/String;
    .locals 3

    .prologue
    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;->mThumbUrl:Ljava/lang/String;

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
    .line 46
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;->mThumbUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getmCategoryName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;->mCategoryName:Ljava/lang/String;

    return-object v0
.end method

.method public getmId()I
    .locals 1

    .prologue
    .line 67
    iget v0, p0, Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;->mId:I

    return v0
.end method

.method public getmItemPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;->mItemPath:Ljava/lang/String;

    return-object v0
.end method

.method public getmSize()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;->mSize:I

    return v0
.end method

.method public getmType()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;->mType:I

    return v0
.end method

.method public setOriginalUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "originalUrl"

    .prologue
    .line 58
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;->mOriginalUrl:Ljava/lang/String;

    .line 59
    return-void
.end method

.method public setThumbUrl(Ljava/lang/String;)V
    .locals 0
    .parameter "thumbUrl"

    .prologue
    .line 50
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;->mThumbUrl:Ljava/lang/String;

    .line 51
    return-void
.end method

.method public setmCategoryName(Ljava/lang/String;)V
    .locals 0
    .parameter "mCategoryName"

    .prologue
    .line 79
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;->mCategoryName:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public setmId(I)V
    .locals 0
    .parameter "mItemId"

    .prologue
    .line 71
    iput p1, p0, Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;->mId:I

    .line 72
    return-void
.end method

.method public setmItemPath(Ljava/lang/String;)V
    .locals 0
    .parameter "mItemPath"

    .prologue
    .line 87
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;->mItemPath:Ljava/lang/String;

    .line 88
    return-void
.end method

.method public setmSize(I)V
    .locals 0
    .parameter "mSize"

    .prologue
    .line 107
    iput p1, p0, Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;->mSize:I

    .line 108
    return-void
.end method

.method public setmType(I)V
    .locals 0
    .parameter "mType"

    .prologue
    .line 97
    iput p1, p0, Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;->mType:I

    .line 98
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 118
    iget v0, p0, Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;->mId:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget v0, p0, Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;->mType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget v0, p0, Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;->mSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;->mCategoryName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 122
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;->mItemPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 123
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;->mThumbUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 124
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/model/WallpaperLocalItem;->mOriginalUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    return-void
.end method
