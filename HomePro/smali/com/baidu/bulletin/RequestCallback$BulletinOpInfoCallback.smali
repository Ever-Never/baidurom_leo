.class public interface abstract Lcom/baidu/bulletin/RequestCallback$BulletinOpInfoCallback;
.super Ljava/lang/Object;
.source "RequestCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/RequestCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "BulletinOpInfoCallback"
.end annotation


# virtual methods
.method public abstract onBulletinOpInfoCallback(Ljava/util/List;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/db/entity/BulletinOpItemInfo;",
            ">;I)V"
        }
    .end annotation
.end method
