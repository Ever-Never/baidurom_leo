.class Lcom/baidu/launcher/thememanager/view/ButtonGroup$2;
.super Ljava/lang/Object;
.source "ButtonGroup.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/thememanager/view/ButtonGroup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/thememanager/view/ButtonGroup;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/thememanager/view/ButtonGroup;)V
    .locals 0
    .parameter

    .prologue
    .line 345
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup$2;->this$0:Lcom/baidu/launcher/thememanager/view/ButtonGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 347
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 348
    .local v1, id:I
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup$2;->this$0:Lcom/baidu/launcher/thememanager/view/ButtonGroup;

    #getter for: Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mButtons:Ljava/util/HashMap;
    invoke-static {v2}, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->access$000(Lcom/baidu/launcher/thememanager/view/ButtonGroup;)Ljava/util/HashMap;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 349
    .local v0, bt:Landroid/widget/TextView;
    if-nez v0, :cond_1

    .line 357
    :cond_0
    :goto_0
    return-void

    .line 353
    :cond_1
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup$2;->this$0:Lcom/baidu/launcher/thememanager/view/ButtonGroup;

    invoke-virtual {v2, v1}, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->setCheckedButton(I)Z

    .line 354
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup$2;->this$0:Lcom/baidu/launcher/thememanager/view/ButtonGroup;

    iget-object v2, v2, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mOnButtonCheckedListener:Lcom/baidu/launcher/thememanager/view/ButtonGroup$OnButtonCheckedListener;

    if-eqz v2, :cond_0

    .line 355
    iget-object v2, p0, Lcom/baidu/launcher/thememanager/view/ButtonGroup$2;->this$0:Lcom/baidu/launcher/thememanager/view/ButtonGroup;

    iget-object v2, v2, Lcom/baidu/launcher/thememanager/view/ButtonGroup;->mOnButtonCheckedListener:Lcom/baidu/launcher/thememanager/view/ButtonGroup$OnButtonCheckedListener;

    invoke-interface {v2, v1}, Lcom/baidu/launcher/thememanager/view/ButtonGroup$OnButtonCheckedListener;->onButtonChecked(I)V

    goto :goto_0
.end method
