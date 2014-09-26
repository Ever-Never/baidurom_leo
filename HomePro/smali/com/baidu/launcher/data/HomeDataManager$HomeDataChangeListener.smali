.class public interface abstract Lcom/baidu/launcher/data/HomeDataManager$HomeDataChangeListener;
.super Ljava/lang/Object;
.source "HomeDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/data/HomeDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "HomeDataChangeListener"
.end annotation


# static fields
.field public static final TYPE_ADD:I = 0x0

.field public static final TYPE_REMOVE:I = 0x1

.field public static final TYPE_UPDATE:I = 0x2


# virtual methods
.method public abstract onHomeDataAppUpdate(Ljava/lang/String;I)V
.end method

.method public abstract onHomeDateChanged(Ljava/util/ArrayList;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/HomeItemInfo;",
            ">;I)V"
        }
    .end annotation
.end method
