.class public Lcom/baidu/yi/ads/service/plugin/AdImage;
.super Ljava/lang/Object;
.source "AdImage.java"


# instance fields
.field private mContentType:I

.field private mDesc:Ljava/lang/String;

.field private mImage:Landroid/graphics/Bitmap;

.field private mMimeType:Ljava/lang/String;

.field private mText:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 1
    .parameter "contentType"

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    iput-object v0, p0, Lcom/baidu/yi/ads/service/plugin/AdImage;->mImage:Landroid/graphics/Bitmap;

    .line 53
    iput p1, p0, Lcom/baidu/yi/ads/service/plugin/AdImage;->mContentType:I

    .line 54
    iput-object v0, p0, Lcom/baidu/yi/ads/service/plugin/AdImage;->mText:Ljava/lang/String;

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Bitmap;Ljava/lang/String;)V
    .locals 1
    .parameter "image"
    .parameter "mimeType"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/baidu/yi/ads/service/plugin/AdImage;->mImage:Landroid/graphics/Bitmap;

    .line 42
    iput-object p2, p0, Lcom/baidu/yi/ads/service/plugin/AdImage;->mMimeType:Ljava/lang/String;

    .line 43
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/yi/ads/service/plugin/AdImage;->mText:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public getContentType()I
    .locals 1

    .prologue
    .line 121
    iget v0, p0, Lcom/baidu/yi/ads/service/plugin/AdImage;->mContentType:I

    return v0
.end method

.method public getDesc()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/baidu/yi/ads/service/plugin/AdImage;->mDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getImage()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/baidu/yi/ads/service/plugin/AdImage;->mImage:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/baidu/yi/ads/service/plugin/AdImage;->mMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/baidu/yi/ads/service/plugin/AdImage;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/baidu/yi/ads/service/plugin/AdImage;->mTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setContentType(I)V
    .locals 0
    .parameter "type"

    .prologue
    .line 157
    iput p1, p0, Lcom/baidu/yi/ads/service/plugin/AdImage;->mContentType:I

    .line 158
    return-void
.end method

.method public setDesc(Ljava/lang/String;)V
    .locals 0
    .parameter "desc"

    .prologue
    .line 148
    iput-object p1, p0, Lcom/baidu/yi/ads/service/plugin/AdImage;->mDesc:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 1
    .parameter "bm"

    .prologue
    .line 72
    iget-object v0, p0, Lcom/baidu/yi/ads/service/plugin/AdImage;->mImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/baidu/yi/ads/service/plugin/AdImage;->mImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 75
    :cond_0
    iput-object p1, p0, Lcom/baidu/yi/ads/service/plugin/AdImage;->mImage:Landroid/graphics/Bitmap;

    .line 76
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 130
    iput-object p1, p0, Lcom/baidu/yi/ads/service/plugin/AdImage;->mText:Ljava/lang/String;

    .line 131
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0
    .parameter "title"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/baidu/yi/ads/service/plugin/AdImage;->mTitle:Ljava/lang/String;

    .line 140
    return-void
.end method
