.class Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity$2;
.super Ljava/lang/Object;
.source "SetLocationActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 86
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 91
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity$2;->this$0:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity;->finish()V

    .line 92
    return-void
.end method
