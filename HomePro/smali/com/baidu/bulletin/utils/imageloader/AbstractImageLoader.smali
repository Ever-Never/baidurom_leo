.class public abstract Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader;
.super Ljava/lang/Object;
.source "AbstractImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z = true

.field protected static final TAG:Ljava/lang/String; = "AsyncImageLoader"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    return-void
.end method


# virtual methods
.method public abstract loadImage(Lcom/baidu/bulletin/db/entity/ImageInfo;Lcom/baidu/bulletin/utils/imageloader/AbstractImageLoader$ImageCallback;)V
.end method
