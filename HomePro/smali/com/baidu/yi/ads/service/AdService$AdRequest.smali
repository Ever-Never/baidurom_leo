.class Lcom/baidu/yi/ads/service/AdService$AdRequest;
.super Ljava/lang/Object;
.source "AdService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/yi/ads/service/AdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AdRequest"
.end annotation


# instance fields
.field private mAdListener:Lcom/baidu/yi/ads/service/IAdRequestListener;

.field private mHeight:I

.field private mParams:Lcom/baidu/yi/ads/service/AdSpaceParams;

.field private mWidth:I


# direct methods
.method constructor <init>(Lcom/baidu/yi/ads/service/AdSpaceParams;Lcom/baidu/yi/ads/service/IAdRequestListener;II)V
    .locals 0
    .parameter "params"
    .parameter "adListener"
    .parameter "width"
    .parameter "height"

    .prologue
    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/baidu/yi/ads/service/AdService$AdRequest;->mParams:Lcom/baidu/yi/ads/service/AdSpaceParams;

    .line 64
    iput-object p2, p0, Lcom/baidu/yi/ads/service/AdService$AdRequest;->mAdListener:Lcom/baidu/yi/ads/service/IAdRequestListener;

    .line 65
    iput p3, p0, Lcom/baidu/yi/ads/service/AdService$AdRequest;->mWidth:I

    .line 66
    iput p4, p0, Lcom/baidu/yi/ads/service/AdService$AdRequest;->mHeight:I

    .line 67
    return-void
.end method


# virtual methods
.method getAdListener()Lcom/baidu/yi/ads/service/IAdRequestListener;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/baidu/yi/ads/service/AdService$AdRequest;->mAdListener:Lcom/baidu/yi/ads/service/IAdRequestListener;

    return-object v0
.end method

.method getAdReqParams()Lcom/baidu/yi/ads/service/AdSpaceParams;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/baidu/yi/ads/service/AdService$AdRequest;->mParams:Lcom/baidu/yi/ads/service/AdSpaceParams;

    return-object v0
.end method

.method getHeight()I
    .locals 1

    .prologue
    .line 94
    iget v0, p0, Lcom/baidu/yi/ads/service/AdService$AdRequest;->mHeight:I

    return v0
.end method

.method getWidht()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/baidu/yi/ads/service/AdService$AdRequest;->mWidth:I

    return v0
.end method
