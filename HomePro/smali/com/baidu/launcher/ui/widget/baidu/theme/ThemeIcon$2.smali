.class Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon$2;
.super Ljava/lang/Object;
.source "ThemeIcon.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;)V
    .locals 0
    .parameter

    .prologue
    .line 94
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 98
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;->mThemeIcon:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;->access$000(Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 99
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;->mThemeIcon:Landroid/view/View;
    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;->access$000(Lcom/baidu/launcher/ui/widget/baidu/theme/ThemeIcon;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 100
    return-void
.end method
