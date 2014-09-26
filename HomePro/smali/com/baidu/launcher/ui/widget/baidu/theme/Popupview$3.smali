.class Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview$3;
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
    .line 143
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview$3;->this$0:Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;

    iput-object p2, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview$3;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 146
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 147
    .local v0, effect:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 148
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview$3;->this$0:Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;

    #getter for: Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->access$000(Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;)Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/baidu/launcher/ui/effect/EffectListActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 149
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview$3;->this$0:Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->startActivitySafely(Landroid/content/Intent;Ljava/lang/Object;)Z

    .line 150
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview$3;->this$0:Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview$3;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v1, v2, v3}, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->setChildViewAnimation(ILandroid/app/Dialog;)V

    .line 151
    return-void
.end method
