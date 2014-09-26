.class Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview$4;
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
    .line 155
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview$4;->this$0:Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;

    iput-object p2, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview$4;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 158
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview$4;->this$0:Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview$4;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v0, v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/theme/Popupview;->setChildViewAnimation(ILandroid/app/Dialog;)V

    .line 159
    return-void
.end method
