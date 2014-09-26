.class Lcom/baidu/bulletin/ui/detail/DetailShare;
.super Ljava/lang/Object;
.source "DetailShare.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/bulletin/ui/detail/DetailShare$SharedAdapter;,
        Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;,
        Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;
    }
.end annotation


# static fields
.field private static sharedDialog:Landroid/app/Dialog;

.field private static sharedItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 277
    return-void
.end method

.method static synthetic access$000()Ljava/util/List;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/baidu/bulletin/ui/detail/DetailShare;->sharedItems:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$002(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .parameter "x0"

    .prologue
    .line 45
    sput-object p0, Lcom/baidu/bulletin/ui/detail/DetailShare;->sharedItems:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Landroid/content/Context;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-static {p0, p1}, Lcom/baidu/bulletin/ui/detail/DetailShare;->shareMore(Landroid/content/Context;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 45
    invoke-static {p0, p1, p2}, Lcom/baidu/bulletin/ui/detail/DetailShare;->installSharedAppdialog(Landroid/content/Context;Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$300()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/baidu/bulletin/ui/detail/DetailShare;->sharedDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$500(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 45
    invoke-static {p0}, Lcom/baidu/bulletin/ui/detail/DetailShare;->querySharingIntents(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 45
    invoke-static {p0, p1, p2}, Lcom/baidu/bulletin/ui/detail/DetailShare;->createSharingIntent(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Landroid/content/Context;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 45
    invoke-static {p0, p1}, Lcom/baidu/bulletin/ui/detail/DetailShare;->lunchAppInstall(Landroid/content/Context;I)V

    return-void
.end method

.method static cleanSharedDialog()V
    .locals 1

    .prologue
    .line 60
    sget-object v0, Lcom/baidu/bulletin/ui/detail/DetailShare;->sharedDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 61
    sget-object v0, Lcom/baidu/bulletin/ui/detail/DetailShare;->sharedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 62
    :cond_0
    return-void
.end method

.method private static createSharingDialog(Landroid/content/Context;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)Landroid/app/Dialog;
    .locals 6
    .parameter "mContext"
    .parameter "mDataInfo"

    .prologue
    const/16 v5, 0x14

    .line 67
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 68
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    const-string v3, "layout_inflater"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 71
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f0c003b

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 72
    const v3, 0x7f03003f

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    .line 74
    .local v1, gridView:Landroid/widget/GridView;
    const/16 v3, 0xa

    const/16 v4, 0x1e

    invoke-virtual {v1, v5, v3, v5, v4}, Landroid/widget/GridView;->setPadding(IIII)V

    .line 76
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 78
    new-instance v3, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedAdapter;

    invoke-direct {v3, p0, p1}, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedAdapter;-><init>(Landroid/content/Context;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 80
    new-instance v3, Lcom/baidu/bulletin/ui/detail/DetailShare$1;

    invoke-direct {v3, p0, p1}, Lcom/baidu/bulletin/ui/detail/DetailShare$1;-><init>(Landroid/content/Context;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V

    invoke-virtual {v1, v3}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 137
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    return-object v3
.end method

.method private static createSharingIntent(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)Landroid/content/Intent;
    .locals 13
    .parameter "mContext"
    .parameter "pkgName"
    .parameter "mDataInfo"

    .prologue
    .line 159
    new-instance v8, Landroid/content/Intent;

    const-string v11, "android.intent.action.SEND"

    invoke-direct {v8, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 160
    .local v8, targetIntent:Landroid/content/Intent;
    const/high16 v11, 0x1000

    invoke-virtual {v8, v11}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 162
    sget-object v11, Lcom/baidu/bulletin/ui/detail/DetailShare;->sharedItems:Ljava/util/List;

    sget-object v12, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->TENCENTMM:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    invoke-virtual {v12}, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->getIndex()I

    move-result v12

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;

    iget-object v11, v11, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;->pkgName:Ljava/lang/String;

    invoke-virtual {p1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    sget-object v11, Lcom/baidu/bulletin/ui/detail/DetailShare;->sharedItems:Ljava/util/List;

    sget-object v12, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->TENCENTMM:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    invoke-virtual {v12}, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->getIndex()I

    move-result v12

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;

    iget-object v11, v11, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;->targetIntent:Landroid/content/Intent;

    if-nez v11, :cond_6

    .line 166
    const-string v11, "text/plain"

    invoke-virtual {v8, v11}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    :cond_0
    :goto_0
    const-string v11, "android.intent.extra.SUBJECT"

    const-string v12, "share"

    invoke-virtual {v8, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 190
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 191
    .local v9, text:Ljava/lang/StringBuilder;
    const/4 v10, 0x0

    .line 192
    .local v10, textsize:I
    iget-object v11, p2, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->title:Ljava/lang/String;

    if-eqz v11, :cond_1

    .line 193
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\u3010"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p2, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->title:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\u3011"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    iget-object v11, p2, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->title:Ljava/lang/String;

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, 0x2

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    .line 196
    :cond_1
    iget v11, p2, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->channelId:I

    if-lez v11, :cond_2

    iget v11, p2, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->channelId:I

    const/16 v12, 0x3e8

    if-lt v11, v12, :cond_3

    :cond_2
    iget v11, p2, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->channelId:I

    const/16 v12, 0xbb8

    if-le v11, v12, :cond_9

    iget v11, p2, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->channelId:I

    const/16 v12, 0xfa0

    if-ge v11, v12, :cond_9

    .line 198
    :cond_3
    iget-object v11, p2, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->brief:Ljava/lang/String;

    if-eqz v11, :cond_4

    .line 199
    iget-object v11, p2, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->brief:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    :cond_4
    iget-object v11, p2, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->sourceUrl:Ljava/lang/String;

    if-eqz v11, :cond_5

    .line 202
    iget-object v11, p2, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->sourceUrl:Ljava/lang/String;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    :cond_5
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, " #"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const v12, 0x7f0c003a

    invoke-virtual {p0, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "#"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 223
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 225
    .local v7, shareText:Ljava/lang/String;
    const-string v11, "android.intent.extra.TEXT"

    invoke-virtual {v8, v11, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 227
    invoke-virtual {v8, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    return-object v8

    .line 168
    .end local v7           #shareText:Ljava/lang/String;
    .end local v9           #text:Ljava/lang/StringBuilder;
    .end local v10           #textsize:I
    :cond_6
    const-string v11, "image/*"

    invoke-virtual {v8, v11}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    iget v11, p2, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->channelId:I

    const/16 v12, 0xfa0

    if-eq v11, v12, :cond_0

    .line 172
    iget v11, p2, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->channelId:I

    const/16 v12, 0xbb9

    if-lt v11, v12, :cond_8

    iget v11, p2, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->channelId:I

    const/16 v12, 0xbbc

    if-gt v11, v12, :cond_8

    .line 173
    iget-wide v11, p2, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->_id:J

    long-to-int v11, v11

    invoke-static {v11}, Lcom/baidu/bulletin/ui/detail/DetailShare;->getBigImagePath(I)Ljava/lang/String;

    move-result-object v4

    .line 174
    .local v4, imagePath:Ljava/lang/String;
    if-nez v4, :cond_7

    .line 175
    iget-object v11, p2, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iget-object v4, v11, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgPath:Ljava/lang/String;

    .line 180
    :cond_7
    :goto_1
    if-eqz v4, :cond_0

    .line 181
    const-string v11, "android.intent.extra.STREAM"

    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v12}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v8, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_0

    .line 178
    .end local v4           #imagePath:Ljava/lang/String;
    :cond_8
    iget-object v11, p2, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iget-object v4, v11, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgPath:Ljava/lang/String;

    .restart local v4       #imagePath:Ljava/lang/String;
    goto :goto_1

    .line 204
    .end local v4           #imagePath:Ljava/lang/String;
    .restart local v9       #text:Ljava/lang/StringBuilder;
    .restart local v10       #textsize:I
    :cond_9
    iget v11, p2, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->channelId:I

    const/16 v12, 0xfa0

    if-ne v11, v12, :cond_5

    .line 205
    new-instance v2, Lcom/baidu/bulletin/network/protocol/JsonStringToHistoryDescAdatper;

    iget-object v11, p2, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->content:Ljava/lang/String;

    invoke-direct {v2, v11}, Lcom/baidu/bulletin/network/protocol/JsonStringToHistoryDescAdatper;-><init>(Ljava/lang/String;)V

    .line 208
    .local v2, historyDescAdapter:Lcom/baidu/bulletin/network/protocol/IHistoryDescAdapter;
    if-eqz v2, :cond_5

    .line 209
    new-instance v6, Lcom/baidu/bulletin/network/protocol/TextBuildWords;

    invoke-direct {v6}, Lcom/baidu/bulletin/network/protocol/TextBuildWords;-><init>()V

    .line 210
    .local v6, mBuildWords:Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc$IBuildWords;
    invoke-interface {v2}, Lcom/baidu/bulletin/network/protocol/IHistoryDescAdapter;->get()[Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;

    move-result-object v0

    .local v0, arr$:[Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;
    array-length v5, v0

    .local v5, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_2
    if-ge v3, v5, :cond_5

    aget-object v1, v0, v3

    .line 211
    .local v1, desc:Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;
    iget v11, v1, Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;->year:I

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 212
    invoke-interface {v6, v1}, Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc$IBuildWords;->build(Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    const-string v11, "\uff1b"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    add-int/lit8 v3, v3, 0x1

    goto :goto_2
.end method

.method private static getBigImagePath(I)Ljava/lang/String;
    .locals 4
    .parameter "id"

    .prologue
    .line 574
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 576
    .local v2, newsInfoList:Ljava/util/List;,"Ljava/util/List<Lcom/baidu/bulletin/db/entity/NewsDetailInfo;>;"
    :try_start_0
    invoke-static {}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->getInstance()Lcom/baidu/bulletin/db/manager/DatabaseManager;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/baidu/bulletin/db/manager/DatabaseManager;->queryNewsDetailByItemId(I)Ljava/util/List;
    :try_end_0
    .catch Lcom/baidu/bulletin/db/exception/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 580
    :goto_0
    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;

    .line 581
    .local v1, newsInfo:Lcom/baidu/bulletin/db/entity/NewsDetailInfo;
    iget-object v3, v1, Lcom/baidu/bulletin/db/entity/NewsDetailInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    iget-object v3, v3, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgPath:Ljava/lang/String;

    return-object v3

    .line 577
    .end local v1           #newsInfo:Lcom/baidu/bulletin/db/entity/NewsDetailInfo;
    :catch_0
    move-exception v0

    .line 578
    .local v0, e:Lcom/baidu/bulletin/db/exception/DatabaseException;
    invoke-virtual {v0}, Lcom/baidu/bulletin/db/exception/DatabaseException;->printStackTrace()V

    goto :goto_0
.end method

.method private static installSharedAppdialog(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 3
    .parameter "mContext"
    .parameter "appName"
    .parameter "docId"

    .prologue
    .line 421
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 422
    .local v0, builder:Landroid/app/AlertDialog$Builder;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const v2, 0x7f0c026a

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f0c0291

    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 426
    const v1, 0x7f0c00e4

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 427
    const v1, 0x7f0c00b6

    new-instance v2, Lcom/baidu/bulletin/ui/detail/DetailShare$2;

    invoke-direct {v2, p0, p2}, Lcom/baidu/bulletin/ui/detail/DetailShare$2;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 435
    const v1, 0x7f0c00b7

    new-instance v2, Lcom/baidu/bulletin/ui/detail/DetailShare$3;

    invoke-direct {v2, p0, p1}, Lcom/baidu/bulletin/ui/detail/DetailShare$3;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 448
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 449
    return-void
.end method

.method private static lunchAppInstall(Landroid/content/Context;I)V
    .locals 4
    .parameter "mContext"
    .parameter "docId"

    .prologue
    .line 400
    if-gtz p1, :cond_0

    .line 416
    :goto_0
    return-void

    .line 403
    :cond_0
    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://m.baidu.com/app?action=content&docid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "&f=yiphone#Intent;action=com.baidu.appsearch.action.HIGHSPEED;launchFlags=0x10000000;component=com.baidu.appsearch/.UrlHandlerActivity;end"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    .line 409
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 410
    .end local v1           #intent:Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 411
    .local v0, e:Ljava/net/URISyntaxException;
    invoke-virtual {v0}, Ljava/net/URISyntaxException;->printStackTrace()V

    goto :goto_0

    .line 412
    .end local v0           #e:Ljava/net/URISyntaxException;
    :catch_1
    move-exception v0

    .line 413
    .local v0, e:Ljava/lang/Exception;
    const v2, 0x7f0c026b

    const/4 v3, 0x1

    invoke-static {p0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method private static querySharingIntents(Landroid/content/Context;)Ljava/util/List;
    .locals 5
    .parameter "mContext"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 141
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 143
    .local v0, pm:Landroid/content/pm/PackageManager;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 144
    .local v1, queryIntent:Landroid/content/Intent;
    const-string v3, "image/*"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    invoke-virtual {v0, v1, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 148
    .local v2, resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 149
    const v3, 0x7f0c0261

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 154
    :cond_0
    return-object v2
.end method

.method private static shareMore(Landroid/content/Context;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
    .locals 26
    .parameter "mContext"
    .parameter "mDataInfo"

    .prologue
    .line 452
    new-instance v13, Landroid/content/Intent;

    const-string v23, "android.intent.action.SEND"

    move-object/from16 v0, v23

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 453
    .local v13, it:Landroid/content/Intent;
    const-string v23, "image/*"

    move-object/from16 v0, v23

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 454
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v13, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v17

    .line 456
    .local v17, resInfo:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->isEmpty()Z

    move-result v23

    if-nez v23, :cond_d

    .line 457
    new-instance v20, Ljava/util/ArrayList;

    invoke-direct/range {v20 .. v20}, Ljava/util/ArrayList;-><init>()V

    .line 458
    .local v20, targetedShareIntents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    invoke-interface/range {v17 .. v17}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_0
    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v23

    if-eqz v23, :cond_c

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    .line 459
    .local v12, info:Landroid/content/pm/ResolveInfo;
    new-instance v19, Landroid/content/Intent;

    const-string v23, "android.intent.action.SEND"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 460
    .local v19, targeted:Landroid/content/Intent;
    iget-object v0, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    const-string v24, "com.android.contacts"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-eqz v23, :cond_8

    move-object/from16 v0, p1

    iget v0, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->channelId:I

    move/from16 v23, v0

    const/16 v24, 0xbb9

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_1

    move-object/from16 v0, p1

    iget v0, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->channelId:I

    move/from16 v23, v0

    const/16 v24, 0xbbc

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_8

    .line 463
    :cond_1
    const-string v23, "text/plain"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 483
    :cond_2
    :goto_1
    move-object/from16 v0, p1

    iget v0, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->channelId:I

    move/from16 v23, v0

    const/16 v24, 0xbb9

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_3

    move-object/from16 v0, p1

    iget v0, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->channelId:I

    move/from16 v23, v0

    const/16 v24, 0xbbc

    move/from16 v0, v23

    move/from16 v1, v24

    if-le v0, v1, :cond_7

    .line 485
    :cond_3
    const-string v23, "android.intent.extra.SUBJECT"

    const-string v24, "share"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 487
    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    .line 488
    .local v21, text:Ljava/lang/StringBuilder;
    const/16 v22, 0x0

    .line 489
    .local v22, textsize:I
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->title:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_4

    .line 490
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "\u3010"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->title:Ljava/lang/String;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "\u3011"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 491
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->title:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/String;->length()I

    move-result v23

    add-int/lit8 v23, v23, 0x2

    mul-int/lit8 v23, v23, 0x2

    add-int v22, v22, v23

    .line 493
    :cond_4
    move-object/from16 v0, p1

    iget v0, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->channelId:I

    move/from16 v23, v0

    if-lez v23, :cond_b

    move-object/from16 v0, p1

    iget v0, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->channelId:I

    move/from16 v23, v0

    const/16 v24, 0x3e8

    move/from16 v0, v23

    move/from16 v1, v24

    if-ge v0, v1, :cond_b

    .line 495
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->brief:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_5

    .line 496
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->brief:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    :cond_5
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->sourceUrl:Ljava/lang/String;

    move-object/from16 v23, v0

    if-eqz v23, :cond_6

    .line 499
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->sourceUrl:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 516
    :cond_6
    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, " #"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const v24, 0x7f0c003a

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "#"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 520
    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    .line 522
    .local v18, shareText:Ljava/lang/String;
    const-string v23, "android.intent.extra.TEXT"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 525
    .end local v18           #shareText:Ljava/lang/String;
    .end local v21           #text:Ljava/lang/StringBuilder;
    .end local v22           #textsize:I
    :cond_7
    iget-object v3, v12, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 527
    .local v3, activityInfo:Landroid/content/pm/ActivityInfo;
    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    sget-object v23, Lcom/baidu/bulletin/ui/detail/DetailShare;->sharedItems:Ljava/util/List;

    sget-object v25, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->TENCENTWBLOG:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    invoke-virtual/range {v25 .. v25}, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->getIndex()I

    move-result v25

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;->pkgName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_0

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    sget-object v23, Lcom/baidu/bulletin/ui/detail/DetailShare;->sharedItems:Ljava/util/List;

    sget-object v25, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->MAIL:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    invoke-virtual/range {v25 .. v25}, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->getIndex()I

    move-result v25

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;->pkgName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_0

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    sget-object v23, Lcom/baidu/bulletin/ui/detail/DetailShare;->sharedItems:Ljava/util/List;

    sget-object v25, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->QZONE:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    invoke-virtual/range {v25 .. v25}, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->getIndex()I

    move-result v25

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;->pkgName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_0

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    sget-object v23, Lcom/baidu/bulletin/ui/detail/DetailShare;->sharedItems:Ljava/util/List;

    sget-object v25, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->SINAWEIBO:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    invoke-virtual/range {v25 .. v25}, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->getIndex()I

    move-result v25

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;->pkgName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_0

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    sget-object v23, Lcom/baidu/bulletin/ui/detail/DetailShare;->sharedItems:Ljava/util/List;

    sget-object v25, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->SOHUWEIBO:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    invoke-virtual/range {v25 .. v25}, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->getIndex()I

    move-result v25

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;->pkgName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_0

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    sget-object v23, Lcom/baidu/bulletin/ui/detail/DetailShare;->sharedItems:Ljava/util/List;

    sget-object v25, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->TENCENTFRIENDS:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    invoke-virtual/range {v25 .. v25}, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->getIndex()I

    move-result v25

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;->pkgName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_0

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    sget-object v23, Lcom/baidu/bulletin/ui/detail/DetailShare;->sharedItems:Ljava/util/List;

    sget-object v25, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->TENCENTMM:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    invoke-virtual/range {v25 .. v25}, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->getIndex()I

    move-result v25

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;->pkgName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_0

    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v24, v0

    sget-object v23, Lcom/baidu/bulletin/ui/detail/DetailShare;->sharedItems:Ljava/util/List;

    sget-object v25, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->TENCENTWBLOG:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    invoke-virtual/range {v25 .. v25}, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->getIndex()I

    move-result v25

    move-object/from16 v0, v23

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;->pkgName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v23

    if-nez v23, :cond_0

    .line 549
    iget-object v0, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 550
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 465
    .end local v3           #activityInfo:Landroid/content/pm/ActivityInfo;
    :cond_8
    const-string v23, "image/*"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 466
    move-object/from16 v0, p1

    iget v0, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->channelId:I

    move/from16 v23, v0

    const/16 v24, 0xfa0

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_2

    .line 469
    move-object/from16 v0, p1

    iget v0, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->channelId:I

    move/from16 v23, v0

    const/16 v24, 0xbb9

    move/from16 v0, v23

    move/from16 v1, v24

    if-lt v0, v1, :cond_a

    move-object/from16 v0, p1

    iget v0, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->channelId:I

    move/from16 v23, v0

    const/16 v24, 0xbbc

    move/from16 v0, v23

    move/from16 v1, v24

    if-gt v0, v1, :cond_a

    .line 470
    move-object/from16 v0, p1

    iget-wide v0, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->_id:J

    move-wide/from16 v23, v0

    move-wide/from16 v0, v23

    long-to-int v0, v0

    move/from16 v23, v0

    invoke-static/range {v23 .. v23}, Lcom/baidu/bulletin/ui/detail/DetailShare;->getBigImagePath(I)Ljava/lang/String;

    move-result-object v11

    .line 471
    .local v11, imagePath:Ljava/lang/String;
    if-nez v11, :cond_9

    .line 472
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v11, v0, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgPath:Ljava/lang/String;

    .line 477
    :cond_9
    :goto_2
    if-eqz v11, :cond_2

    .line 478
    const-string v23, "android.intent.extra.STREAM"

    new-instance v24, Ljava/io/File;

    move-object/from16 v0, v24

    invoke-direct {v0, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static/range {v24 .. v24}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v24

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/16 :goto_1

    .line 475
    .end local v11           #imagePath:Ljava/lang/String;
    :cond_a
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->imageInfo:Lcom/baidu/bulletin/db/entity/ImageInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v11, v0, Lcom/baidu/bulletin/db/entity/ImageInfo;->imgPath:Ljava/lang/String;

    .restart local v11       #imagePath:Ljava/lang/String;
    goto :goto_2

    .line 501
    .end local v11           #imagePath:Ljava/lang/String;
    .restart local v21       #text:Ljava/lang/StringBuilder;
    .restart local v22       #textsize:I
    :cond_b
    move-object/from16 v0, p1

    iget v0, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->channelId:I

    move/from16 v23, v0

    const/16 v24, 0xfa0

    move/from16 v0, v23

    move/from16 v1, v24

    if-ne v0, v1, :cond_6

    .line 502
    new-instance v8, Lcom/baidu/bulletin/network/protocol/JsonStringToHistoryDescAdatper;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/baidu/bulletin/db/entity/ChannelItemInfo;->content:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-direct {v8, v0}, Lcom/baidu/bulletin/network/protocol/JsonStringToHistoryDescAdatper;-><init>(Ljava/lang/String;)V

    .line 505
    .local v8, historyDescAdapter:Lcom/baidu/bulletin/network/protocol/IHistoryDescAdapter;
    if-eqz v8, :cond_6

    .line 506
    new-instance v15, Lcom/baidu/bulletin/network/protocol/TextBuildWords;

    invoke-direct {v15}, Lcom/baidu/bulletin/network/protocol/TextBuildWords;-><init>()V

    .line 507
    .local v15, mBuildWords:Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc$IBuildWords;
    invoke-interface {v8}, Lcom/baidu/bulletin/network/protocol/IHistoryDescAdapter;->get()[Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;

    move-result-object v4

    .local v4, arr$:[Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;
    array-length v14, v4

    .local v14, len$:I
    const/4 v10, 0x0

    .local v10, i$:I
    :goto_3
    if-ge v10, v14, :cond_6

    aget-object v6, v4, v10

    .line 508
    .local v6, desc:Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;
    iget v0, v6, Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;->year:I

    move/from16 v23, v0

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 509
    invoke-interface {v15, v6}, Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc$IBuildWords;->build(Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;)Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 511
    const-string v23, "\uff1b"

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 507
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 553
    .end local v4           #arr$:[Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;
    .end local v6           #desc:Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc;
    .end local v8           #historyDescAdapter:Lcom/baidu/bulletin/network/protocol/IHistoryDescAdapter;
    .end local v10           #i$:I
    .end local v12           #info:Landroid/content/pm/ResolveInfo;
    .end local v14           #len$:I
    .end local v15           #mBuildWords:Lcom/baidu/bulletin/network/protocol/RawHistoryTodayItem$HistoryDesc$IBuildWords;
    .end local v19           #targeted:Landroid/content/Intent;
    .end local v21           #text:Ljava/lang/StringBuilder;
    .end local v22           #textsize:I
    :cond_c
    const/16 v23, 0x0

    move-object/from16 v0, v20

    move/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/Intent;

    const v24, 0x7f0c0292

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v5

    .line 556
    .local v5, chooserIntent:Landroid/content/Intent;
    if-nez v5, :cond_e

    .line 571
    .end local v5           #chooserIntent:Landroid/content/Intent;
    .end local v20           #targetedShareIntents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    :cond_d
    :goto_4
    return-void

    .line 560
    .restart local v5       #chooserIntent:Landroid/content/Intent;
    .restart local v20       #targetedShareIntents:Ljava/util/List;,"Ljava/util/List<Landroid/content/Intent;>;"
    :cond_e
    const-string v24, "android.intent.extra.INITIAL_INTENTS"

    const/16 v23, 0x0

    move/from16 v0, v23

    new-array v0, v0, [Landroid/os/Parcelable;

    move-object/from16 v23, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [Landroid/os/Parcelable;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 563
    :try_start_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_4

    .line 564
    :catch_0
    move-exception v7

    .line 565
    .local v7, ex:Landroid/content/ActivityNotFoundException;
    const v23, 0x7f0c0293

    move-object/from16 v0, p0

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v23

    move/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v16

    .line 568
    .local v16, noMoreAppToShareToast:Landroid/widget/Toast;
    invoke-virtual/range {v16 .. v16}, Landroid/widget/Toast;->show()V

    goto :goto_4
.end method

.method static showSharedDialog(Landroid/content/Context;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
    .locals 1
    .parameter "mContext"
    .parameter "mDataInfo"

    .prologue
    .line 49
    sget-object v0, Lcom/baidu/bulletin/ui/detail/DetailShare;->sharedDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 50
    sget-object v0, Lcom/baidu/bulletin/ui/detail/DetailShare;->sharedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 52
    :cond_0
    invoke-static {p0, p1}, Lcom/baidu/bulletin/ui/detail/DetailShare;->createSharingDialog(Landroid/content/Context;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)Landroid/app/Dialog;

    move-result-object v0

    sput-object v0, Lcom/baidu/bulletin/ui/detail/DetailShare;->sharedDialog:Landroid/app/Dialog;

    .line 54
    sget-object v0, Lcom/baidu/bulletin/ui/detail/DetailShare;->sharedDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 55
    sget-object v0, Lcom/baidu/bulletin/ui/detail/DetailShare;->sharedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 57
    :cond_1
    return-void
.end method
