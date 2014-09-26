.class Lcom/inveno/newpiflow/widget/StrenchListview$1;
.super Landroid/os/Handler;
.source "StrenchListview.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inveno/newpiflow/widget/StrenchListview;
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
    .line 129
    iput-object p1, p0, Lcom/inveno/newpiflow/widget/StrenchListview$1;->this$0:Lcom/inveno/newpiflow/widget/StrenchListview;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x0

    .line 132
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 134
    :pswitch_0
    iget-object v4, p0, Lcom/inveno/newpiflow/widget/StrenchListview$1;->this$0:Lcom/inveno/newpiflow/widget/StrenchListview;

    iget-object v4, v4, Lcom/inveno/newpiflow/widget/StrenchListview;->mWindowView:Ljava/util/LinkedList;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/inveno/newpiflow/widget/StrenchListview$1;->this$0:Lcom/inveno/newpiflow/widget/StrenchListview;

    iget-object v4, v4, Lcom/inveno/newpiflow/widget/StrenchListview;->mWindowView:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-eqz v4, :cond_0

    .line 136
    iget-object v4, p0, Lcom/inveno/newpiflow/widget/StrenchListview$1;->this$0:Lcom/inveno/newpiflow/widget/StrenchListview;

    iget-object v4, v4, Lcom/inveno/newpiflow/widget/StrenchListview;->mWindowView:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inveno/newpiflow/widget/PiWindowView;

    .line 138
    .local v1, piWindowView:Lcom/inveno/newpiflow/widget/PiWindowView;
    const-string v4, "StrenchListview"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mLastScrollY:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/inveno/newpiflow/widget/StrenchListview$1;->this$0:Lcom/inveno/newpiflow/widget/StrenchListview;

    #getter for: Lcom/inveno/newpiflow/widget/StrenchListview;->mLastScrollY:I
    invoke-static {v6}, Lcom/inveno/newpiflow/widget/StrenchListview;->access$000(Lcom/inveno/newpiflow/widget/StrenchListview;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/inveno/flyshare/utils/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    iget-object v4, p0, Lcom/inveno/newpiflow/widget/StrenchListview$1;->this$0:Lcom/inveno/newpiflow/widget/StrenchListview;

    #getter for: Lcom/inveno/newpiflow/widget/StrenchListview;->mIsDrawing:Z
    invoke-static {v4}, Lcom/inveno/newpiflow/widget/StrenchListview;->access$100(Lcom/inveno/newpiflow/widget/StrenchListview;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/inveno/newpiflow/widget/StrenchListview$1;->this$0:Lcom/inveno/newpiflow/widget/StrenchListview;

    iget-object v4, v4, Lcom/inveno/newpiflow/widget/StrenchListview;->mWindowView:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    const/4 v5, 0x3

    if-lt v4, v5, :cond_0

    .line 141
    const-string v4, "StrenchListview"

    const-string v5, "\u5f00\u59cb\u79fb\u9664\u6570\u636e"

    invoke-static {v4, v5}, Lcom/inveno/flyshare/utils/LogTools;->showLog(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    iget-object v4, v1, Lcom/inveno/newpiflow/widget/PiWindowView;->mPiData:Lcom/inveno/newpiflow/model/PiData;

    iget-object v5, p0, Lcom/inveno/newpiflow/widget/StrenchListview$1;->this$0:Lcom/inveno/newpiflow/widget/StrenchListview;

    #getter for: Lcom/inveno/newpiflow/widget/StrenchListview;->mLastScrollY:I
    invoke-static {v5}, Lcom/inveno/newpiflow/widget/StrenchListview;->access$000(Lcom/inveno/newpiflow/widget/StrenchListview;)I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/inveno/newpiflow/model/PiData;->isContain(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 143
    iget-object v4, p0, Lcom/inveno/newpiflow/widget/StrenchListview$1;->this$0:Lcom/inveno/newpiflow/widget/StrenchListview;

    iget-object v4, v4, Lcom/inveno/newpiflow/widget/StrenchListview;->mWindowView:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #piWindowView:Lcom/inveno/newpiflow/widget/PiWindowView;
    check-cast v1, Lcom/inveno/newpiflow/widget/PiWindowView;

    .line 147
    .restart local v1       #piWindowView:Lcom/inveno/newpiflow/widget/PiWindowView;
    :goto_1
    invoke-virtual {v1}, Lcom/inveno/newpiflow/widget/PiWindowView;->onDetacheFromWindow()V

    .line 148
    iget-object v4, p0, Lcom/inveno/newpiflow/widget/StrenchListview$1;->this$0:Lcom/inveno/newpiflow/widget/StrenchListview;

    #getter for: Lcom/inveno/newpiflow/widget/StrenchListview;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/inveno/newpiflow/widget/StrenchListview;->access$200(Lcom/inveno/newpiflow/widget/StrenchListview;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Lcom/inveno/newpiflow/widget/StrenchListview$1;->this$0:Lcom/inveno/newpiflow/widget/StrenchListview;

    iget-object v5, v5, Lcom/inveno/newpiflow/widget/StrenchListview;->mWindowView:Ljava/util/LinkedList;

    invoke-static {v4, v5}, Lcom/inveno/newpiflow/biz/OpDataUtil;->deleteIQIYI(Landroid/content/Context;Ljava/util/LinkedList;)V

    .line 149
    const/4 v2, 0x0

    .line 150
    .local v2, top:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_2
    iget-object v4, p0, Lcom/inveno/newpiflow/widget/StrenchListview$1;->this$0:Lcom/inveno/newpiflow/widget/StrenchListview;

    iget-object v4, v4, Lcom/inveno/newpiflow/widget/StrenchListview;->mWindowView:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-ge v0, v4, :cond_2

    .line 151
    iget-object v4, p0, Lcom/inveno/newpiflow/widget/StrenchListview$1;->this$0:Lcom/inveno/newpiflow/widget/StrenchListview;

    iget-object v4, v4, Lcom/inveno/newpiflow/widget/StrenchListview;->mWindowView:Ljava/util/LinkedList;

    invoke-virtual {v4, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/inveno/newpiflow/widget/PiWindowView;

    .line 152
    .local v3, windowView:Lcom/inveno/newpiflow/widget/PiWindowView;
    iget v4, v3, Lcom/inveno/newpiflow/widget/PiWindowView;->mWidth:I

    iget v5, v3, Lcom/inveno/newpiflow/widget/PiWindowView;->mHeight:I

    add-int/2addr v5, v2

    invoke-virtual {v3, v7, v2, v4, v5}, Lcom/inveno/newpiflow/widget/PiWindowView;->Layout(IIII)V

    .line 154
    iget v4, v3, Lcom/inveno/newpiflow/widget/PiWindowView;->mHeight:I

    add-int/2addr v2, v4

    .line 150
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 145
    .end local v0           #i:I
    .end local v2           #top:I
    .end local v3           #windowView:Lcom/inveno/newpiflow/widget/PiWindowView;
    :cond_1
    iget-object v4, p0, Lcom/inveno/newpiflow/widget/StrenchListview$1;->this$0:Lcom/inveno/newpiflow/widget/StrenchListview;

    iget-object v4, v4, Lcom/inveno/newpiflow/widget/StrenchListview;->mWindowView:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v1

    .end local v1           #piWindowView:Lcom/inveno/newpiflow/widget/PiWindowView;
    check-cast v1, Lcom/inveno/newpiflow/widget/PiWindowView;

    .restart local v1       #piWindowView:Lcom/inveno/newpiflow/widget/PiWindowView;
    goto :goto_1

    .line 156
    .restart local v0       #i:I
    .restart local v2       #top:I
    :cond_2
    iget-object v4, p0, Lcom/inveno/newpiflow/widget/StrenchListview$1;->this$0:Lcom/inveno/newpiflow/widget/StrenchListview;

    invoke-virtual {v4}, Lcom/inveno/newpiflow/widget/StrenchListview;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/widget/ScrollView;

    iget v5, v1, Lcom/inveno/newpiflow/widget/PiWindowView;->mHeight:I

    neg-int v5, v5

    invoke-virtual {v4, v7, v5}, Landroid/widget/ScrollView;->scrollBy(II)V

    goto/16 :goto_0

    .line 132
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
