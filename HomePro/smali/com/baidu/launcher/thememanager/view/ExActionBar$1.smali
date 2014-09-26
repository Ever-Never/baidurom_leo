.class Lcom/baidu/launcher/thememanager/view/ExActionBar$1;
.super Ljava/lang/Object;
.source "ExActionBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/thememanager/view/ExActionBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/thememanager/view/ExActionBar;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/thememanager/view/ExActionBar;)V
    .locals 0
    .parameter

    .prologue
    .line 123
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/view/ExActionBar$1;->this$0:Lcom/baidu/launcher/thememanager/view/ExActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 127
    const-string v1, "return"

    const-string v2, "OnClickListener: "

    invoke-static {v1, v2}, Lcom/baidu/launcher/thememanager/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 129
    .local v0, activity:Landroid/app/Activity;
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/view/ExActionBar$1;->this$0:Lcom/baidu/launcher/thememanager/view/ExActionBar;

    #getter for: Lcom/baidu/launcher/thememanager/view/ExActionBar;->mReturnFragmentIndex:I
    invoke-static {v1}, Lcom/baidu/launcher/thememanager/view/ExActionBar;->access$000(Lcom/baidu/launcher/thememanager/view/ExActionBar;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 139
    :goto_0
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 140
    const v1, 0x7f04000c

    const v2, 0x7f04000d

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 141
    return-void

    .line 131
    :pswitch_0
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/view/ExActionBar$1;->this$0:Lcom/baidu/launcher/thememanager/view/ExActionBar;

    const/4 v2, 0x0

    #calls: Lcom/baidu/launcher/thememanager/view/ExActionBar;->returnToParent(Landroid/app/Activity;I)V
    invoke-static {v1, v0, v2}, Lcom/baidu/launcher/thememanager/view/ExActionBar;->access$100(Lcom/baidu/launcher/thememanager/view/ExActionBar;Landroid/app/Activity;I)V

    goto :goto_0

    .line 134
    :pswitch_1
    iget-object v1, p0, Lcom/baidu/launcher/thememanager/view/ExActionBar$1;->this$0:Lcom/baidu/launcher/thememanager/view/ExActionBar;

    const/4 v2, 0x1

    #calls: Lcom/baidu/launcher/thememanager/view/ExActionBar;->returnToParent(Landroid/app/Activity;I)V
    invoke-static {v1, v0, v2}, Lcom/baidu/launcher/thememanager/view/ExActionBar;->access$100(Lcom/baidu/launcher/thememanager/view/ExActionBar;Landroid/app/Activity;I)V

    goto :goto_0

    .line 129
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
