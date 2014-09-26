.class Lcom/baidu/bulletin/ui/detail/DetailShare$SharedAdapter;
.super Landroid/widget/BaseAdapter;
.source "DetailShare.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/bulletin/ui/detail/DetailShare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SharedAdapter"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)V
    .locals 12
    .parameter "mContext"
    .parameter "mDataInfo"

    .prologue
    const/4 v5, 0x0

    .line 278
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0}, Lcom/baidu/bulletin/ui/detail/DetailShare;->access$002(Ljava/util/List;)Ljava/util/List;

    .line 281
    invoke-static {}, Lcom/baidu/bulletin/ui/detail/DetailShare;->access$000()Ljava/util/List;

    move-result-object v11

    new-instance v0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;

    sget-object v1, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->SINAWEIBO:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    const-string v2, "com.sina.weibo"

    const v3, 0x7f0200f6

    const v4, 0x7f0c0262

    invoke-direct/range {v0 .. v5}, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;-><init>(Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;Ljava/lang/String;IILcom/baidu/bulletin/ui/detail/DetailShare$1;)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 284
    invoke-static {}, Lcom/baidu/bulletin/ui/detail/DetailShare;->access$000()Ljava/util/List;

    move-result-object v11

    new-instance v0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;

    sget-object v1, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->TENCENTMM:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    const-string v2, "com.tencent.mm"

    const v3, 0x7f0200f9

    const v4, 0x7f0c0264

    invoke-direct/range {v0 .. v5}, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;-><init>(Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;Ljava/lang/String;IILcom/baidu/bulletin/ui/detail/DetailShare$1;)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    invoke-static {}, Lcom/baidu/bulletin/ui/detail/DetailShare;->access$000()Ljava/util/List;

    move-result-object v11

    new-instance v0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;

    sget-object v1, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->TENCENTFRIENDS:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    const-string v2, "com.tencent.mm"

    const v3, 0x7f0200fc

    const v4, 0x7f0c0265

    invoke-direct/range {v0 .. v5}, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;-><init>(Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;Ljava/lang/String;IILcom/baidu/bulletin/ui/detail/DetailShare$1;)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 290
    invoke-static {}, Lcom/baidu/bulletin/ui/detail/DetailShare;->access$000()Ljava/util/List;

    move-result-object v11

    new-instance v0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;

    sget-object v1, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->TENCENTWBLOG:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    const-string v2, "com.tencent.WBlog"

    const v3, 0x7f0200fe

    const v4, 0x7f0c0263

    invoke-direct/range {v0 .. v5}, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;-><init>(Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;Ljava/lang/String;IILcom/baidu/bulletin/ui/detail/DetailShare$1;)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    invoke-static {}, Lcom/baidu/bulletin/ui/detail/DetailShare;->access$000()Ljava/util/List;

    move-result-object v11

    new-instance v0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;

    sget-object v1, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->QZONE:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    const-string v2, "com.qzone"

    const v3, 0x7f0200fd

    const v4, 0x7f0c0266

    invoke-direct/range {v0 .. v5}, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;-><init>(Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;Ljava/lang/String;IILcom/baidu/bulletin/ui/detail/DetailShare$1;)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    invoke-static {}, Lcom/baidu/bulletin/ui/detail/DetailShare;->access$000()Ljava/util/List;

    move-result-object v11

    new-instance v0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;

    sget-object v1, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->SOHUWEIBO:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    const-string v2, "com.cola.twisohu"

    const v3, 0x7f0200ee

    const v4, 0x7f0c0267

    invoke-direct/range {v0 .. v5}, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;-><init>(Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;Ljava/lang/String;IILcom/baidu/bulletin/ui/detail/DetailShare$1;)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 299
    invoke-static {}, Lcom/baidu/bulletin/ui/detail/DetailShare;->access$000()Ljava/util/List;

    move-result-object v11

    new-instance v0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;

    sget-object v1, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->MAIL:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    const-string v2, "mail"

    const v3, 0x7f0200e0

    const v4, 0x7f0c0268

    invoke-direct/range {v0 .. v5}, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;-><init>(Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;Ljava/lang/String;IILcom/baidu/bulletin/ui/detail/DetailShare$1;)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 302
    invoke-static {}, Lcom/baidu/bulletin/ui/detail/DetailShare;->access$000()Ljava/util/List;

    move-result-object v11

    new-instance v0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;

    sget-object v1, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->MORE:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    const-string v2, "more"

    const v3, 0x7f0200af

    const v4, 0x7f0c0269

    invoke-direct/range {v0 .. v5}, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;-><init>(Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;Ljava/lang/String;IILcom/baidu/bulletin/ui/detail/DetailShare$1;)V

    invoke-interface {v11, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    #calls: Lcom/baidu/bulletin/ui/detail/DetailShare;->querySharingIntents(Landroid/content/Context;)Ljava/util/List;
    invoke-static {p1}, Lcom/baidu/bulletin/ui/detail/DetailShare;->access$500(Landroid/content/Context;)Ljava/util/List;

    move-result-object v9

    .line 307
    .local v9, resolveInfos:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/ResolveInfo;

    .line 308
    .local v8, resolveInfo:Landroid/content/pm/ResolveInfo;
    iget-object v6, v8, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 309
    .local v6, activityInfo:Landroid/content/pm/ActivityInfo;
    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    #calls: Lcom/baidu/bulletin/ui/detail/DetailShare;->createSharingIntent(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)Landroid/content/Intent;
    invoke-static {p1, v0, p2}, Lcom/baidu/bulletin/ui/detail/DetailShare;->access$600(Landroid/content/Context;Ljava/lang/String;Lcom/baidu/bulletin/db/entity/ChannelItemInfo;)Landroid/content/Intent;

    move-result-object v10

    .line 312
    .local v10, targetIntent:Landroid/content/Intent;
    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/bulletin/ui/detail/DetailShare;->access$000()Ljava/util/List;

    move-result-object v0

    sget-object v2, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->TENCENTMM:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    invoke-virtual {v2}, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->getIndex()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;

    iget-object v0, v0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/bulletin/ui/detail/DetailShare;->access$000()Ljava/util/List;

    move-result-object v0

    sget-object v2, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->TENCENTFRIENDS:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    invoke-virtual {v2}, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->getIndex()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;

    iget-object v0, v0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 318
    :cond_1
    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    invoke-static {}, Lcom/baidu/bulletin/ui/detail/DetailShare;->access$000()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->TENCENTMM:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    invoke-virtual {v1}, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->getIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;

    iget-object v0, v0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;->targetIntent:Landroid/content/Intent;

    if-nez v0, :cond_2

    .line 322
    invoke-static {}, Lcom/baidu/bulletin/ui/detail/DetailShare;->access$000()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->TENCENTMM:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    invoke-virtual {v1}, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->getIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;

    iput-object v10, v0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;->targetIntent:Landroid/content/Intent;

    goto :goto_0

    .line 324
    :cond_2
    invoke-static {}, Lcom/baidu/bulletin/ui/detail/DetailShare;->access$000()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->TENCENTFRIENDS:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    invoke-virtual {v1}, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->getIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;

    iput-object v10, v0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;->targetIntent:Landroid/content/Intent;

    goto/16 :goto_0

    .line 327
    :cond_3
    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/bulletin/ui/detail/DetailShare;->access$000()Ljava/util/List;

    move-result-object v0

    sget-object v2, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->SINAWEIBO:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    invoke-virtual {v2}, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->getIndex()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;

    iget-object v0, v0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 329
    invoke-static {}, Lcom/baidu/bulletin/ui/detail/DetailShare;->access$000()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->SINAWEIBO:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    invoke-virtual {v1}, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->getIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;

    iput-object v10, v0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;->targetIntent:Landroid/content/Intent;

    goto/16 :goto_0

    .line 331
    :cond_4
    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/bulletin/ui/detail/DetailShare;->access$000()Ljava/util/List;

    move-result-object v0

    sget-object v2, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->TENCENTWBLOG:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    invoke-virtual {v2}, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->getIndex()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;

    iget-object v0, v0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 333
    invoke-static {}, Lcom/baidu/bulletin/ui/detail/DetailShare;->access$000()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->TENCENTWBLOG:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    invoke-virtual {v1}, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->getIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;

    iput-object v10, v0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;->targetIntent:Landroid/content/Intent;

    goto/16 :goto_0

    .line 335
    :cond_5
    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/bulletin/ui/detail/DetailShare;->access$000()Ljava/util/List;

    move-result-object v0

    sget-object v2, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->QZONE:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    invoke-virtual {v2}, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->getIndex()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;

    iget-object v0, v0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 337
    invoke-static {}, Lcom/baidu/bulletin/ui/detail/DetailShare;->access$000()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->QZONE:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    invoke-virtual {v1}, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->getIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;

    iput-object v10, v0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;->targetIntent:Landroid/content/Intent;

    goto/16 :goto_0

    .line 339
    :cond_6
    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/bulletin/ui/detail/DetailShare;->access$000()Ljava/util/List;

    move-result-object v0

    sget-object v2, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->SOHUWEIBO:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    invoke-virtual {v2}, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->getIndex()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;

    iget-object v0, v0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 341
    invoke-static {}, Lcom/baidu/bulletin/ui/detail/DetailShare;->access$000()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->SOHUWEIBO:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    invoke-virtual {v1}, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->getIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;

    iput-object v10, v0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;->targetIntent:Landroid/content/Intent;

    goto/16 :goto_0

    .line 343
    :cond_7
    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {}, Lcom/baidu/bulletin/ui/detail/DetailShare;->access$000()Ljava/util/List;

    move-result-object v0

    sget-object v2, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->MAIL:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    invoke-virtual {v2}, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->getIndex()I

    move-result v2

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;

    iget-object v0, v0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 345
    const-string v0, "android.intent.extra.SUBJECT"

    const-string v1, "share"

    invoke-virtual {v10, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 347
    invoke-static {}, Lcom/baidu/bulletin/ui/detail/DetailShare;->access$000()Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->MAIL:Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;

    invoke-virtual {v1}, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedApk;->getIndex()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;

    iput-object v10, v0, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;->targetIntent:Landroid/content/Intent;

    goto/16 :goto_0

    .line 353
    .end local v6           #activityInfo:Landroid/content/pm/ActivityInfo;
    .end local v8           #resolveInfo:Landroid/content/pm/ResolveInfo;
    .end local v10           #targetIntent:Landroid/content/Intent;
    :cond_8
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 358
    invoke-static {}, Lcom/baidu/bulletin/ui/detail/DetailShare;->access$000()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 370
    invoke-static {}, Lcom/baidu/bulletin/ui/detail/DetailShare;->access$000()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    .line 364
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    .line 376
    if-nez p2, :cond_0

    .line 377
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "layout_inflater"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 380
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v3, 0x7f030040

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v1, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 387
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    const v3, 0x7f0800e7

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 389
    .local v0, icon:Landroid/widget/ImageView;
    invoke-static {}, Lcom/baidu/bulletin/ui/detail/DetailShare;->access$000()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;

    iget v3, v3, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;->iconId:I

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 391
    const v3, 0x7f0800e8

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 393
    .local v2, name:Landroid/widget/TextView;
    invoke-static {}, Lcom/baidu/bulletin/ui/detail/DetailShare;->access$000()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;

    iget v3, v3, Lcom/baidu/bulletin/ui/detail/DetailShare$SharedItem;->apkNameId:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 395
    return-object p2
.end method
