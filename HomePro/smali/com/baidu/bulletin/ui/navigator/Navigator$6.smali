.class Lcom/baidu/bulletin/ui/navigator/Navigator$6;
.super Ljava/lang/Object;
.source "Navigator.java"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/ui/navigator/Navigator;->openPopupwin(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/bulletin/ui/navigator/Navigator;


# direct methods
.method constructor <init>(Lcom/baidu/bulletin/ui/navigator/Navigator;)V
    .locals 0
    .parameter

    .prologue
    .line 349
    iput-object p1, p0, Lcom/baidu/bulletin/ui/navigator/Navigator$6;->this$0:Lcom/baidu/bulletin/ui/navigator/Navigator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 1

    .prologue
    .line 354
    iget-object v0, p0, Lcom/baidu/bulletin/ui/navigator/Navigator$6;->this$0:Lcom/baidu/bulletin/ui/navigator/Navigator;

    #calls: Lcom/baidu/bulletin/ui/navigator/Navigator;->hideNavigatorBar()V
    invoke-static {v0}, Lcom/baidu/bulletin/ui/navigator/Navigator;->access$500(Lcom/baidu/bulletin/ui/navigator/Navigator;)V

    .line 355
    return-void
.end method
