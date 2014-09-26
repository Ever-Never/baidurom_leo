.class public Lcom/inveno/newpiflow/biz/OpDataUtil;
.super Ljava/lang/Object;
.source "OpDataUtil.java"


# static fields
.field public static final TYPE_BAIYI:I = 0x0

.field public static final TYPE_INVENO:I = -0x1

.field public static final TYPE_IQIYI:I = 0x1

.field public static final URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const-string v0, "content://com.baidu.home2/bulletinop"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/inveno/newpiflow/biz/OpDataUtil;->URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static MD5(Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .parameter "inStr"

    .prologue
    .line 164
    const/4 v5, 0x0

    .line 166
    .local v5, md5:Ljava/security/MessageDigest;
    :try_start_0
    const-string v8, "MD5"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v5

    .line 172
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 173
    .local v1, charArray:[C
    array-length v8, v1

    new-array v0, v8, [B

    .line 174
    .local v0, byteArray:[B
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    array-length v8, v1

    if-ge v4, v8, :cond_0

    .line 175
    aget-char v8, v1, v4

    int-to-byte v8, v8

    aput-byte v8, v0, v4

    .line 174
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 167
    .end local v0           #byteArray:[B
    .end local v1           #charArray:[C
    .end local v4           #i:I
    :catch_0
    move-exception v2

    .line 168
    .local v2, e:Ljava/lang/Exception;
    sget-object v8, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 169
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 170
    const-string v8, ""

    .line 184
    .end local v2           #e:Ljava/lang/Exception;
    :goto_1
    return-object v8

    .line 176
    .restart local v0       #byteArray:[B
    .restart local v1       #charArray:[C
    .restart local v4       #i:I
    :cond_0
    invoke-virtual {v5, v0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v6

    .line 177
    .local v6, md5Bytes:[B
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 178
    .local v3, hexValue:Ljava/lang/StringBuffer;
    const/4 v4, 0x0

    :goto_2
    array-length v8, v6

    if-ge v4, v8, :cond_2

    .line 179
    aget-byte v8, v6, v4

    and-int/lit16 v7, v8, 0xff

    .line 180
    .local v7, val:I
    const/16 v8, 0x10

    if-ge v7, v8, :cond_1

    .line 181
    const-string v8, "0"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 182
    :cond_1
    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 178
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 184
    .end local v7           #val:I
    :cond_2
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1
.end method

.method public static countBaiyi(Landroid/content/Context;Ljava/lang/String;)I
    .locals 8
    .parameter "context"
    .parameter "md5"

    .prologue
    .line 122
    const/4 v7, -0x1

    .line 123
    .local v7, rst:I
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 124
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    .line 125
    .local v2, PROJECTION:[Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "contentmd5=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 126
    .local v3, selection:Ljava/lang/String;
    const/4 v6, 0x0

    .line 128
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/inveno/newpiflow/biz/OpDataUtil;->URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 130
    if-eqz v6, :cond_0

    .line 131
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 134
    :cond_0
    if-eqz v6, :cond_1

    .line 135
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 139
    .end local v2           #PROJECTION:[Ljava/lang/String;
    .end local v3           #selection:Ljava/lang/String;
    .end local v6           #cursor:Landroid/database/Cursor;
    :cond_1
    return v7

    .line 134
    .restart local v2       #PROJECTION:[Ljava/lang/String;
    .restart local v3       #selection:Ljava/lang/String;
    .restart local v6       #cursor:Landroid/database/Cursor;
    :catchall_0
    move-exception v0

    if-eqz v6, :cond_2

    .line 135
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 134
    :cond_2
    throw v0
.end method

.method public static deleteIQIYI(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 105
    if-nez p0, :cond_0

    .line 111
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 109
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "type=1"

    .line 110
    .local v1, where:Ljava/lang/String;
    sget-object v2, Lcom/inveno/newpiflow/biz/OpDataUtil;->URI:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static deleteIQIYI(Landroid/content/Context;Ljava/util/LinkedList;)V
    .locals 11
    .parameter "context"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/LinkedList",
            "<",
            "Lcom/inveno/newpiflow/widget/PiWindowView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p1, windowList:Ljava/util/LinkedList;,"Ljava/util/LinkedList<Lcom/inveno/newpiflow/widget/PiWindowView;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v9

    if-gtz v9, :cond_1

    .line 102
    :cond_0
    :goto_0
    return-void

    .line 82
    :cond_1
    const v9, 0x7f0c02f2

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 83
    .local v5, src:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 84
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v8, "page= -1 AND type=1"

    .line 86
    .local v8, where:Ljava/lang/String;
    invoke-virtual {p1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/inveno/newpiflow/widget/PiWindowView;

    .line 87
    .local v4, piWindowView:Lcom/inveno/newpiflow/widget/PiWindowView;
    if-eqz v4, :cond_2

    .line 88
    iget-object v7, v4, Lcom/inveno/newpiflow/widget/PiWindowView;->mChilds:Ljava/util/ArrayList;

    .line 89
    .local v7, views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    if-eqz v7, :cond_2

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-lez v9, :cond_2

    .line 90
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    .line 91
    .local v6, v:Landroid/view/View;
    invoke-virtual {v6}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/inveno/newpiflow/model/PiDataItem;

    .line 92
    .local v3, piDataItem:Lcom/inveno/newpiflow/model/PiDataItem;
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Lcom/inveno/newpiflow/model/PiDataItem;->getFlowNewinfo()Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;

    move-result-object v9

    if-eqz v9, :cond_3

    invoke-virtual {v3}, Lcom/inveno/newpiflow/model/PiDataItem;->getFlowNewinfo()Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;

    move-result-object v9

    invoke-virtual {v9}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->getSrc()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 95
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " AND _id<>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Lcom/inveno/newpiflow/model/PiDataItem;->getFlowNewinfo()Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;

    move-result-object v10

    invoke-virtual {v10}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->getId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    goto :goto_1

    .line 101
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #piDataItem:Lcom/inveno/newpiflow/model/PiDataItem;
    .end local v4           #piWindowView:Lcom/inveno/newpiflow/widget/PiWindowView;
    .end local v6           #v:Landroid/view/View;
    .end local v7           #views:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    :cond_4
    sget-object v9, Lcom/inveno/newpiflow/biz/OpDataUtil;->URI:Landroid/net/Uri;

    const/4 v10, 0x0

    invoke-virtual {v0, v9, v8, v10}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static getBaiyiOPEntityById(Landroid/content/Context;Ljava/lang/String;)Lcom/inveno/newpiflow/model/BizShowFlowNew;
    .locals 10
    .parameter "context"
    .parameter "id"

    .prologue
    .line 188
    const/4 v8, 0x0

    .line 189
    .local v8, rst:Lcom/inveno/newpiflow/model/BizShowFlowNew;
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "content"

    aput-object v4, v2, v1

    const/4 v1, 0x1

    const-string v4, "type"

    aput-object v4, v2, v1

    .line 192
    .local v2, projection:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 193
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 194
    .local v3, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 196
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/inveno/newpiflow/biz/OpDataUtil;->URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 197
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 198
    const-string v1, "content"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 199
    .local v7, msg:Ljava/lang/String;
    const-string v1, "type"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 200
    .local v9, type:I
    invoke-static {p0, v7, v9}, Lcom/inveno/newpiflow/tools/AdUtil;->initBizData(Landroid/content/Context;Ljava/lang/String;I)Lcom/inveno/newpiflow/model/BizShowFlowNew;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v8

    .line 203
    .end local v7           #msg:Ljava/lang/String;
    .end local v9           #type:I
    :cond_0
    if-eqz v6, :cond_1

    .line 204
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 207
    :cond_1
    return-object v8

    .line 203
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 204
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 203
    :cond_2
    throw v1
.end method

.method public static getEnabledBaiyiList(Landroid/content/Context;I)Ljava/util/List;
    .locals 14
    .parameter "context"
    .parameter "baiyiPage"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/inveno/newpiflow/model/BizShowFlowNew;",
            ">;"
        }
    .end annotation

    .prologue
    .line 232
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 233
    .local v10, rst:Ljava/util/List;,"Ljava/util/List<Lcom/inveno/newpiflow/model/BizShowFlowNew;>;"
    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v1

    const/4 v1, 0x1

    const-string v4, "content"

    aput-object v4, v2, v1

    .line 234
    .local v2, projection:[Ljava/lang/String;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/16 v12, 0x3e8

    div-long/2addr v4, v12

    long-to-int v11, v4

    .line 235
    .local v11, time:I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 236
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "page="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " AND "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "type"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " AND "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "starttime"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "<="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " AND "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "endtime"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ">="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 241
    .local v3, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 243
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/inveno/newpiflow/biz/OpDataUtil;->URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 244
    if-eqz v6, :cond_2

    .line 245
    :cond_0
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 246
    const-string v1, "_id"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    .line 247
    .local v7, id:I
    const-string v1, "content"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 248
    .local v9, msg:Ljava/lang/String;
    const/4 v1, 0x0

    invoke-static {p0, v9, v1}, Lcom/inveno/newpiflow/tools/AdUtil;->initBizData(Landroid/content/Context;Ljava/lang/String;I)Lcom/inveno/newpiflow/model/BizShowFlowNew;

    move-result-object v8

    .line 249
    .local v8, info:Lcom/inveno/newpiflow/model/BizShowFlowNew;
    if-eqz v8, :cond_0

    iget-object v1, v8, Lcom/inveno/newpiflow/model/BizShowFlowNew;->mBizNewInfo:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, v8, Lcom/inveno/newpiflow/model/BizShowFlowNew;->mBizNewInfo:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, v8, Lcom/inveno/newpiflow/model/BizShowFlowNew;->mBizNewInfo:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, v8, Lcom/inveno/newpiflow/model/BizShowFlowNew;->mBizNewInfo:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;

    iget-object v1, v1, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;->info:Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;

    if-eqz v1, :cond_0

    .line 253
    iget-object v1, v8, Lcom/inveno/newpiflow/model/BizShowFlowNew;->mBizNewInfo:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;

    iget-object v1, v1, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;->info:Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v7}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v4}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->setId(Ljava/lang/String;)V

    .line 254
    invoke-interface {v10, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 259
    .end local v7           #id:I
    .end local v8           #info:Lcom/inveno/newpiflow/model/BizShowFlowNew;
    .end local v9           #msg:Ljava/lang/String;
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_1

    .line 260
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 259
    :cond_1
    throw v1

    :cond_2
    if-eqz v6, :cond_3

    .line 260
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 263
    :cond_3
    return-object v10
.end method

.method public static getIQiyiEntityById(Landroid/content/Context;Ljava/lang/String;)Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;
    .locals 9
    .parameter "context"
    .parameter "id"

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 211
    new-instance v0, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;

    move v3, v2

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;-><init>(Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;IIII)V

    .line 212
    .local v0, rst:Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;
    new-array v3, v6, [Ljava/lang/String;

    const-string v5, "uri"

    aput-object v5, v3, v2

    .line 214
    .local v3, projection:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 215
    .local v1, cr:Landroid/content/ContentResolver;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_id="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " AND "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "type"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 217
    .local v4, where:Ljava/lang/String;
    const/4 v7, 0x0

    .line 219
    .local v7, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v2, Lcom/inveno/newpiflow/biz/OpDataUtil;->URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 220
    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 221
    const-string v2, "uri"

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 222
    .local v8, uri:Ljava/lang/String;
    iput-object v8, v0, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;->uri:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 225
    .end local v8           #uri:Ljava/lang/String;
    :cond_0
    if-eqz v7, :cond_1

    .line 226
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 229
    :cond_1
    return-object v0

    .line 225
    :catchall_0
    move-exception v2

    if-eqz v7, :cond_2

    .line 226
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 225
    :cond_2
    throw v2
.end method

.method public static getTypeById(Landroid/content/Context;Ljava/lang/String;)I
    .locals 8
    .parameter "context"
    .parameter "id"

    .prologue
    .line 267
    const/4 v7, -0x1

    .line 268
    .local v7, type:I
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "type"

    aput-object v4, v2, v1

    .line 269
    .local v2, projection:[Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 270
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "_id="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 271
    .local v3, where:Ljava/lang/String;
    const/4 v6, 0x0

    .line 273
    .local v6, cursor:Landroid/database/Cursor;
    :try_start_0
    sget-object v1, Lcom/inveno/newpiflow/biz/OpDataUtil;->URI:Landroid/net/Uri;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 274
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 275
    const-string v1, "type"

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v7

    .line 278
    :cond_0
    if-eqz v6, :cond_1

    .line 279
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 282
    :cond_1
    return v7

    .line 278
    :catchall_0
    move-exception v1

    if-eqz v6, :cond_2

    .line 279
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 278
    :cond_2
    throw v1
.end method

.method public static insertBaiyi(Landroid/content/Context;Lcom/inveno/newpiflow/model/BizShowFlowNew;Ljava/lang/String;)V
    .locals 10
    .parameter "context"
    .parameter "bizShowFlowNew"
    .parameter "message"

    .prologue
    const/4 v9, 0x0

    .line 143
    if-eqz p1, :cond_0

    iget-object v5, p1, Lcom/inveno/newpiflow/model/BizShowFlowNew;->mBizNewInfo:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p1, Lcom/inveno/newpiflow/model/BizShowFlowNew;->mBizNewInfo:Ljava/util/List;

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_1

    .line 161
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    long-to-int v3, v5

    .line 147
    .local v3, time:I
    iget-object v5, p1, Lcom/inveno/newpiflow/model/BizShowFlowNew;->mBizNewInfo:Ljava/util/List;

    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;

    .line 148
    .local v1, info:Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;
    invoke-static {p2}, Lcom/inveno/newpiflow/biz/OpDataUtil;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 149
    .local v2, md5:Ljava/lang/String;
    invoke-static {p0, v2}, Lcom/inveno/newpiflow/biz/OpDataUtil;->countBaiyi(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_0

    iget v5, v1, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;->startTime:I

    if-gt v5, v3, :cond_0

    iget v5, v1, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;->endTime:I

    if-lt v5, v3, :cond_0

    .line 150
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 151
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 152
    .local v4, values:Landroid/content/ContentValues;
    const-string v5, "content"

    invoke-virtual {v4, v5, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 153
    const-string v5, "contentmd5"

    invoke-virtual {v4, v5, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 154
    const-string v5, "starttime"

    iget v6, v1, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;->startTime:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 155
    const-string v5, "endtime"

    iget v6, v1, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;->endTime:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 156
    const-string v5, "page"

    iget v6, v1, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;->page:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 157
    const-string v5, "page"

    iget v6, v1, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;->page:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 158
    const-string v5, "type"

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 159
    sget-object v5, Lcom/inveno/newpiflow/biz/OpDataUtil;->URI:Landroid/net/Uri;

    invoke-virtual {v0, v5, v4}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_0
.end method

.method public static insertIQIYI(Landroid/content/Context;Ljava/lang/String;)Lcom/inveno/newpiflow/model/BizShowFlowNew;
    .locals 6
    .parameter "context"
    .parameter "message"

    .prologue
    const/4 v5, 0x0

    .line 39
    const/4 v4, 0x1

    invoke-static {p0, p1, v4}, Lcom/inveno/newpiflow/tools/AdUtil;->initBizData(Landroid/content/Context;Ljava/lang/String;I)Lcom/inveno/newpiflow/model/BizShowFlowNew;

    move-result-object v0

    .line 40
    .local v0, bizShowFlowNew:Lcom/inveno/newpiflow/model/BizShowFlowNew;
    if-eqz v0, :cond_0

    iget-object v4, v0, Lcom/inveno/newpiflow/model/BizShowFlowNew;->mBizNewInfo:Ljava/util/List;

    if-eqz v4, :cond_0

    iget-object v4, v0, Lcom/inveno/newpiflow/model/BizShowFlowNew;->mBizNewInfo:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_0

    iget-object v4, v0, Lcom/inveno/newpiflow/model/BizShowFlowNew;->mBizNewInfo:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_2

    .line 44
    :cond_0
    const/4 v0, 0x0

    .line 55
    .end local v0           #bizShowFlowNew:Lcom/inveno/newpiflow/model/BizShowFlowNew;
    :cond_1
    return-object v0

    .line 46
    .restart local v0       #bizShowFlowNew:Lcom/inveno/newpiflow/model/BizShowFlowNew;
    :cond_2
    iget-object v4, v0, Lcom/inveno/newpiflow/model/BizShowFlowNew;->mBizNewInfo:Ljava/util/List;

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;

    iget v4, v4, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;->page:I

    invoke-static {p0, v4}, Lcom/inveno/newpiflow/biz/OpDataUtil;->updateIQIYIData(Landroid/content/Context;I)V

    .line 47
    iget-object v4, v0, Lcom/inveno/newpiflow/model/BizShowFlowNew;->mBizNewInfo:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 48
    .local v3, iter:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;>;"
    :cond_3
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 49
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;

    .line 50
    .local v2, info:Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;
    if-eqz v2, :cond_3

    iget-object v4, v2, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;->info:Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;

    if-eqz v4, :cond_3

    iget v4, v2, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;->page:I

    if-ltz v4, :cond_3

    .line 51
    invoke-static {p0, v2}, Lcom/inveno/newpiflow/biz/OpDataUtil;->insertIQIYIItem(Landroid/content/Context;Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;)Ljava/lang/String;

    move-result-object v1

    .line 52
    .local v1, id:Ljava/lang/String;
    iget-object v4, v2, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;->info:Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;

    invoke-virtual {v4, v1}, Lcom/inveno/flow/entity/model/showflow/ShowFlowNewinfo;->setId(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static insertIQIYIItem(Landroid/content/Context;Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;)Ljava/lang/String;
    .locals 6
    .parameter "context"
    .parameter "info"

    .prologue
    .line 59
    const/4 v1, 0x0

    .line 60
    .local v1, id:Ljava/lang/String;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 61
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v3, Landroid/content/ContentValues;

    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 62
    .local v3, values:Landroid/content/ContentValues;
    const-string v4, "page"

    iget v5, p1, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;->page:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 63
    const-string v4, "type"

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 64
    const-string v4, "action"

    iget-object v5, p1, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;->action:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string v4, "pkgname"

    iget-object v5, p1, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v4, "clsname"

    iget-object v5, p1, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;->clsName:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    const-string v4, "uri"

    iget-object v5, p1, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;->uri:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    const-string v4, "extra1"

    iget-object v5, p1, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;->extra1:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v4, "extra2"

    iget-object v5, p1, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;->extra2:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v4, "extra3"

    iget-object v5, p1, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;->extra3:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const-string v4, "intenttype"

    iget-object v5, p1, Lcom/inveno/newpiflow/model/BizShowFlowNewInfo;->intentType:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    sget-object v4, Lcom/inveno/newpiflow/biz/OpDataUtil;->URI:Landroid/net/Uri;

    invoke-virtual {v0, v4, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 73
    .local v2, uri:Landroid/net/Uri;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 74
    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v1

    .line 76
    :cond_0
    return-object v1
.end method

.method private static updateIQIYIData(Landroid/content/Context;I)V
    .locals 5
    .parameter "context"
    .parameter "page"

    .prologue
    .line 113
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 114
    .local v0, cr:Landroid/content/ContentResolver;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "page= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " AND "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "type"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 116
    .local v2, where:Ljava/lang/String;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 117
    .local v1, values:Landroid/content/ContentValues;
    const-string v3, "page"

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 118
    sget-object v3, Lcom/inveno/newpiflow/biz/OpDataUtil;->URI:Landroid/net/Uri;

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 119
    return-void
.end method
