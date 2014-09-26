.class public interface abstract Lcom/baidu/bulletin/dao/ChannelItemDAO;
.super Ljava/lang/Object;
.source "ChannelItemDAO.java"


# virtual methods
.method public abstract close()V
.end method

.method public abstract delete(Ljava/lang/Class;Ljava/lang/String;)V
.end method

.method public abstract insert(Lcom/baidu/bulletin/entity/ChannelItem;)V
.end method

.method public abstract insert([Lcom/baidu/bulletin/entity/ChannelItem;)V
.end method

.method public abstract insertDetail(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/baidu/bulletin/entity/AbstractDetailEntity;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract insertDetail([Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract queryChannelItem(J)Lcom/baidu/bulletin/entity/ChannelItem;
.end method

.method public abstract queryChannelItem(Ljava/lang/String;J)Lcom/baidu/bulletin/entity/ChannelItem;
.end method

.method public abstract queryChannelItems(Ljava/lang/String;)[Lcom/baidu/bulletin/entity/ChannelItem;
.end method

.method public abstract queryChannelItemsForCheck(JLjava/lang/String;)[Lcom/baidu/bulletin/entity/ChannelItem;
.end method

.method public abstract queryDetail(Lcom/baidu/bulletin/entity/ChannelItem;)Lcom/baidu/bulletin/entity/ChannelItem;
.end method

.method public abstract queryMaxId(Ljava/lang/Class;Ljava/lang/String;)J
.end method

.method public abstract queryMaxPageId()I
.end method

.method public abstract queryNeedBriefImageChannelItem()[Lcom/baidu/bulletin/entity/ChannelItem;
.end method

.method public abstract queryNeedBriefImageChannelItemByPage(I)[Lcom/baidu/bulletin/entity/ChannelItem;
.end method

.method public abstract queryNeedDetailChannelItem()[Lcom/baidu/bulletin/entity/ChannelItem;
.end method

.method public abstract queryPageByPageId(I)[Lcom/baidu/bulletin/entity/ChannelItem;
.end method

.method public abstract queryPageCount()I
.end method

.method public abstract queryRemoveFiles(JLjava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryRemoveId(JLjava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract queryRemoveIdFitDatabase(JLjava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract querySameFileWithAttachement(JLjava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract querySameFileWithItem(JLjava/lang/String;Ljava/lang/String;)Z
.end method

.method public abstract queryUnDoPageChannelItem()[Lcom/baidu/bulletin/entity/ChannelItem;
.end method

.method public abstract queryUnfixedChannelItem()[Lcom/baidu/bulletin/entity/ChannelItem;
.end method

.method public abstract queryUnpagedChannelItem()[Lcom/baidu/bulletin/entity/ChannelItem;
.end method

.method public abstract update(Lcom/baidu/bulletin/entity/ChannelItem;)V
.end method

.method public abstract update([Lcom/baidu/bulletin/entity/ChannelItem;)V
.end method

.method public abstract updateDetail(Lcom/baidu/bulletin/entity/AbstractDetailEntity;)V
.end method

.method public abstract updateDetail(Lcom/baidu/bulletin/entity/ChannelItemPage$Entity;)V
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
