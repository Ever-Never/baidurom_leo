.class public Lcom/baidu/yi/ads/Ad;
.super Ljava/lang/Object;
.source "Ad.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/yi/ads/Ad$Action;
    }
.end annotation


# static fields
.field private static final CLASS_VERSION:I = 0x1

.field public static final CONTENT_TYPE_IMAGE:I = 0x2

.field public static final CONTENT_TYPE_IMAGE_AND_TEXT:I = 0x3

.field public static final CONTENT_TYPE_REQ_INTERVAL:I = 0x5

.field public static final CONTENT_TYPE_TEXT:I = 0x1

.field public static final CONTENT_TYPE_UNKNOWN:I = 0x0

.field public static final CONTENT_TYPE_URL:I = 0x4

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/baidu/yi/ads/Ad;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActions:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/baidu/yi/ads/Ad$Action;",
            ">;"
        }
    .end annotation
.end field

.field private mAdId:Ljava/lang/String;

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mContentType:I

.field private mDesc:Ljava/lang/String;

.field private mMimeType:Ljava/lang/String;

.field private mShowTime:I

.field private mText:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field private mUrl:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 80
    new-instance v0, Lcom/baidu/yi/ads/Ad$1;

    invoke-direct {v0}, Lcom/baidu/yi/ads/Ad$1;-><init>()V

    .line 79
    sput-object v0, Lcom/baidu/yi/ads/Ad;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 87
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 228
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/baidu/yi/ads/Ad;->mActions:Ljava/util/Vector;

    .line 229
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 3
    .parameter "in"

    .prologue
    const/4 v2, 0x0

    .line 236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/baidu/yi/ads/Ad;->mActions:Ljava/util/Vector;

    .line 237
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 238
    .local v0, sourceVersion:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/yi/ads/Ad;->mText:Ljava/lang/String;

    .line 239
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/yi/ads/Ad;->mTitle:Ljava/lang/String;

    .line 240
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/yi/ads/Ad;->mDesc:Ljava/lang/String;

    .line 241
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/yi/ads/Ad;->mMimeType:Ljava/lang/String;

    .line 242
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/yi/ads/Ad;->mUrl:Ljava/lang/String;

    .line 243
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/baidu/yi/ads/Ad;->mShowTime:I

    .line 244
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/baidu/yi/ads/Ad;->mContentType:I

    .line 245
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/yi/ads/Ad;->mAdId:Ljava/lang/String;

    .line 246
    iget-object v1, p0, Lcom/baidu/yi/ads/Ad;->mActions:Ljava/util/Vector;

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    .line 247
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    iput-object v1, p0, Lcom/baidu/yi/ads/Ad;->mBitmap:Landroid/graphics/Bitmap;

    .line 248
    return-void
.end method


# virtual methods
.method public addAction(Lcom/baidu/yi/ads/Ad$Action;)V
    .locals 1
    .parameter "a"

    .prologue
    .line 444
    iget-object v0, p0, Lcom/baidu/yi/ads/Ad;->mActions:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 445
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x0

    return v0
.end method

.method public getAction(I)Lcom/baidu/yi/ads/Ad$Action;
    .locals 3
    .parameter "type"

    .prologue
    .line 430
    iget-object v1, p0, Lcom/baidu/yi/ads/Ad;->mActions:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1

    .line 435
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 430
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/yi/ads/Ad$Action;

    .line 431
    .local v0, action:Lcom/baidu/yi/ads/Ad$Action;
    invoke-virtual {v0}, Lcom/baidu/yi/ads/Ad$Action;->getType()I

    move-result v2

    if-ne v2, p1, :cond_0

    goto :goto_0
.end method

.method public getActions()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/baidu/yi/ads/Ad$Action;",
            ">;"
        }
    .end annotation

    .prologue
    .line 418
    iget-object v0, p0, Lcom/baidu/yi/ads/Ad;->mActions:Ljava/util/Vector;

    return-object v0
.end method

.method public getAdId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/baidu/yi/ads/Ad;->mAdId:Ljava/lang/String;

    return-object v0
.end method

.method public getContentType()I
    .locals 1

    .prologue
    .line 409
    iget v0, p0, Lcom/baidu/yi/ads/Ad;->mContentType:I

    return v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 339
    iget-object v0, p0, Lcom/baidu/yi/ads/Ad;->mDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/baidu/yi/ads/Ad;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 366
    iget-object v0, p0, Lcom/baidu/yi/ads/Ad;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getShowTime()I
    .locals 1

    .prologue
    .line 357
    iget v0, p0, Lcom/baidu/yi/ads/Ad;->mShowTime:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 319
    iget-object v0, p0, Lcom/baidu/yi/ads/Ad;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/baidu/yi/ads/Ad;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/baidu/yi/ads/Ad;->mUrl:Ljava/lang/String;

    return-object v0
.end method

.method public hasActions()Z
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/baidu/yi/ads/Ad;->mActions:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/yi/ads/Ad;->mActions:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAdId(Ljava/lang/String;)V
    .locals 0
    .parameter "id"

    .prologue
    .line 382
    iput-object p1, p0, Lcom/baidu/yi/ads/Ad;->mAdId:Ljava/lang/String;

    .line 383
    return-void
.end method

.method public setContentType(I)V
    .locals 0
    .parameter "adType"

    .prologue
    .line 265
    iput p1, p0, Lcom/baidu/yi/ads/Ad;->mContentType:I

    .line 266
    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0
    .parameter "desc"

    .prologue
    .line 309
    iput-object p1, p0, Lcom/baidu/yi/ads/Ad;->mDesc:Ljava/lang/String;

    .line 310
    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 0
    .parameter "b"

    .prologue
    .line 391
    iput-object p1, p0, Lcom/baidu/yi/ads/Ad;->mBitmap:Landroid/graphics/Bitmap;

    .line 392
    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0
    .parameter "aMimeType"

    .prologue
    .line 256
    iput-object p1, p0, Lcom/baidu/yi/ads/Ad;->mMimeType:Ljava/lang/String;

    .line 257
    return-void
.end method

.method public setShowTime(I)V
    .locals 0
    .parameter "time"

    .prologue
    .line 282
    iput p1, p0, Lcom/baidu/yi/ads/Ad;->mShowTime:I

    .line 283
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter "theText"

    .prologue
    .line 291
    iput-object p1, p0, Lcom/baidu/yi/ads/Ad;->mText:Ljava/lang/String;

    .line 292
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 300
    iput-object p1, p0, Lcom/baidu/yi/ads/Ad;->mTitle:Ljava/lang/String;

    .line 301
    return-void
.end method

.method public setURL(Ljava/lang/String;)V
    .locals 0
    .parameter "url"

    .prologue
    .line 274
    iput-object p1, p0, Lcom/baidu/yi/ads/Ad;->mUrl:Ljava/lang/String;

    .line 275
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "out"
    .parameter "flags"

    .prologue
    const/4 v1, 0x1

    .line 201
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 202
    iget-object v0, p0, Lcom/baidu/yi/ads/Ad;->mText:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 203
    iget-object v0, p0, Lcom/baidu/yi/ads/Ad;->mTitle:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/baidu/yi/ads/Ad;->mDesc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 205
    iget-object v0, p0, Lcom/baidu/yi/ads/Ad;->mMimeType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 206
    iget-object v0, p0, Lcom/baidu/yi/ads/Ad;->mUrl:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 207
    iget v0, p0, Lcom/baidu/yi/ads/Ad;->mShowTime:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 208
    iget v0, p0, Lcom/baidu/yi/ads/Ad;->mContentType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    iget-object v0, p0, Lcom/baidu/yi/ads/Ad;->mAdId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/baidu/yi/ads/Ad;->mActions:Ljava/util/Vector;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    .line 211
    iget-object v0, p0, Lcom/baidu/yi/ads/Ad;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 212
    return-void
.end method
