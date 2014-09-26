.class Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview$1;
.super Ljava/lang/Object;
.source "Popupview.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->setChildViewOnclickListener(Landroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;Landroid/app/Dialog;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 112
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;

    iput-object p2, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview$1;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    .line 115
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 116
    .local v1, pickWallpaper:Landroid/content/Intent;
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->access$000(Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c0008

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 117
    .local v0, chooser:Landroid/content/Intent;
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    .line 118
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview$1;->this$0:Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v2, v3, v4}, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->setChildViewAnimation(ILandroid/app/Dialog;)V

    .line 119
    return-void
.end method
