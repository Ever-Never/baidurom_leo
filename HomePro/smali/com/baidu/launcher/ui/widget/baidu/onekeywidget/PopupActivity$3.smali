.class Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity$3;
.super Ljava/lang/Object;
.source "PopupActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->setupViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 228
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity$3;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 231
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity$3;->this$0:Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;

    #calls: Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->processOneKeyClear()V
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;->access$1600(Lcom/baidu/launcher/ui/widget/baidu/onekeywidget/PopupActivity;)V

    .line 232
    return-void
.end method