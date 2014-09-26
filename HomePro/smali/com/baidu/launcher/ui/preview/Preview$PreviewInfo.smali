.class public Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;
.super Ljava/lang/Object;
.source "Preview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/preview/Preview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PreviewInfo"
.end annotation


# instance fields
.field public currentIndex:I

.field public originalIndex:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, -0x1

    .line 108
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput v0, p0, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;->currentIndex:I

    .line 112
    iput v0, p0, Lcom/baidu/launcher/ui/preview/Preview$PreviewInfo;->originalIndex:I

    return-void
.end method
