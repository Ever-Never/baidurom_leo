.class public Lcom/baidu/launcher/ui/homeview/Workspace$IndicatorCallback;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Lcom/baidu/launcher/ui/homeview/Indicator$ICallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/homeview/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "IndicatorCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/homeview/Workspace;


# direct methods
.method public constructor <init>(Lcom/baidu/launcher/ui/homeview/Workspace;)V
    .locals 0
    .parameter

    .prologue
    .line 4476
    iput-object p1, p0, Lcom/baidu/launcher/ui/homeview/Workspace$IndicatorCallback;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public endScroll(I)V
    .locals 1
    .parameter "screen"

    .prologue
    .line 4490
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace$IndicatorCallback;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/homeview/Workspace;->endScroll(I)V

    .line 4491
    return-void
.end method

.method public jumpToScreen(I)V
    .locals 1
    .parameter "screen"

    .prologue
    .line 4480
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace$IndicatorCallback;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/homeview/Workspace;->snapToScreen(I)V

    .line 4481
    return-void
.end method

.method public scrollingTo(F)V
    .locals 1
    .parameter "x"

    .prologue
    .line 4485
    iget-object v0, p0, Lcom/baidu/launcher/ui/homeview/Workspace$IndicatorCallback;->this$0:Lcom/baidu/launcher/ui/homeview/Workspace;

    invoke-virtual {v0, p1}, Lcom/baidu/launcher/ui/homeview/Workspace;->scrollingTo(F)V

    .line 4486
    return-void
.end method
