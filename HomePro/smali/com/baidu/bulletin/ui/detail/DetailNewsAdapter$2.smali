.class Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$2;
.super Ljava/lang/Object;
.source "DetailNewsAdapter.java"

# interfaces
.implements Lcom/baidu/yi/ads/AdRetrievalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 336
    iput-object p1, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$2;->this$0:Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdInfo(Lcom/baidu/yi/ads/api/AdClient;)V
    .locals 0
    .parameter "adClt"

    .prologue
    .line 343
    return-void
.end method

.method public onAdRetrieved(Z)V
    .locals 0
    .parameter "isSuc"

    .prologue
    .line 339
    return-void
.end method
