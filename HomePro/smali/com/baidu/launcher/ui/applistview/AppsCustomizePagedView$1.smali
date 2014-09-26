.class Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$1;
.super Ljava/lang/Object;
.source "AppsCustomizePagedView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->showPages(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

.field final synthetic val$animation:Z

.field final synthetic val$page:I


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;IZ)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2199
    iput-object p1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$1;->this$0:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    iput p2, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$1;->val$page:I

    iput-boolean p3, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$1;->val$animation:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2202
    iget-object v0, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$1;->this$0:Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;

    iget v1, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$1;->val$page:I

    iget-boolean v2, p0, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView$1;->val$animation:Z

    #calls: Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->showPage(IZ)V
    invoke-static {v0, v1, v2}, Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;->access$000(Lcom/baidu/launcher/ui/applistview/AppsCustomizePagedView;IZ)V

    .line 2203
    return-void
.end method
