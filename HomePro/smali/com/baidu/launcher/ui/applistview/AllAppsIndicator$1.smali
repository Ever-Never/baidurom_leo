.class Lcom/baidu/launcher/ui/applistview/AllAppsIndicator$1;
.super Ljava/lang/Object;
.source "AllAppsIndicator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/ui/applistview/AllAppsIndicator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/applistview/AllAppsIndicator;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/applistview/AllAppsIndicator;)V
    .locals 0
    .parameter

    .prologue
    .line 91
    iput-object p1, p0, Lcom/baidu/launcher/ui/applistview/AllAppsIndicator$1;->this$0:Lcom/baidu/launcher/ui/applistview/AllAppsIndicator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 94
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AllAppsIndicator$1;->this$0:Lcom/baidu/launcher/ui/applistview/AllAppsIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/applistview/AllAppsIndicator;->hideScrollingIndicator(Z)V

    .line 95
    return-void
.end method
