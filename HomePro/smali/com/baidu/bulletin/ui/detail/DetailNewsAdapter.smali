.class public Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;
.super Landroid/widget/BaseAdapter;
.source "DetailNewsAdapter.java"

# interfaces
.implements Lcom/baidu/bulletin/ui/detail/ViewFlow$ViewSwitchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$DetailInfoCallback;,
        Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$DetailRefreshClickListener;
    }
.end annotation


# static fields
.field public static final BULLETIN_AD_APPID:Ljava/lang/String; = "d3efb61b"

.field public static final BULLETIN_AD_APPID_Q:Ljava/lang/String; = "d3efb61b_cpr"

.field private static final PARAM_CSRC:Ljava/lang/String; = "ext_bulletin_txt"

.field private static final SEARCHBOX_QUERY_ACTION:Ljava/lang/String; = "com.baidu.searchbox.action.SEARCH"

.field private static final TAG:Ljava/lang/String; = "DetailNewsAdapter"


# instance fields
.field public mAdListener:Lcom/baidu/yi/ads/AdRetrievalListener;

.field private mContainerViewGroup:Landroid/view/ViewGroup;

.field private mContentListener:Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentRefeshListener;

.field private mContext:Landroid/content/Context;

.field private mDataManager:Lcom/baidu/bulletin/DataManager;

.field private mDatabaseManager:Lcom/baidu/bulletin/db/manager/DatabaseManager;

.field public mExecutionListener:Lcom/baidu/yi/ads/ActionExecutionListener;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mNewsDetailData:Lcom/baidu/bulletin/ui/detail/DetailDataList;

.field private mViewFlow:Lcom/baidu/bulletin/ui/detail/ViewFlow;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/baidu/bulletin/ui/detail/ViewFlow;)V
    .locals 4
    .parameter "containerGroup"
    .parameter "viewFlow"

    .prologue
    .line 68
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 53
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->mContentListener:Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentRefeshListener;

    .line 336
    new-instance v2, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$2;

    invoke-direct {v2, p0}, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$2;-><init>(Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;)V

    iput-object v2, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->mAdListener:Lcom/baidu/yi/ads/AdRetrievalListener;

    .line 346
    new-instance v2, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$3;

    invoke-direct {v2, p0}, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$3;-><init>(Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;)V

    iput-object v2, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->mExecutionListener:Lcom/baidu/yi/ads/ActionExecutionListener;

    .line 69
    iput-object p1, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->mContainerViewGroup:Landroid/view/ViewGroup;

    .line 70
    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->mContainerViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->mContext:Landroid/content/Context;

    .line 71
    invoke-static {}, Lcom/baidu/bulletin/DataManager;->getInstance()Lcom/baidu/bulletin/DataManager;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->mDataManager:Lcom/baidu/bulletin/DataManager;

    .line 72
    invoke-static {}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->getInstance()Lcom/baidu/bulletin/db/manager/DatabaseManager;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->mDatabaseManager:Lcom/baidu/bulletin/db/manager/DatabaseManager;

    .line 73
    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iput-object v2, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 74
    invoke-static {}, Lcom/baidu/bulletin/ui/detail/DetailDataList;->getInstance()Lcom/baidu/bulletin/ui/detail/DetailDataList;

    move-result-object v2

    iput-object v2, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->mNewsDetailData:Lcom/baidu/bulletin/ui/detail/DetailDataList;

    .line 75
    iput-object p2, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->mViewFlow:Lcom/baidu/bulletin/ui/detail/ViewFlow;

    .line 76
    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->mViewFlow:Lcom/baidu/bulletin/ui/detail/ViewFlow;

    invoke-virtual {v2, p0}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->setOnViewSwitchListener(Lcom/baidu/bulletin/ui/detail/ViewFlow$ViewSwitchListener;)V

    .line 77
    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c029c

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 78
    .local v1, firstViewMsg:Ljava/lang/String;
    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c029d

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 79
    .local v0, endViewMsg:Ljava/lang/String;
    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->mViewFlow:Lcom/baidu/bulletin/ui/detail/ViewFlow;

    invoke-virtual {v2, v1, v0}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->setEndViewMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->getSearchIntent(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;ILandroid/view/View;Z)Landroid/view/View;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p3}, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->drawView(ILandroid/view/View;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->mContainerViewGroup:Landroid/view/ViewGroup;

    return-object v0
.end method

.method private drawView(ILandroid/view/View;Z)Landroid/view/View;
    .locals 25
    .parameter "position"
    .parameter "convertView"
    .parameter "isEmpty"

    .prologue
    .line 102
    const-string v20, "DetailNewsAdapter"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "position"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->mNewsDetailData:Lcom/baidu/bulletin/ui/detail/DetailDataList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/baidu/bulletin/ui/detail/DetailDataList;->get(I)Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    move-result-object v6

    .line 104
    .local v6, info:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    if-nez p2, :cond_0

    .line 105
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v20, v0

    const v21, 0x7f030033

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-virtual/range {v20 .. v23}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .end local p2
    check-cast p2, Landroid/widget/LinearLayout;

    .line 108
    .restart local p2
    :cond_0
    const v20, 0x7f0800d3

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/LinearLayout;

    .line 109
    .local v8, mDetailLayout:Landroid/widget/LinearLayout;
    const v20, 0x7f0800d8

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/LinearLayout;

    .line 110
    .local v10, mFailedLayout:Landroid/widget/LinearLayout;
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 111
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 112
    if-nez p3, :cond_5

    .line 114
    const v20, 0x7f0800d5

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/LinearLayout;

    .line 116
    .local v13, mNewsContent:Landroid/widget/LinearLayout;
    const v20, 0x7f080096

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/TextView;

    .line 118
    .local v17, mTitleTextView:Landroid/widget/TextView;
    const v20, 0x7f0800d4

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/TextView;

    .line 120
    .local v16, mTitleBaseLine:Landroid/widget/TextView;
    const v20, 0x7f0800d7

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/baidu/yi/ads/AdView;

    .line 122
    .local v7, mAdView:Lcom/baidu/yi/ads/AdView;
    const v20, 0x7f0800d6

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    .line 124
    .local v12, mMoreContentTextView:Landroid/widget/TextView;
    const v20, 0x7f0800c9

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/RelativeLayout;

    .line 125
    .local v15, mOpView:Landroid/widget/RelativeLayout;
    const/16 v20, 0x8

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 126
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/RelativeLayout;->setTag(Ljava/lang/Object;)V

    .line 128
    const v20, 0x7f0800ca

    move/from16 v0, v20

    invoke-virtual {v15, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/TextView;

    .line 130
    .local v14, mOpTextView:Landroid/widget/TextView;
    const/16 v18, 0x0

    .line 132
    .local v18, newsDetailItems:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/NewsDetailInfo;>;"
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->mDatabaseManager:Lcom/baidu/bulletin/db/manager/DatabaseManager;

    move-object/from16 v20, v0

    iget-wide v0, v6, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->_id:J

    move-wide/from16 v21, v0

    move-wide/from16 v0, v21

    long-to-int v0, v0

    move/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->queryNewsDetailByItemId(I)Ljava/util/List;
    :try_end_0
    .catch Lcom/baidu/bulletin/db/exception/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v18

    .line 136
    :goto_0
    if-eqz v18, :cond_3

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v20

    if-lez v20, :cond_3

    .line 137
    iget-object v0, v6, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->title:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v19

    .line 139
    .local v19, tp:Landroid/text/TextPaint;
    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 140
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1, v6}, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->setTitleBaseLine(Landroid/view/View;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    .line 141
    new-instance v20, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$1;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$1;-><init>(Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    move-object/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    new-instance v4, Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-direct {v4, v0, v13}, Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory;-><init>(Landroid/content/Context;Landroid/widget/LinearLayout;)V

    .line 152
    .local v4, detailFactory:Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory;
    move-object/from16 v0, v18

    invoke-virtual {v4, v0}, Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory;->generateNewsContentView(Ljava/util/List;)V

    .line 153
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v13, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 154
    const/16 v20, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 155
    const/16 v20, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 156
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v12, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 157
    invoke-direct/range {p0 .. p0}, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->generateAdRandm()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v7, v1}, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->initAdView(Lcom/baidu/yi/ads/AdView;I)V

    .line 158
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->mAdListener:Lcom/baidu/yi/ads/AdRetrievalListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v7, v0}, Lcom/baidu/yi/ads/AdView;->requestAd(Lcom/baidu/yi/ads/AdRetrievalListener;)V

    .line 159
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->mContentListener:Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentRefeshListener;

    move-object/from16 v20, v0

    if-eqz v20, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->mViewFlow:Lcom/baidu/bulletin/ui/detail/ViewFlow;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->getSelectedItemPosition()I

    move-result v20

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 160
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->mContentListener:Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentRefeshListener;

    move-object/from16 v20, v0

    const/16 v21, 0x1

    invoke-interface/range {v20 .. v21}, Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentRefeshListener;->onContentRefreshFinish(Z)V

    .line 162
    :cond_1
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v8, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 184
    .end local v4           #detailFactory:Lcom/baidu/bulletin/ui/detail/DetailContentViewFactory;
    .end local v7           #mAdView:Lcom/baidu/yi/ads/AdView;
    .end local v12           #mMoreContentTextView:Landroid/widget/TextView;
    .end local v13           #mNewsContent:Landroid/widget/LinearLayout;
    .end local v14           #mOpTextView:Landroid/widget/TextView;
    .end local v15           #mOpView:Landroid/widget/RelativeLayout;
    .end local v16           #mTitleBaseLine:Landroid/widget/TextView;
    .end local v17           #mTitleTextView:Landroid/widget/TextView;
    .end local v18           #newsDetailItems:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/NewsDetailInfo;>;"
    .end local v19           #tp:Landroid/text/TextPaint;
    :cond_2
    :goto_1
    return-object p2

    .line 133
    .restart local v7       #mAdView:Lcom/baidu/yi/ads/AdView;
    .restart local v12       #mMoreContentTextView:Landroid/widget/TextView;
    .restart local v13       #mNewsContent:Landroid/widget/LinearLayout;
    .restart local v14       #mOpTextView:Landroid/widget/TextView;
    .restart local v15       #mOpView:Landroid/widget/RelativeLayout;
    .restart local v16       #mTitleBaseLine:Landroid/widget/TextView;
    .restart local v17       #mTitleTextView:Landroid/widget/TextView;
    .restart local v18       #newsDetailItems:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/NewsDetailInfo;>;"
    :catch_0
    move-exception v5

    .line 134
    .local v5, e:Lcom/baidu/bulletin/db/exception/DatabaseException;
    invoke-virtual {v5}, Lcom/baidu/bulletin/db/exception/DatabaseException;->printStackTrace()V

    goto/16 :goto_0

    .line 164
    .end local v5           #e:Lcom/baidu/bulletin/db/exception/DatabaseException;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->mContentListener:Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentRefeshListener;

    move-object/from16 v20, v0

    if-eqz v20, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->mViewFlow:Lcom/baidu/bulletin/ui/detail/ViewFlow;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->getSelectedItemPosition()I

    move-result v20

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 165
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->mContentListener:Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentRefeshListener;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-interface {v0, v6}, Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentRefeshListener;->onContentRefreshStart(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    .line 167
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->mDataManager:Lcom/baidu/bulletin/DataManager;

    move-object/from16 v20, v0

    new-instance v21, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$DetailInfoCallback;

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$DetailInfoCallback;-><init>(Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;Landroid/view/View;I)V

    iget-object v0, v6, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->content:Ljava/lang/String;

    move-object/from16 v22, v0

    iget-wide v0, v6, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->_id:J

    move-wide/from16 v23, v0

    invoke-virtual/range {v20 .. v24}, Lcom/baidu/bulletin/DataManager;->requestNewsDetail(Lcom/baidu/bulletin/RequestCallback$NewsDetailCallback;Ljava/lang/String;J)V

    goto :goto_1

    .line 170
    .end local v7           #mAdView:Lcom/baidu/yi/ads/AdView;
    .end local v12           #mMoreContentTextView:Landroid/widget/TextView;
    .end local v13           #mNewsContent:Landroid/widget/LinearLayout;
    .end local v14           #mOpTextView:Landroid/widget/TextView;
    .end local v15           #mOpView:Landroid/widget/RelativeLayout;
    .end local v16           #mTitleBaseLine:Landroid/widget/TextView;
    .end local v17           #mTitleTextView:Landroid/widget/TextView;
    .end local v18           #newsDetailItems:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/NewsDetailInfo;>;"
    :cond_5
    const/16 v20, 0x0

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 171
    const v20, 0x7f0800be

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/TextView;

    .line 173
    .local v11, mFailedTextView:Landroid/widget/TextView;
    const v20, 0x7f0800bd

    move/from16 v0, v20

    invoke-virtual {v10, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    .line 175
    .local v9, mFailedButton:Landroid/widget/Button;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f0c0224

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v11, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    const v21, 0x7f0c0260

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 179
    new-instance v20, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$DetailRefreshClickListener;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$DetailRefreshClickListener;-><init>(Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;Landroid/view/View;I)V

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 180
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->mContentListener:Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentRefeshListener;

    move-object/from16 v20, v0

    if-eqz v20, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->mViewFlow:Lcom/baidu/bulletin/ui/detail/ViewFlow;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->getSelectedItemPosition()I

    move-result v20

    move/from16 v0, p1

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 181
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->mContentListener:Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentRefeshListener;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    invoke-interface/range {v20 .. v21}, Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentRefeshListener;->onContentRefreshFinish(Z)V

    goto/16 :goto_1
.end method

.method private generateAdRandm()I
    .locals 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 284
    new-array v0, v5, [Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v4

    const/4 v3, 0x1

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v3

    .line 285
    .local v0, adTypes:[Ljava/lang/String;
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v3

    const-wide/high16 v5, 0x4000

    mul-double/2addr v3, v5

    double-to-int v1, v3

    .line 286
    .local v1, randomAdIndex:I
    aget-object v3, v0, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 287
    .local v2, type:I
    return v2
.end method

.method private getChannelId()Ljava/lang/String;
    .locals 7

    .prologue
    .line 293
    const/4 v1, 0x0

    .line 294
    .local v1, id:Ljava/lang/String;
    const/4 v2, 0x0

    .line 297
    .local v2, reader:Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/InputStreamReader;

    iget-object v5, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060003

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v5

    const-string v6, "UTF-8"

    invoke-direct {v4, v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 299
    .end local v2           #reader:Ljava/io/BufferedReader;
    .local v3, reader:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result-object v1

    .line 304
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v2, v3

    .line 310
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    :goto_0
    return-object v1

    .line 305
    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :catch_0
    move-exception v0

    .line 306
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v2, v3

    .line 308
    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    goto :goto_0

    .line 300
    .end local v0           #e:Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 301
    .local v0, e:Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 304
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 305
    :catch_2
    move-exception v0

    .line 306
    .local v0, e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 303
    .end local v0           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    .line 304
    :goto_2
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 307
    :goto_3
    throw v4

    .line 305
    :catch_3
    move-exception v0

    .line 306
    .restart local v0       #e:Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 303
    .end local v0           #e:Ljava/io/IOException;
    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v4

    move-object v2, v3

    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    goto :goto_2

    .line 300
    .end local v2           #reader:Ljava/io/BufferedReader;
    .restart local v3       #reader:Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    move-object v2, v3

    .end local v3           #reader:Ljava/io/BufferedReader;
    .restart local v2       #reader:Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method private getSearchIntent(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)Landroid/content/Intent;
    .locals 4
    .parameter "data"

    .prologue
    .line 357
    const/4 v0, 0x0

    .line 358
    .local v0, intent:Landroid/content/Intent;
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->isSearchboxInstalled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 359
    iget-object v2, p1, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->title:Ljava/lang/String;

    invoke-direct {p0, v2}, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->getSearchboxQueryIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 366
    :goto_0
    return-object v0

    .line 361
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://m.baidu.com/s?word="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p1, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->title:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 362
    .local v1, uri:Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    .end local v0           #intent:Landroid/content/Intent;
    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 363
    .restart local v0       #intent:Landroid/content/Intent;
    const/high16 v2, 0x1000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    goto :goto_0
.end method

.method private getSearchboxQueryIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "key"

    .prologue
    .line 377
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.baidu.searchbox.action.SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 378
    .local v0, intent:Landroid/content/Intent;
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 379
    const-string v1, "key_value"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 380
    const-string v1, "search_source"

    const-string v2, "ext_bulletin_txt"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 381
    const-string v1, "BROWSER_RESTART"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 382
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 383
    return-object v0
.end method

.method private initAdView(Lcom/baidu/yi/ads/AdView;I)V
    .locals 7
    .parameter "adView"
    .parameter "adType"

    .prologue
    const/16 v6, 0x1a

    const/4 v5, 0x2

    const/4 v4, -0x2

    .line 314
    if-eqz p1, :cond_2

    .line 315
    const/16 v2, 0x2a

    invoke-virtual {p1, v2}, Lcom/baidu/yi/ads/AdView;->setPluginId(I)V

    .line 316
    const-string v2, "d3efb61b"

    const-string v3, "d3efb61b_cpr"

    invoke-virtual {p1, v2, v3}, Lcom/baidu/yi/ads/AdView;->setAppInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 318
    if-eqz p2, :cond_0

    if-eq p2, v5, :cond_0

    .line 319
    const/4 p2, 0x2

    .line 321
    :cond_0
    invoke-virtual {p1, p2}, Lcom/baidu/yi/ads/AdView;->setType(I)V

    .line 322
    if-nez p2, :cond_3

    .line 323
    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/baidu/yi/ads/AdView;->enableAdViewCloseBtnShown(Z)V

    .line 330
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->getChannelId()Ljava/lang/String;

    move-result-object v0

    .line 331
    .local v0, channelId:Ljava/lang/String;
    invoke-virtual {p1, v0}, Lcom/baidu/yi/ads/AdView;->setChannelId(Ljava/lang/String;)V

    .line 332
    iget-object v2, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->mExecutionListener:Lcom/baidu/yi/ads/ActionExecutionListener;

    invoke-virtual {p1, v2}, Lcom/baidu/yi/ads/AdView;->setActionExecutionListener(Lcom/baidu/yi/ads/ActionExecutionListener;)V

    .line 334
    .end local v0           #channelId:Ljava/lang/String;
    :cond_2
    return-void

    .line 324
    :cond_3
    if-ne p2, v5, :cond_1

    .line 325
    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 326
    .local v1, mp:Landroid/view/ViewGroup$MarginLayoutParams;
    const/4 v2, 0x0

    const/16 v3, 0xa

    invoke-virtual {v1, v6, v2, v6, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 328
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    invoke-virtual {p1, v2}, Lcom/baidu/yi/ads/AdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private isSearchboxInstalled()Z
    .locals 4

    .prologue
    .line 370
    iget-object v3, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->mContainerViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 371
    .local v1, pm:Landroid/content/pm/PackageManager;
    new-instance v0, Landroid/content/Intent;

    const-string v3, "com.baidu.searchbox.action.SEARCH"

    invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 372
    .local v0, intent:Landroid/content/Intent;
    const/high16 v3, 0x1

    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 373
    .local v2, ri:Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private setTitleBaseLine(Landroid/view/View;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
    .locals 2
    .parameter "baseLine"
    .parameter "data"

    .prologue
    .line 188
    iget v0, p2, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->channelId:I

    packed-switch v0, :pswitch_data_0

    .line 215
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 219
    :goto_0
    return-void

    .line 190
    :pswitch_0
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090011

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 193
    :pswitch_1
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 196
    :pswitch_2
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090016

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 199
    :pswitch_3
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 202
    :pswitch_4
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090015

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 205
    :pswitch_5
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090010

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 208
    :pswitch_6
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090013

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 211
    :pswitch_7
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090014

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    goto/16 :goto_0

    .line 188
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_5
        :pswitch_1
        :pswitch_6
        :pswitch_7
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->mNewsDetailData:Lcom/baidu/bulletin/ui/detail/DetailDataList;

    invoke-virtual {v0}, Lcom/baidu/bulletin/ui/detail/DetailDataList;->getSize()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2
    .parameter "position"

    .prologue
    .line 88
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->drawView(ILandroid/view/View;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 93
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 98
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->drawView(ILandroid/view/View;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPostViewSwitched(Landroid/view/View;I)V
    .locals 6
    .parameter "view"
    .parameter "position"

    .prologue
    .line 427
    iget-object v3, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->mContentListener:Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentRefeshListener;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->mViewFlow:Lcom/baidu/bulletin/ui/detail/ViewFlow;

    invoke-virtual {v3}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->getSelectedItemPosition()I

    move-result v3

    if-ne p2, v3, :cond_0

    .line 428
    iget-object v3, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->mNewsDetailData:Lcom/baidu/bulletin/ui/detail/DetailDataList;

    invoke-virtual {v3, p2}, Lcom/baidu/bulletin/ui/detail/DetailDataList;->get(I)Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    move-result-object v1

    .line 429
    .local v1, info:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    const/4 v2, 0x0

    .line 431
    .local v2, newsDetailItems:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/NewsDetailInfo;>;"
    :try_start_0
    iget-object v3, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->mDatabaseManager:Lcom/baidu/bulletin/db/manager/DatabaseManager;

    iget-wide v4, v1, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->_id:J

    long-to-int v4, v4

    invoke-virtual {v3, v4}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->queryNewsDetailByItemId(I)Ljava/util/List;
    :try_end_0
    .catch Lcom/baidu/bulletin/db/exception/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 435
    :goto_0
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 436
    iget-object v3, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->mContentListener:Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentRefeshListener;

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentRefeshListener;->onContentRefreshFinish(Z)V

    .line 439
    .end local v1           #info:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    .end local v2           #newsDetailItems:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/NewsDetailInfo;>;"
    :cond_0
    return-void

    .line 432
    .restart local v1       #info:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    .restart local v2       #newsDetailItems:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/NewsDetailInfo;>;"
    :catch_0
    move-exception v0

    .line 433
    .local v0, e:Lcom/baidu/bulletin/db/exception/DatabaseException;
    invoke-virtual {v0}, Lcom/baidu/bulletin/db/exception/DatabaseException;->printStackTrace()V

    goto :goto_0
.end method

.method public onSwitched(Landroid/view/View;I)V
    .locals 2
    .parameter "view"
    .parameter "position"

    .prologue
    .line 419
    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->mContentListener:Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentRefeshListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->mViewFlow:Lcom/baidu/bulletin/ui/detail/ViewFlow;

    invoke-virtual {v1}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->getSelectedItemPosition()I

    move-result v1

    if-ne p2, v1, :cond_0

    .line 420
    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->mNewsDetailData:Lcom/baidu/bulletin/ui/detail/DetailDataList;

    invoke-virtual {v1, p2}, Lcom/baidu/bulletin/ui/detail/DetailDataList;->get(I)Lcom/baidu/bulletin/db/entity/ChannelItemInfo;

    move-result-object v0

    .line 421
    .local v0, info:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    iget-object v1, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->mContentListener:Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentRefeshListener;

    invoke-interface {v1, v0}, Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentRefeshListener;->onDetailItemChanged(Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    .line 423
    .end local v0           #info:Lcom/baidu/bulletin/db/entity/ChannelItemInfo;
    :cond_0
    return-void
.end method

.method public setContentListener(Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentRefeshListener;)V
    .locals 0
    .parameter "contentListener"

    .prologue
    .line 65
    iput-object p1, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->mContentListener:Lcom/baidu/bulletin/ui/detail/IDetailContentView$IContentRefeshListener;

    .line 66
    return-void
.end method

.method public updateOpView(Lcom/baidu/bulletin/db/entity/OpItemInfo;)V
    .locals 7
    .parameter "opItemInfo"

    .prologue
    const/16 v6, 0x8

    .line 387
    iget-object v4, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->mViewFlow:Lcom/baidu/bulletin/ui/detail/ViewFlow;

    iget-object v5, p0, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;->mViewFlow:Lcom/baidu/bulletin/ui/detail/ViewFlow;

    invoke-virtual {v5}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->getSelectedItemPosition()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/baidu/bulletin/ui/detail/ViewFlow;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    .line 388
    .local v1, OpView:Landroid/widget/RelativeLayout;
    if-eqz p1, :cond_1

    .line 391
    iget-object v4, p1, Lcom/baidu/bulletin/db/entity/OpItemInfo;->opUrl:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 392
    .local v3, downloadUrl:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 393
    const v4, 0x7f0800ca

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 394
    .local v0, OpTextView:Landroid/widget/TextView;
    iget-object v2, p1, Lcom/baidu/bulletin/db/entity/OpItemInfo;->text:Ljava/lang/String;

    .line 395
    .local v2, downloadText:Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 397
    new-instance v4, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$4;

    invoke-direct {v4, p0, v3, v2}, Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter$4;-><init>(Lcom/baidu/bulletin/ui/detail/DetailNewsAdapter;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 415
    .end local v0           #OpTextView:Landroid/widget/TextView;
    .end local v2           #downloadText:Ljava/lang/String;
    .end local v3           #downloadUrl:Ljava/lang/String;
    :goto_0
    return-void

    .line 410
    .restart local v3       #downloadUrl:Ljava/lang/String;
    :cond_0
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 413
    .end local v3           #downloadUrl:Ljava/lang/String;
    :cond_1
    invoke-virtual {v1, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method
