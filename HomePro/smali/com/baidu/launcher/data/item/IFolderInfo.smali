.class public interface abstract Lcom/baidu/launcher/data/item/IFolderInfo;
.super Ljava/lang/Object;
.source "IFolderInfo.java"


# virtual methods
.method public abstract add(Lcom/baidu/launcher/data/item/BaseItemInfo;)V
.end method

.method public abstract get(I)Lcom/baidu/launcher/data/item/BaseItemInfo;
.end method

.method public abstract getAll()Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<+",
            "Lcom/baidu/launcher/data/item/BaseItemInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getContainer()J
.end method

.method public abstract getDisplayTitle(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getID()J
.end method

.method public abstract getItemType()I
.end method

.method public abstract getSize()I
.end method

.method public abstract getTitle()Ljava/lang/String;
.end method

.method public abstract isOpened()Z
.end method

.method public abstract isPreset()Z
.end method

.method public abstract remove(Lcom/baidu/launcher/data/item/BaseItemInfo;)V
.end method

.method public abstract removeAll()V
.end method

.method public abstract setOpen(Z)V
.end method

.method public abstract setTitle(Ljava/lang/String;)V
.end method
