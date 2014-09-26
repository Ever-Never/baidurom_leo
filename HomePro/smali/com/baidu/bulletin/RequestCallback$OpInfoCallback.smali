.class public interface abstract Lcom/baidu/bulletin/RequestCallback$OpInfoCallback;
.super Ljava/lang/Object;
.source "RequestCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/RequestCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "OpInfoCallback"
.end annotation


# virtual methods
.method public abstract onOpInfoCallback(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/db/entity/OpItemInfo;",
            ">;I)V"
        }
    .end annotation
.end method
