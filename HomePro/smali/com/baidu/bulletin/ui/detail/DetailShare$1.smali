.class final Lcom/baidu/bulletin/ui/detail/DetailShare$1;
.super Ljava/lang/Object;
.source "DetailShare.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/baidu/bulletin/ui/detail/DetailShare;->createSharingDialog(Landroid/content/Context;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$mContext:Landroid/content/Context;

.field final synthetic val$mDataInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 80
    iput-object p1, p0, Lcom/baidu/bulletin/ui/detail/DetailShare$1;->val$mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/baidu/bulletin/ui/detail/DetailShare$1;->val$mDataInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "v"
    .parameter "positon"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-static {}, Lcom/baidu/bulletin/ui/detail/DetailShare;->access$000()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;

    .line 86
    .local v3, sharedItem:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;
    const/4 v0, 0x0

    .line 89
    .local v0, docId:I
    iget v2, v3, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;->index:I

    .line 90
    .local v2, sharedIndex:I
    sget-object v4, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->SINAWEIBO:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    invoke-virtual {v4}, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->getIndex()I

    move-result v4

    if-ne v2, v4, :cond_2

    .line 91
    invoke-static {}, Lcom/baidu/bulletin/utils/BulletinUBC;->statForShareToSinaWeibo()V

    .line 92
    sget-object v4, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->SINAWEIBO:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    invoke-virtual {v4, v2}, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->getDocId(I)I

    move-result v0

    .line 113
    :cond_0
    :goto_0
    iget-object v4, v3, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;->targetIntent:Landroid/content/Intent;

    if-nez v4, :cond_9

    .line 114
    iget v4, v3, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;->index:I

    sget-object v5, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->MORE:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    invoke-virtual {v5}, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->getIndex()I

    move-result v5

    if-ne v4, v5, :cond_8

    .line 115
    iget-object v4, p0, Lcom/baidu/bulletin/ui/detail/DetailShare$1;->val$mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/baidu/bulletin/ui/detail/DetailShare$1;->val$mDataInfo:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    #calls: Lcom/baidu/bulletin/ui/detail/DetailShare;->shareMore(Landroid/content/Context;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
    invoke-static {v4, v5}, Lcom/baidu/bulletin/ui/detail/DetailShare;->access$100(Landroid/content/Context;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    .line 120
    :goto_1
    invoke-static {}, Lcom/baidu/bulletin/ui/detail/DetailShare;->access$300()Landroid/app/Dialog;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 121
    invoke-static {}, Lcom/baidu/bulletin/ui/detail/DetailShare;->access$300()Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 135
    :cond_1
    :goto_2
    return-void

    .line 93
    :cond_2
    sget-object v4, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->TENCENTMM:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    invoke-virtual {v4}, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->getIndex()I

    move-result v4

    if-ne v2, v4, :cond_3

    .line 94
    invoke-static {}, Lcom/baidu/bulletin/utils/BulletinUBC;->statForShareToWeiXin()V

    .line 95
    sget-object v4, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->TENCENTMM:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    invoke-virtual {v4, v2}, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->getDocId(I)I

    move-result v0

    goto :goto_0

    .line 96
    :cond_3
    sget-object v4, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->TENCENTFRIENDS:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    invoke-virtual {v4}, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->getIndex()I

    move-result v4

    if-ne v2, v4, :cond_4

    .line 97
    invoke-static {}, Lcom/baidu/bulletin/utils/BulletinUBC;->statForShareToFriends()V

    .line 98
    sget-object v4, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->TENCENTFRIENDS:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    invoke-virtual {v4, v2}, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->getDocId(I)I

    move-result v0

    goto :goto_0

    .line 99
    :cond_4
    sget-object v4, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->TENCENTWBLOG:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    invoke-virtual {v4}, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->getIndex()I

    move-result v4

    if-ne v2, v4, :cond_5

    .line 100
    invoke-static {}, Lcom/baidu/bulletin/utils/BulletinUBC;->statForShareToTencentWeibo()V

    .line 101
    sget-object v4, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->TENCENTWBLOG:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    invoke-virtual {v4, v2}, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->getDocId(I)I

    move-result v0

    goto :goto_0

    .line 102
    :cond_5
    sget-object v4, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->QZONE:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    invoke-virtual {v4}, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->getIndex()I

    move-result v4

    if-ne v2, v4, :cond_6

    .line 103
    invoke-static {}, Lcom/baidu/bulletin/utils/BulletinUBC;->statForShareToQQ()V

    .line 104
    sget-object v4, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->QZONE:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    invoke-virtual {v4, v2}, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->getDocId(I)I

    move-result v0

    goto :goto_0

    .line 105
    :cond_6
    sget-object v4, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->SOHUWEIBO:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    invoke-virtual {v4}, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->getIndex()I

    move-result v4

    if-ne v2, v4, :cond_7

    .line 106
    invoke-static {}, Lcom/baidu/bulletin/utils/BulletinUBC;->statForShareToSouhuWeibo()V

    .line 107
    sget-object v4, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->SOHUWEIBO:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    invoke-virtual {v4, v2}, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->getDocId(I)I

    move-result v0

    goto :goto_0

    .line 108
    :cond_7
    sget-object v4, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->MAIL:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    invoke-virtual {v4}, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->getIndex()I

    move-result v4

    if-ne v2, v4, :cond_0

    .line 109
    invoke-static {}, Lcom/baidu/bulletin/utils/BulletinUBC;->statForShareToEmail()V

    .line 110
    sget-object v4, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->MAIL:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    invoke-virtual {v4, v2}, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->getDocId(I)I

    move-result v0

    goto/16 :goto_0

    .line 117
    :cond_8
    iget-object v4, p0, Lcom/baidu/bulletin/ui/detail/DetailShare$1;->val$mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/baidu/bulletin/ui/detail/DetailShare$1;->val$mContext:Landroid/content/Context;

    iget v6, v3, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;->apkNameId:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/baidu/bulletin/ui/detail/DetailShare;->installSharedAppdialog(Landroid/content/Context;Ljava/lang/String;I)V
    invoke-static {v4, v5, v0}, Lcom/baidu/bulletin/ui/detail/DetailShare;->access$200(Landroid/content/Context;Ljava/lang/String;I)V

    goto/16 :goto_1

    .line 126
    :cond_9
    :try_start_0
    iget-object v4, p0, Lcom/baidu/bulletin/ui/detail/DetailShare$1;->val$mContext:Landroid/content/Context;

    iget-object v5, v3, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;->targetIntent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_3
    invoke-static {}, Lcom/baidu/bulletin/ui/detail/DetailShare;->access$300()Landroid/app/Dialog;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 134
    invoke-static {}, Lcom/baidu/bulletin/ui/detail/DetailShare;->access$300()Landroid/app/Dialog;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    goto/16 :goto_2

    .line 127
    :catch_0
    move-exception v1

    .line 129
    .local v1, e:Landroid/content/ActivityNotFoundException;
    iget-object v4, p0, Lcom/baidu/bulletin/ui/detail/DetailShare$1;->val$mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/baidu/bulletin/ui/detail/DetailShare$1;->val$mContext:Landroid/content/Context;

    iget v6, v3, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;->apkNameId:I

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    #calls: Lcom/baidu/bulletin/ui/detail/DetailShare;->installSharedAppdialog(Landroid/content/Context;Ljava/lang/String;I)V
    invoke-static {v4, v5, v0}, Lcom/baidu/bulletin/ui/detail/DetailShare;->access$200(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_3
.end method
