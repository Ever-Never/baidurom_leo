.class public Lcom/baidu/launcher/ui/editview/ThumbnailGroup$EditViewIndicatorCallback;
.super Ljava/lang/Object;
.source "ThumbnailGroup.java"

# interfaces
.implements Lcom/baidu/launcher/ui/editview/EditViewIndicator$ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/editview/ThumbnailGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EditViewIndicatorCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/editview/ThumbnailGroup;


# direct methods
.method public constructor <init>(Lcom/baidu/launcher/ui/editview/ThumbnailGroup;)V
    .locals 0
    .parameter

    .prologue
    .line 1822
    iput-object p1, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup$EditViewIndicatorCallback;->this$0:Lcom/baidu/launcher/ui/editview/ThumbnailGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public jumpToScreen(I)V
    .locals 1
    .parameter "screen"

    .prologue
    .line 1827
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup$EditViewIndicatorCallback;->this$0:Lcom/baidu/launcher/ui/editview/ThumbnailGroup;

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->snapToScreen(I)V

    .line 1828
    return-void
.end method

.method public scrollingTo(II)V
    .locals 1
    .parameter "x"
    .parameter "y"

    .prologue
    .line 1832
    iget-object v0, p0, Lcom/baidu/launcher/ui/editview/ThumbnailGroup$EditViewIndicatorCallback;->this$0:Lcom/baidu/launcher/ui/editview/ThumbnailGroup;

    invoke-virtual {v0, p1, p2}, Lcom/baidu/launcher/ui/editview/ThumbnailGroup;->scrollTo(II)V

    .line 1833
    return-void
.end method
