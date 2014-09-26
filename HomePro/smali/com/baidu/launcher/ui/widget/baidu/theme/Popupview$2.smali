.class Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview$2;
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
    .line 123
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;

    iput-object p2, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview$2;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    const/4 v3, 0x0

    .line 126
    sget-boolean v1, Lcom/baidu/launcher/app/LauncherApplication;->IS_BAIDU_SYSTEM:Z

    if-eqz v1, :cond_0

    .line 127
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 128
    .local v0, theme:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 129
    const-string v1, "com.baidu.thememanager.ui"

    const-string v2, "com.baidu.thememanager.ui.BaiduThemeActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 131
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;

    invoke-virtual {v1, v0, v3}, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    .line 138
    :goto_0
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview$2;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v1, v2, v3}, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->setChildViewAnimation(ILandroid/app/Dialog;)V

    .line 139
    return-void

    .line 133
    .end local v0           #theme:Landroid/content/Intent;
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 134
    .restart local v0       #theme:Landroid/content/Intent;
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->access$000(Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/baidu/launcher/thememanager/ui/BaiduThemeActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 135
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;

    invoke-virtual {v1, v0, v3}, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    goto :goto_0
.end method
