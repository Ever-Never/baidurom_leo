.class Lcom/baidu/yi/ads/AdServiceConnector$AdRequestParameters;
.super Ljava/lang/Object;
.source "AdServiceConnector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/yi/ads/AdServiceConnector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdRequestParameters"
.end annotation


# instance fields
.field private mAdReqParams:Lcom/baidu/yi/ads/service/AdSpaceParams;

.field private mHeight:I

.field private mWidth:I


# direct methods
.method constructor <init>(Lcom/baidu/yi/ads/service/AdSpaceParams;II)V
    .locals 0
    .parameter "params"
    .parameter "widht"
    .parameter "height"

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/baidu/yi/ads/AdServiceConnector$AdRequestParameters;->mAdReqParams:Lcom/baidu/yi/ads/service/AdSpaceParams;

    .line 84
    iput p2, p0, Lcom/baidu/yi/ads/AdServiceConnector$AdRequestParameters;->mWidth:I

    .line 85
    iput p3, p0, Lcom/baidu/yi/ads/AdServiceConnector$AdRequestParameters;->mHeight:I

    .line 86
    return-void
.end method


# virtual methods
.method getAdReqParams()Lcom/baidu/yi/ads/service/AdSpaceParams;
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/baidu/yi/ads/AdServiceConnector$AdRequestParameters;->mAdReqParams:Lcom/baidu/yi/ads/service/AdSpaceParams;

    return-object v0
.end method

.method getHeight()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/baidu/yi/ads/AdServiceConnector$AdRequestParameters;->mHeight:I

    return v0
.end method

.method getWidth()I
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/baidu/yi/ads/AdServiceConnector$AdRequestParameters;->mWidth:I

    return v0
.end method
