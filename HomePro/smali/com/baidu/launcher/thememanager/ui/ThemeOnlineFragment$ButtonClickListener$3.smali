.class Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ButtonClickListener$3;
.super Ljava/lang/Object;
.source "ThemeOnlineFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ButtonClickListener;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ButtonClickListener;

.field final synthetic val$view_button:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ButtonClickListener;Landroid/view/View;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 493
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ButtonClickListener$3;->this$1:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ButtonClickListener;

    iput-object p2, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ButtonClickListener$3;->val$view_button:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 497
    iget-object v0, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ButtonClickListener$3;->val$view_button:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 498
    return-void
.end method
