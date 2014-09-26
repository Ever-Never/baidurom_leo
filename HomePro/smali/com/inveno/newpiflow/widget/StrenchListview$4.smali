.class Lcom/inveno/newpiflow/widget/StrenchListview$4;
.super Ljava/lang/Object;
.source "StrenchListview.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/inveno/newpiflow/widget/StrenchListview;-><init>(Landroid/content/Context;Lcom/inveno/flyshare/BitmapUtils;Lcom/inveno/newpiflow/animation/Animation3DBoxControl;Lcom/inveno/newpiflow/widget/PiScrollView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/inveno/newpiflow/widget/StrenchListview;


# direct methods
.method constructor <init>(Lcom/inveno/newpiflow/widget/StrenchListview;)V
    .locals 0
    .parameter

    .prologue
    .line 271
    iput-object p1, p0, Lcom/inveno/newpiflow/widget/StrenchListview$4;->this$0:Lcom/inveno/newpiflow/widget/StrenchListview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "arg0"

    .prologue
    .line 274
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview$4;->this$0:Lcom/inveno/newpiflow/widget/StrenchListview;

    #getter for: Lcom/inveno/newpiflow/widget/StrenchListview;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/inveno/newpiflow/widget/StrenchListview;->access$200(Lcom/inveno/newpiflow/widget/StrenchListview;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/launcher/thememanager/network/NetworkUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview$4;->this$0:Lcom/inveno/newpiflow/widget/StrenchListview;

    #getter for: Lcom/inveno/newpiflow/widget/StrenchListview;->mUIHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/inveno/newpiflow/widget/StrenchListview;->access$800(Lcom/inveno/newpiflow/widget/StrenchListview;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 276
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview$4;->this$0:Lcom/inveno/newpiflow/widget/StrenchListview;

    #getter for: Lcom/inveno/newpiflow/widget/StrenchListview;->mParent:Lcom/inveno/newpiflow/widget/PiScrollView;
    invoke-static {v0}, Lcom/inveno/newpiflow/widget/StrenchListview;->access$900(Lcom/inveno/newpiflow/widget/StrenchListview;)Lcom/inveno/newpiflow/widget/PiScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/inveno/newpiflow/widget/PiScrollView;->refreshData()V

    .line 280
    :goto_0
    return-void

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/inveno/newpiflow/widget/StrenchListview$4;->this$0:Lcom/inveno/newpiflow/widget/StrenchListview;

    #getter for: Lcom/inveno/newpiflow/widget/StrenchListview;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/inveno/newpiflow/widget/StrenchListview;->access$200(Lcom/inveno/newpiflow/widget/StrenchListview;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0c02fb

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
