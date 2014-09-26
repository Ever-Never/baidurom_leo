.class Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$8;
.super Ljava/lang/Object;
.source "AppsCustomizePagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->resetAnimateViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;)V
    .locals 0
    .parameter

    .prologue
    .line 3118
    iput-object p1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$8;->this$0:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 3121
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$8;->this$0:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    iget-object v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$8;->this$0:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    invoke-virtual {v1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->getCurrentPage()I

    move-result v1

    #calls: Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->invalidatePageData(I)V
    invoke-static {v0, v1}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->access$800(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;I)V

    .line 3122
    return-void
.end method
