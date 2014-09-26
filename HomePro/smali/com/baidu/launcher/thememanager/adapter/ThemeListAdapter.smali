.class public Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;
.super Landroid/support/v4/widget/CursorAdapter;
.source "ThemeListAdapter.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ThemeListAdapter"


# instance fields
.field private itemviews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public mBtnEnable:Z

.field private mComponent:Ljava/lang/String;

.field private mComponentType:I

.field public mCurrentTheme:Ljava/lang/String;

.field private mListener_LongClick_image:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View$OnLongClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private mListener_btn:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field

.field private mListener_image:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View$OnClickListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/database/Cursor;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;Landroid/view/View$OnLongClickListener;)V
    .locals 3
    .parameter "aContext"
    .parameter "aCursor"
    .parameter "aType"
    .parameter "aListener_btn"
    .parameter "aListener_image"
    .parameter "aLongClick_Listener_image"

    .prologue
    const/4 v2, -0x1

    .line 64
    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v1}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;Z)V

    .line 35
    iput v2, p0, Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;->mComponentType:I

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;->itemviews:Ljava/util/ArrayList;

    .line 50
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;->mBtnEnable:Z

    .line 66
    iput p3, p0, Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;->mComponentType:I

    .line 67
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;->mListener_btn:Ljava/lang/ref/WeakReference;

    .line 68
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;->mListener_image:Ljava/lang/ref/WeakReference;

    .line 69
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;->mListener_LongClick_image:Ljava/lang/ref/WeakReference;

    .line 72
    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 73
    .local v0, prefs:Landroid/content/SharedPreferences;
    iget v1, p0, Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;->mComponentType:I

    if-eq v1, v2, :cond_0

    .line 74
    sget-object v1, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->sComponentEntry:[Ljava/lang/String;

    iget v2, p0, Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;->mComponentType:I

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;->mComponent:Ljava/lang/String;

    .line 75
    sget-object v1, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->PREFERENCE_KEYS:[Ljava/lang/String;

    iget v2, p0, Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;->mComponentType:I

    aget-object v1, v1, v2

    const-string v2, "\u9ed8\u8ba4V1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;->mCurrentTheme:Ljava/lang/String;

    .line 81
    :goto_0
    return-void

    .line 78
    :cond_0
    const-string v1, "theme_default"

    const-string v2, "\u9ed8\u8ba4V1"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;->mCurrentTheme:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .locals 22
    .parameter "view"
    .parameter "context"
    .parameter "cursor"

    .prologue
    .line 131
    const v3, 0x7f0801f3

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/widget/ImageView;

    .line 132
    .local v16, imageview_thumbnail:Landroid/widget/ImageView;
    const v3, 0x7f0801f7

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/Button;

    .line 133
    .local v14, button:Landroid/widget/Button;
    const v3, 0x7f0801f6

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/ImageView;

    .line 134
    .local v15, imageview_mark:Landroid/widget/ImageView;
    const v3, 0x7f0801f5

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v18

    check-cast v18, Landroid/widget/TextView;

    .line 136
    .local v18, textview_title:Landroid/widget/TextView;
    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;->mComponentType:I

    const/16 v20, -0x1

    move/from16 v0, v20

    if-eq v3, v0, :cond_0

    .line 137
    const/16 v3, 0x8

    invoke-virtual {v14, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 143
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v20, 0x7f0c00d9

    move/from16 v0, v20

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v14, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 145
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;->mComponent:Ljava/lang/String;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;->mComponent:Ljava/lang/String;

    sget-object v20, Lcom/baidu/launcher/thememanager/util/ThemeConstants;->sComponentEntry:[Ljava/lang/String;

    const/16 v21, 0x6

    aget-object v20, v20, v21

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 224
    :goto_1
    return-void

    .line 139
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;->mBtnEnable:Z

    invoke-virtual {v14, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 140
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;->mBtnEnable:Z

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto :goto_0

    .line 148
    :cond_1
    const-string v7, ""

    .line 149
    .local v7, title:Ljava/lang/String;
    const-string v6, ""

    .line 150
    .local v6, path:Ljava/lang/String;
    const-string v5, ""

    .line 151
    .local v5, key:Ljava/lang/String;
    const/4 v10, 0x2

    .line 152
    .local v10, type:I
    const/4 v4, -0x1

    .line 153
    .local v4, id:I
    const-string v8, ""

    .line 154
    .local v8, preview_path:Ljava/lang/String;
    const/4 v9, 0x0

    .line 156
    .local v9, theme_level:I
    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;->mComponentType:I

    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v3, v0, :cond_6

    .line 157
    const-string v3, "title"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 158
    const-string v3, "path"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 159
    const-string v3, "key"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 160
    const-string v3, "_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 162
    const-string v3, "thumbnail"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 163
    .local v19, thumbnail:I
    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 165
    const-string v3, "theme_level"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 167
    const-string v3, "theme_type"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 182
    :goto_2
    invoke-virtual/range {v16 .. v16}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v13

    check-cast v13, Landroid/graphics/drawable/BitmapDrawable;

    .line 183
    .local v13, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual/range {v16 .. v16}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v17

    .line 184
    .local v17, obj:Ljava/lang/Object;
    if-eqz v17, :cond_2

    move-object/from16 v0, v17

    instance-of v3, v0, Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;

    if-eqz v3, :cond_2

    .line 185
    check-cast v17, Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;

    .end local v17           #obj:Ljava/lang/Object;
    move-object/from16 v0, v17

    iget-object v11, v0, Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;->mPreview_path:Ljava/lang/String;

    .line 187
    .local v11, _key:Ljava/lang/String;
    invoke-static {v13, v11}, Lcom/baidu/launcher/thememanager/util/Utils;->releaseBitmap(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;)V

    .line 190
    .end local v11           #_key:Ljava/lang/String;
    :cond_2
    new-instance v2, Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;->mComponentType:I

    invoke-direct/range {v2 .. v10}, Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 191
    .local v2, ti:Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;
    invoke-virtual {v14, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 192
    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 194
    move-object/from16 v0, v18

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    const/4 v12, 0x0

    .line 197
    .local v12, bitmap:Landroid/graphics/Bitmap;
    if-eqz v6, :cond_3

    .line 198
    invoke-static {}, Lcom/baidu/launcher/thememanager/util/BitmapCache;->getInstance()Lcom/baidu/launcher/thememanager/util/BitmapCache;

    move-result-object v3

    invoke-virtual {v3, v8}, Lcom/baidu/launcher/thememanager/util/BitmapCache;->get(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v12

    .line 201
    :cond_3
    if-eqz v12, :cond_4

    invoke-virtual {v12}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 202
    :cond_4
    invoke-static {}, Lcom/baidu/launcher/thememanager/util/BitmapCache;->getInstance()Lcom/baidu/launcher/thememanager/util/BitmapCache;

    move-result-object v3

    const/16 v20, 0x0

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v3, v0, v1}, Lcom/baidu/launcher/thememanager/util/BitmapCache;->getDefaultBitmap(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 205
    invoke-virtual/range {p2 .. p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/baidu/launcher/thememanager/util/ImageLoader;->getInstance(Landroid/content/Context;)Lcom/baidu/launcher/thememanager/util/ImageLoader;

    move-result-object v3

    move-object/from16 v0, v16

    invoke-virtual {v3, v8, v5, v0}, Lcom/baidu/launcher/thememanager/util/ImageLoader;->loadLocalSmall(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 216
    :goto_3
    move-object/from16 v0, p0

    iget v3, v0, Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;->mComponentType:I

    const/16 v20, -0x1

    move/from16 v0, v20

    if-ne v3, v0, :cond_8

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;->mCurrentTheme:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;->mCurrentTheme:Ljava/lang/String;

    const-string v20, "\u9ed8\u8ba4V1"

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    const/4 v3, 0x1

    if-ne v9, v3, :cond_8

    .line 218
    :cond_5
    const v3, 0x7f02024f

    invoke-virtual {v15, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 219
    const/4 v3, 0x0

    invoke-virtual {v15, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 169
    .end local v2           #ti:Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;
    .end local v12           #bitmap:Landroid/graphics/Bitmap;
    .end local v13           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v19           #thumbnail:I
    :cond_6
    const-string v3, "title"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 170
    const-string v3, "path"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 171
    const-string v3, "key"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 172
    const-string v3, "theme_id"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    .line 174
    const-string v3, "preview"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v19

    .line 175
    .restart local v19       #thumbnail:I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v20, Ljava/io/File;->separator:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 177
    const-string v3, "theme_level"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    .line 178
    const-string v3, "theme_type"

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    goto/16 :goto_2

    .line 209
    .restart local v2       #ti:Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;
    .restart local v12       #bitmap:Landroid/graphics/Bitmap;
    .restart local v13       #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    :cond_7
    move-object/from16 v0, v16

    invoke-virtual {v0, v12}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 210
    const/4 v12, 0x0

    goto/16 :goto_3

    .line 221
    :cond_8
    const/16 v3, 0x8

    invoke-virtual {v15, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method public clean()V
    .locals 7

    .prologue
    .line 231
    iget-object v6, p0, Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;->itemviews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    .line 232
    .local v5, view:Landroid/view/View;
    const v6, 0x7f0801f3

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 234
    .local v3, imageviw_thumbnail:Landroid/widget/ImageView;
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    .line 236
    .local v1, bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    invoke-virtual {v3}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v4

    .line 237
    .local v4, obj:Ljava/lang/Object;
    if-eqz v4, :cond_0

    instance-of v6, v4, Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;

    if-eqz v6, :cond_0

    .line 238
    check-cast v4, Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;

    .end local v4           #obj:Ljava/lang/Object;
    iget-object v0, v4, Lcom/baidu/launcher/thememanager/model/ThemeLocalItem;->mPreview_path:Ljava/lang/String;

    .line 240
    .local v0, _key:Ljava/lang/String;
    invoke-static {v1, v0}, Lcom/baidu/launcher/thememanager/util/Utils;->releaseBitmap(Landroid/graphics/drawable/BitmapDrawable;Ljava/lang/String;)V

    goto :goto_0

    .line 244
    .end local v0           #_key:Ljava/lang/String;
    .end local v1           #bitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;
    .end local v3           #imageviw_thumbnail:Landroid/widget/ImageView;
    .end local v5           #view:Landroid/view/View;
    :cond_1
    iget-object v6, p0, Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;->itemviews:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 245
    return-void
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
    .parameter "context"
    .parameter "cursor"
    .parameter "parent"

    .prologue
    .line 85
    const-string v10, "layout_inflater"

    move-object/from16 v0, p1

    invoke-virtual {v0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/LayoutInflater;

    .line 87
    .local v6, mInflater:Landroid/view/LayoutInflater;
    const v10, 0x7f03009c

    const/4 v11, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v6, v10, v0, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 89
    .local v8, v:Landroid/view/View;
    const v10, 0x7f0801f1

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/FrameLayout;

    .line 90
    .local v5, item_layout:Landroid/widget/FrameLayout;
    const v10, 0x7f0801f2

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    .line 92
    .local v3, image_layout:Landroid/widget/FrameLayout;
    const v10, 0x7f0801f3

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 94
    .local v4, imageviw_thumbnail:Landroid/widget/ImageView;
    const v10, 0x7f0801f7

    invoke-virtual {v8, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 96
    .local v1, button:Landroid/widget/Button;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v7, v10, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 98
    .local v7, scale:F
    invoke-static/range {p1 .. p1}, Lcom/baidu/launcher/thememanager/util/Utils;->getScreenWidth(Landroid/content/Context;)I

    move-result v10

    int-to-double v10, v10

    const/high16 v12, 0x41a0

    mul-float/2addr v12, v7

    float-to-double v12, v12

    const-wide/high16 v14, 0x3fe0

    add-double/2addr v12, v14

    sub-double/2addr v10, v12

    const-wide/high16 v12, 0x4008

    div-double/2addr v10, v12

    double-to-int v9, v10

    .line 99
    .local v9, w:I
    int-to-float v10, v9

    invoke-static/range {p1 .. p1}, Lcom/baidu/launcher/thememanager/util/Utils;->getScreenRatio(Landroid/content/Context;)F

    move-result v11

    mul-float/2addr v10, v11

    float-to-int v2, v10

    .line 102
    .local v2, h:I
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    iput v2, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 104
    move-object/from16 v0, p0

    iget v10, v0, Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;->mComponentType:I

    const/4 v11, -0x1

    if-eq v10, v11, :cond_3

    .line 105
    const/16 v10, 0x8

    invoke-virtual {v1, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 113
    :goto_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;->mListener_image:Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_0

    .line 114
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;->mListener_image:Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 117
    :cond_0
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;->mListener_btn:Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 118
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;->mListener_btn:Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v10}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;->mListener_LongClick_image:Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    if-eqz v10, :cond_2

    .line 122
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;->mListener_LongClick_image:Ljava/lang/ref/WeakReference;

    invoke-virtual {v10}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/View$OnLongClickListener;

    invoke-virtual {v4, v10}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 125
    :cond_2
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/baidu/launcher/thememanager/adapter/ThemeListAdapter;->itemviews:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 126
    return-object v8

    .line 108
    :cond_3
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0b0071

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v11

    add-int/2addr v11, v2

    iput v11, v10, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_0
.end method
