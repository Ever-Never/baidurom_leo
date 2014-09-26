.class Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter$1MyOnClickListener;
.super Ljava/lang/Object;
.source "AppAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyOnClickListener"
.end annotation


# instance fields
.field operator:Landroid/view/View;

.field final synthetic this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter;Landroid/view/View;)V
    .locals 1
    .parameter
    .parameter "view"

    .prologue
    .line 96
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter$1MyOnClickListener;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter$1MyOnClickListener;->operator:Landroid/view/View;

    .line 97
    iput-object p2, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter$1MyOnClickListener;->operator:Landroid/view/View;

    .line 98
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 102
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter$1MyOnClickListener;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter;->context:Landroid/content/Context;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter;->access$000(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/AppAdapter$1MyOnClickListener;->operator:Landroid/view/View;

    invoke-virtual {v0, v1}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->onItemClick(Landroid/view/View;)V

    .line 103
    return-void
.end method
