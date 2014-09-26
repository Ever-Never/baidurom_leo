.class public interface abstract Lcom/baidu/bulletin/RequestCallback$NewsDetailCallback;
.super Ljava/lang/Object;
.source "RequestCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/RequestCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "NewsDetailCallback"
.end annotation


# virtual methods
.method public abstract onNewsDetailCallback(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/db/entity/NewsDetailInfo;",
            ">;I)V"
        }
    .end annotation
.end method
