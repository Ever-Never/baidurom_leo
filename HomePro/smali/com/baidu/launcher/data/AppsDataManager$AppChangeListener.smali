.class public interface abstract Lcom/baidu/launcher/data/AppsDataManager$AppChangeListener;
.super Ljava/lang/Object;
.source "AppsDataManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/data/AppsDataManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AppChangeListener"
.end annotation


# static fields
.field public static final TYPE_ADD:I = 0x0

.field public static final TYPE_AVAILABLE:I = 0x3

.field public static final TYPE_DISABLE_APP:I = 0x6

.field public static final TYPE_ENABLE_APP:I = 0x5

.field public static final TYPE_NONE:I = -0x1

.field public static final TYPE_REMOVE:I = 0x1

.field public static final TYPE_UNAVAILABLE:I = 0x4

.field public static final TYPE_UPDATE:I = 0x2


# virtual methods
.method public abstract onAppChanged(Ljava/util/ArrayList;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/ListAppInfo;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract onAppListDataChanged(Ljava/util/ArrayList;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/ListItemInfo;",
            ">;I)V"
        }
    .end annotation
.end method

.method public abstract onFolderChanged(Ljava/util/ArrayList;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/baidu/launcher/data/item/ListItemInfo;",
            ">;I)V"
        }
    .end annotation
.end method
