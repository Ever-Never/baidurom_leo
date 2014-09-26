.class Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ButtonClickListener;
.super Ljava/lang/Object;
.source "ThemeOnlineFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ButtonClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;


# direct methods
.method constructor <init>(Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;)V
    .locals 0
    .parameter

    .prologue
    .line 416
    iput-object p1, p0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ButtonClickListener;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 23
    .parameter "v"

    .prologue
    .line 419
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 420
    .local v10, id:I
    move-object/from16 v7, p1

    .line 422
    .local v7, view_button:Landroid/view/View;
    const/4 v2, 0x0

    invoke-virtual {v7, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 424
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ButtonClickListener;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->gridview_adapter:[Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;
    invoke-static {v2}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->access$900(Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;)[Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ButtonClickListener;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->current_tab:I
    invoke-static {v3}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->access$300(Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;)I

    move-result v3

    aget-object v2, v2, v3

    invoke-virtual {v2, v10}, Lcom/baidu/launcher/thememanager/adapter/PullGridAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;

    .line 425
    .local v6, ti:Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;
    invoke-static {}, Lcom/baidu/launcher/thememanager/util/DownloadStatus;->getInstance()Lcom/baidu/launcher/thememanager/util/DownloadStatus;

    move-result-object v2

    invoke-virtual {v6}, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->getThemeUrl()Ljava/lang/String;

    move-result-object v3

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->getThemeTitle()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual {v6}, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->getThemeVersion()Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Lcom/baidu/launcher/thememanager/util/DownloadStatus;->getThemeStatus(Ljava/lang/String;Ljava/lang/String;)Lcom/baidu/launcher/thememanager/util/DownloadStatus$ItemStatus;

    move-result-object v2

    iget v0, v2, Lcom/baidu/launcher/thememanager/util/DownloadStatus$ItemStatus;->status:I

    move/from16 v16, v0

    .line 429
    .local v16, status:I
    const/4 v2, 0x2

    move/from16 v0, v16

    if-ne v0, v2, :cond_1

    .line 431
    const-string v2, "ThemeOnlineFragment"

    const-string v3, "updateDownload, cancel download "

    invoke-static {v2, v3}, Lcom/baidu/launcher/thememanager/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ButtonClickListener;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

    iget-object v2, v2, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->mHandler:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ServiceHandler;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ButtonClickListener;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

    iget-object v3, v3, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->mHandler:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ServiceHandler;

    const/16 v18, 0x1

    invoke-virtual {v6}, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->getThemeUrl()Ljava/lang/String;

    move-result-object v19

    move/from16 v0, v18

    move-object/from16 v1, v19

    invoke-virtual {v3, v0, v1}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ServiceHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ServiceHandler;->sendMessage(Landroid/os/Message;)Z

    .line 514
    :cond_0
    :goto_0
    return-void

    .line 436
    :cond_1
    invoke-static {}, Lcom/baidu/launcher/thememanager/util/StorageUtil;->isExternalSpaceAvailable()Z

    move-result v2

    if-nez v2, :cond_2

    .line 437
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ButtonClickListener;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->access$1000(Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c00b9

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v2, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 442
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ButtonClickListener;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->access$1000(Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 444
    .local v5, prefs:Landroid/content/SharedPreferences;
    const-string v2, "download_warning"

    const/4 v3, 0x1

    invoke-interface {v5, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v14

    .line 446
    .local v14, needShowWarning:Z
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ButtonClickListener;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

    invoke-virtual {v2}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/launcher/thememanager/network/NetworkUtil;->isNetworkAvailable(Landroid/content/Context;)Z

    move-result v12

    .line 448
    .local v12, isNetWorkAvil:Z
    if-eqz v12, :cond_5

    .line 449
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ButtonClickListener;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

    invoke-virtual {v2}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/baidu/launcher/thememanager/network/NetworkUtil;->isMobileConnected(Landroid/content/Context;)Z

    move-result v11

    .line 450
    .local v11, isMobile:Z
    if-eqz v11, :cond_3

    if-eqz v14, :cond_3

    .line 452
    invoke-virtual {v6}, Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;->getThemeSize()I

    move-result v15

    .line 454
    .local v15, size:I
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ButtonClickListener;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->access$1000(Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00c7

    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ButtonClickListener;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

    move-object/from16 v20, v0

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->access$1000(Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;)Landroid/content/Context;

    move-result-object v20

    int-to-long v0, v15

    move-wide/from16 v21, v0

    invoke-static/range {v20 .. v22}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v20

    aput-object v20, v18, v19

    move-object/from16 v0, v18

    invoke-virtual {v2, v3, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    .line 456
    .local v13, msg:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ButtonClickListener;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

    invoke-virtual {v2}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f030098

    const/16 v18, 0x0

    move-object/from16 v0, v18

    invoke-static {v2, v3, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    .line 459
    .local v9, contentView:Landroid/view/View;
    const v2, 0x7f0801e2

    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    .line 461
    .local v4, ckx:Landroid/widget/CheckBox;
    const v2, 0x7f0801e3

    invoke-virtual {v9, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 463
    .local v17, tv:Landroid/widget/TextView;
    new-instance v2, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ButtonClickListener$1;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ButtonClickListener$1;-><init>(Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ButtonClickListener;)V

    invoke-virtual {v4, v2}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 469
    new-instance v8, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ButtonClickListener;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

    invoke-virtual {v2}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x1030132

    invoke-direct {v8, v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 470
    .local v8, builder:Landroid/app/AlertDialog$Builder;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ButtonClickListener;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

    invoke-virtual {v2}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00c5

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 472
    invoke-virtual {v8, v13}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 473
    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 474
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 476
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ButtonClickListener;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

    invoke-virtual {v2}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00b6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v18

    new-instance v2, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ButtonClickListener$2;

    move-object/from16 v3, p0

    invoke-direct/range {v2 .. v7}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ButtonClickListener$2;-><init>(Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ButtonClickListener;Landroid/widget/CheckBox;Landroid/content/SharedPreferences;Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;Landroid/view/View;)V

    move-object/from16 v0, v18

    invoke-virtual {v8, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 491
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ButtonClickListener;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

    invoke-virtual {v2}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c00b7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ButtonClickListener$3;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v7}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ButtonClickListener$3;-><init>(Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ButtonClickListener;Landroid/view/View;)V

    invoke-virtual {v8, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 502
    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 504
    .end local v4           #ckx:Landroid/widget/CheckBox;
    .end local v8           #builder:Landroid/app/AlertDialog$Builder;
    .end local v9           #contentView:Landroid/view/View;
    .end local v13           #msg:Ljava/lang/String;
    .end local v15           #size:I
    .end local v17           #tv:Landroid/widget/TextView;
    :cond_3
    if-eqz v11, :cond_4

    if-eqz v11, :cond_0

    if-nez v14, :cond_0

    .line 505
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ButtonClickListener;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

    #calls: Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->downloadTheme(Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;Landroid/view/View;)V
    invoke-static {v2, v6, v7}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->access$1300(Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;Lcom/baidu/launcher/thememanager/model/ThemeOnlineInfo;Landroid/view/View;)V

    goto/16 :goto_0

    .line 508
    .end local v11           #isMobile:Z
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment$ButtonClickListener;->this$0:Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;

    #getter for: Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;->access$1000(Lcom/baidu/launcher/thememanager/ui/ThemeOnlineFragment;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0c00bb

    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v2, v3, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 510
    const/4 v2, 0x1

    invoke-virtual {v7, v2}, Landroid/view/View;->setEnabled(Z)V

    goto/16 :goto_0
.end method
