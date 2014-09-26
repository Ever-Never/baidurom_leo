.class public Lcom/baidu/launcher/thememanager/util/ImageFetcher$CacheAsyncTask;
.super Landroid/os/AsyncTask;
.source "ImageFetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/thememanager/util/ImageFetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "CacheAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Object;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/thememanager/util/ImageFetcher;


# direct methods
.method protected constructor <init>(Lcom/baidu/launcher/thememanager/util/ImageFetcher;)V
    .locals 0
    .parameter

    .prologue
    .line 534
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher$CacheAsyncTask;->this$0:Lcom/baidu/launcher/thememanager/util/ImageFetcher;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 534
    invoke-virtual {p0, p1}, Lcom/baidu/launcher/thememanager/util/ImageFetcher$CacheAsyncTask;->doInBackground([Ljava/lang/Object;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Object;)Ljava/lang/Void;
    .locals 1
    .parameter "params"

    .prologue
    .line 538
    const/4 v0, 0x0

    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 552
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 540
    :pswitch_0
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher$CacheAsyncTask;->this$0:Lcom/baidu/launcher/thememanager/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->clearCacheInternal()V

    goto :goto_0

    .line 543
    :pswitch_1
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher$CacheAsyncTask;->this$0:Lcom/baidu/launcher/thememanager/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->initDiskCacheInternal()V

    goto :goto_0

    .line 546
    :pswitch_2
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher$CacheAsyncTask;->this$0:Lcom/baidu/launcher/thememanager/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->flushCacheInternal()V

    goto :goto_0

    .line 549
    :pswitch_3
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/util/ImageFetcher$CacheAsyncTask;->this$0:Lcom/baidu/launcher/thememanager/util/ImageFetcher;

    invoke-virtual {v0}, Lcom/baidu/launcher/thememanager/util/ImageFetcher;->closeCacheInternal()V

    goto :goto_0

    .line 538
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
