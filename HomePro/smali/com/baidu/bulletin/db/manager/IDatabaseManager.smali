.class public interface abstract Lcom/baidu/bulletin/db/manager/IDatabaseManager;
.super Ljava/lang/Object;
.source "IDatabaseManager.java"


# virtual methods
.method public abstract deleteChannelItem(IJJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/bulletin/db/exception/DatabaseException;
        }
    .end annotation
.end method

.method public abstract deleteChannelItemEqualLess(IJI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/bulletin/db/exception/DatabaseException;
        }
    .end annotation
.end method

.method public abstract deleteChannelItemEqualMore(IJI)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/bulletin/db/exception/DatabaseException;
        }
    .end annotation
.end method

.method public abstract insterImage(Lcom/baidu/bulletin/db/entity/ImageInfo;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/bulletin/db/exception/DatabaseException;
        }
    .end annotation
.end method

.method public abstract queryAllImage()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/db/entity/ImageInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/bulletin/db/exception/DatabaseException;
        }
    .end annotation
.end method

.method public abstract queryAppDetailByDetailId(I)Lcom/baidu/bulletin/db/entity/AppDetailInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/bulletin/db/exception/DatabaseException;
        }
    .end annotation
.end method

.method public abstract queryAppDetailByItemId(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/db/entity/AppDetailInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/bulletin/db/exception/DatabaseException;
        }
    .end annotation
.end method

.method public abstract queryChanelItemMaxVersion(I)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/bulletin/db/exception/DatabaseException;
        }
    .end annotation
.end method

.method public abstract queryChanelItemMinVersion(I)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/bulletin/db/exception/DatabaseException;
        }
    .end annotation
.end method

.method public abstract queryChannelItem(J)Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/bulletin/db/exception/DatabaseException;
        }
    .end annotation
.end method

.method public abstract queryChannelItem(IJII)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IJII)",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/db/entity/ChannelItemInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/bulletin/db/exception/DatabaseException;
        }
    .end annotation
.end method

.method public abstract queryChannelItemByVersion(IJ)Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/bulletin/db/exception/DatabaseException;
        }
    .end annotation
.end method

.method public abstract queryChannelItemCountEqualLess(IJ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/bulletin/db/exception/DatabaseException;
        }
    .end annotation
.end method

.method public abstract queryChannelItemCountEqualMore(IJ)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/bulletin/db/exception/DatabaseException;
        }
    .end annotation
.end method

.method public abstract queryChannelItemTopVersion(II)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/db/entity/ChannelItemInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/bulletin/db/exception/DatabaseException;
        }
    .end annotation
.end method

.method public abstract queryImage(J)Lcom/baidu/bulletin/db/entity/ImageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/bulletin/db/exception/DatabaseException;
        }
    .end annotation
.end method

.method public abstract queryImage(Lcom/baidu/bulletin/db/entity/ImageInfo;)Lcom/baidu/bulletin/db/entity/ImageInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/bulletin/db/exception/DatabaseException;
        }
    .end annotation
.end method

.method public abstract queryNewsDetailByDetailId(I)Lcom/baidu/bulletin/db/entity/NewsDetailInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/bulletin/db/exception/DatabaseException;
        }
    .end annotation
.end method

.method public abstract queryNewsDetailByItemId(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/db/entity/NewsDetailInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/bulletin/db/exception/DatabaseException;
        }
    .end annotation
.end method

.method public abstract queryOpItems(Ljava/lang/String;I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/db/entity/OpItemInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/bulletin/db/exception/DatabaseException;
        }
    .end annotation
.end method

.method public abstract saveAppDetail(Lcom/baidu/bulletin/db/entity/AppDetailInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/bulletin/db/exception/DatabaseException;
        }
    .end annotation
.end method

.method public abstract saveAppDetail(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/db/entity/AppDetailInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/bulletin/db/exception/DatabaseException;
        }
    .end annotation
.end method

.method public abstract saveChannelItem(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/bulletin/db/exception/DatabaseException;
        }
    .end annotation
.end method

.method public abstract saveChannelItem(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/db/entity/ChannelItemInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/bulletin/db/exception/DatabaseException;
        }
    .end annotation
.end method

.method public abstract saveNewsDetail(Lcom/baidu/bulletin/db/entity/NewsDetailInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/bulletin/db/exception/DatabaseException;
        }
    .end annotation
.end method

.method public abstract saveNewsDetail(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/db/entity/NewsDetailInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/bulletin/db/exception/DatabaseException;
        }
    .end annotation
.end method

.method public abstract saveOpItems(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/db/entity/OpItemInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/bulletin/db/exception/DatabaseException;
        }
    .end annotation
.end method

.method public abstract updateAppDetail(Lcom/baidu/bulletin/db/entity/AppDetailInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/bulletin/db/exception/DatabaseException;
        }
    .end annotation
.end method

.method public abstract updateChannelItem(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/bulletin/db/exception/DatabaseException;
        }
    .end annotation
.end method

.method public abstract updateImage(Lcom/baidu/bulletin/db/entity/ImageInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/bulletin/db/exception/DatabaseException;
        }
    .end annotation
.end method

.method public abstract updateNewsDetail(Lcom/baidu/bulletin/db/entity/NewsDetailInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/bulletin/db/exception/DatabaseException;
        }
    .end annotation
.end method

.method public abstract updateOpItem(Lcom/baidu/bulletin/db/entity/OpItemInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/bulletin/db/exception/DatabaseException;
        }
    .end annotation
.end method

.method public abstract updateOpItem(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/db/entity/OpItemInfo;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/baidu/bulletin/db/exception/DatabaseException;
        }
    .end annotation
.end method
