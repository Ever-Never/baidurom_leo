.class public interface abstract Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty;
.super Ljava/lang/Object;
.source "IBeauty.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/ui/draglist/adapter/IBeauty$StyleType;
    }
.end annotation


# virtual methods
.method public abstract beauty(Ljava/util/List;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/db/entity/ChannelItemInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/bulletin/ui/draglist/adapter/ChannelItemPair;",
            ">;"
        }
    .end annotation
.end method
