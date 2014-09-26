.class public Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;
.super Landroid/widget/FrameLayout;
.source "SetLocationLayer.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field public static final LOCATION_CHANGED_MSG:Ljava/lang/String; = "location_changed_message"


# instance fields
.field private city:Ljava/lang/String;

.field private cityCursorAdapter:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/TransparentCityCursorAdapter;

.field private city_relativeLayout:Landroid/widget/RelativeLayout;

.field private fl_setlocation:Landroid/widget/FrameLayout;

.field private imm:Landroid/view/inputmethod/InputMethodManager;

.field private iv_location:Landroid/widget/ImageView;

.field private ll_setlocation:Landroid/widget/LinearLayout;

.field private mAutoLoc:Landroid/widget/ImageView;

.field private mBack:Landroid/widget/ImageButton;

.field private mCityList:Landroid/widget/GridView;

.field private mContext:Landroid/content/Context;

.field private mRectTemp:Landroid/graphics/Rect;

.field private mSearch:Landroid/widget/EditText;

.field private mSearchFail:Landroid/widget/TextView;

.field private mSearchList:Landroid/widget/ListView;

.field private mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

.field private popularCities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;",
            ">;"
        }
    .end annotation
.end field

.field private popularListAdapter:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/TransparentPopularCityAdapter;

.field private rect:Landroid/graphics/Rect;

.field private tv_city:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 91
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->popularCities:Ljava/util/List;

    .line 76
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->mRectTemp:Landroid/graphics/Rect;

    .line 92
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->mContext:Landroid/content/Context;

    .line 94
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 85
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->popularCities:Ljava/util/List;

    .line 76
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->mRectTemp:Landroid/graphics/Rect;

    .line 87
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->mContext:Landroid/content/Context;

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->popularCities:Ljava/util/List;

    .line 76
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->mRectTemp:Landroid/graphics/Rect;

    .line 81
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->mContext:Landroid/content/Context;

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->closeImm()V

    return-void
.end method

.method static synthetic access$100(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->sendLocationUpdateBroadcast(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;)Lcom/baidu/launcher/ui/logic/ViewManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    return-object v0
.end method

.method private buildLocationOrCondition(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "columnName"
    .parameter "locations"

    .prologue
    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    .local v1, conditionBuilder:Ljava/lang/StringBuilder;
    move-object v0, p2

    .local v0, arr$:[Ljava/lang/String;
    array-length v3, v0

    .local v3, len$:I
    const/4 v2, 0x0

    .local v2, i$:I
    :goto_0
    if-ge v2, v3, :cond_1

    aget-object v4, v0, v2

    .line 214
    .local v4, location:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 215
    const-string v5, " OR "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    const-string v5, " like \'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    const-string v5, "\'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 222
    .end local v4           #location:Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private closeImm()V
    .locals 3

    .prologue
    .line 330
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->imm:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->imm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 331
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->imm:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->mSearch:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 333
    :cond_0
    return-void
.end method

.method private loadPopularCities()V
    .locals 15

    .prologue
    .line 183
    iget-object v11, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->popularCities:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 184
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f07000a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 186
    .local v9, locationNames:[Ljava/lang/String;
    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->getLocationColumnName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11, v9}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->buildLocationOrCondition(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 188
    .local v1, condition:Ljava/lang/String;
    iget-object v11, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->mContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/DaoFactory;->getLocationDao(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/dao/ILocationDao;

    move-result-object v11

    invoke-interface {v11, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/ILocationDao;->getByCondition(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 190
    .local v3, contentValuess:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 191
    .local v7, locationMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ContentValues;

    .line 192
    .local v2, contentValues:Landroid/content/ContentValues;
    const-string v11, "locationCode"

    invoke-virtual {v2, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 194
    .local v6, locationCode:Ljava/lang/String;
    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->getLocationColumnName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 196
    .local v8, locationName:Ljava/lang/String;
    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 198
    .end local v2           #contentValues:Landroid/content/ContentValues;
    .end local v6           #locationCode:Ljava/lang/String;
    .end local v8           #locationName:Ljava/lang/String;
    :cond_0
    move-object v0, v9

    .local v0, arr$:[Ljava/lang/String;
    array-length v5, v0

    .local v5, len$:I
    const/4 v4, 0x0

    .local v4, i$:I
    :goto_1
    if-ge v4, v5, :cond_2

    aget-object v8, v0, v4

    .line 199
    .restart local v8       #locationName:Ljava/lang/String;
    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 200
    new-instance v10, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-direct {v10, v8, v11}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .local v10, popularCity:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;
    iget-object v11, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->popularCities:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    .end local v10           #popularCity:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 206
    .end local v8           #locationName:Ljava/lang/String;
    :cond_2
    new-instance v11, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/TransparentPopularCityAdapter;

    iget-object v12, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    iget-object v14, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->popularCities:Ljava/util/List;

    invoke-direct {v11, v12, v13, v14}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/TransparentPopularCityAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v11, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->popularListAdapter:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/TransparentPopularCityAdapter;

    .line 207
    iget-object v11, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->mCityList:Landroid/widget/GridView;

    iget-object v12, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->popularListAdapter:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/TransparentPopularCityAdapter;

    invoke-virtual {v11, v12}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 208
    return-void
.end method

.method private refreshAdapter(Ljava/lang/CharSequence;)V
    .locals 10
    .parameter "s"

    .prologue
    const/16 v2, 0x8

    const/4 v9, 0x0

    .line 245
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 246
    .local v8, searchName:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 247
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->mCityList:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->mSearchFail:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->mSearchList:Landroid/widget/ListView;

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->setVisibility(I)V

    .line 250
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->city_relativeLayout:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 258
    const-string v6, ""

    .line 259
    .local v6, condition:Ljava/lang/String;
    const-string v7, ""

    .line 260
    .local v7, order:Ljava/lang/String;
    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->isEnglish()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "locationNameEn LIKE \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 275
    :goto_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/DaoFactory;->getLocationDao(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/dao/ILocationDao;

    move-result-object v0

    invoke-interface {v0, v6, v7}, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/ILocationDao;->get(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 277
    .local v3, cursor:Landroid/database/Cursor;
    if-eqz v3, :cond_3

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 279
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/TransparentCityCursorAdapter;

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->mContext:Landroid/content/Context;

    const v2, 0x7f0300a5

    new-array v4, v9, [Ljava/lang/String;

    new-array v5, v9, [I

    invoke-direct/range {v0 .. v5}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/TransparentCityCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->cityCursorAdapter:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/TransparentCityCursorAdapter;

    .line 281
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->mSearchList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->cityCursorAdapter:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/TransparentCityCursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 283
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->mSearchList:Landroid/widget/ListView;

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->setVisibility(I)V

    .line 289
    .end local v3           #cursor:Landroid/database/Cursor;
    .end local v6           #condition:Ljava/lang/String;
    .end local v7           #order:Ljava/lang/String;
    :goto_1
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->mCityList:Landroid/widget/GridView;

    invoke-virtual {v0, v9}, Landroid/widget/GridView;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->mSearchList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->mSearchFail:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->city_relativeLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v9}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_1

    .line 264
    .restart local v6       #condition:Ljava/lang/String;
    .restart local v7       #order:Ljava/lang/String;
    :cond_1
    invoke-static {v8}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->isAlpha(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 265
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "locationNamePinYin LIKE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " OR "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "locationNameInitials"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " LIKE \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 273
    :goto_2
    const-string v7, "locationNamePinYin ASC"

    goto/16 :goto_0

    .line 270
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "locationName LIKE \'%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 285
    .restart local v3       #cursor:Landroid/database/Cursor;
    :cond_3
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->mSearchList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 286
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->mSearchFail:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private sendLocationUpdateBroadcast(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "name"
    .parameter "code"

    .prologue
    .line 172
    new-instance v0, Landroid/content/Intent;

    const-string v2, "location_changed_message"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 173
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.baidu.home2"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 174
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 175
    .local v1, value:Landroid/os/Bundle;
    const-string v2, "location_code"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    const-string v2, "location_name"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    const-string v2, "location_update"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 178
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 179
    iget-object v2, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v2}, Lcom/baidu/launcher/ui/logic/ViewManager;->closeSetLocationLayer()V

    .line 180
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 229
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 236
    return-void
.end method

.method public closeSetLocationLayer()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->closeWeatherAnim()V

    .line 161
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 99
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 100
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->mContext:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->imm:Landroid/view/inputmethod/InputMethodManager;

    .line 101
    const v0, 0x7f080209

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->fl_setlocation:Landroid/widget/FrameLayout;

    .line 102
    const v0, 0x7f08020a

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->ll_setlocation:Landroid/widget/LinearLayout;

    .line 103
    const v0, 0x7f080211

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->mCityList:Landroid/widget/GridView;

    .line 104
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->mCityList:Landroid/widget/GridView;

    new-instance v1, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer$1;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer$1;-><init>(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 121
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->loadPopularCities()V

    .line 122
    const v0, 0x7f08020f

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->mSearch:Landroid/widget/EditText;

    .line 123
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->mSearch:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 124
    const v0, 0x7f080212

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->mSearchList:Landroid/widget/ListView;

    .line 125
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->mSearchList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 126
    const v0, 0x7f080213

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->mSearchFail:Landroid/widget/TextView;

    .line 127
    const v0, 0x7f08020b

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->city_relativeLayout:Landroid/widget/RelativeLayout;

    .line 128
    const v0, 0x7f08020d

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->iv_location:Landroid/widget/ImageView;

    .line 129
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->iv_location:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer$2;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer$2;-><init>(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    const v0, 0x7f08020c

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->tv_city:Landroid/widget/TextView;

    .line 149
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .parameter
    .parameter "arg1"
    .parameter "arg2"
    .parameter "arg3"
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
    .line 292
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ViewHolder;

    .line 293
    .local v0, holder:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ViewHolder;
    if-nez v0, :cond_0

    .line 303
    :goto_0
    return-void

    .line 297
    :cond_0
    const-string v1, "###"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onItemClick,locationName="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ViewHolder;->getLocationName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",code="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ViewHolder;->getLocationCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/baidu/launcher/utils/LogEx;->debugInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->closeImm()V

    .line 301
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ViewHolder;->getLocationName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ViewHolder;->getLocationCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->sendLocationUpdateBroadcast(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 241
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->refreshAdapter(Ljava/lang/CharSequence;)V

    .line 242
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    const/4 v4, 0x1

    .line 307
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->getVisibility()I

    move-result v5

    if-eqz v5, :cond_1

    .line 308
    const/4 v4, 0x0

    .line 327
    :cond_0
    :goto_0
    return v4

    .line 310
    :cond_1
    if-eqz p0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    if-ne v5, v4, :cond_0

    .line 311
    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->ll_setlocation:Landroid/widget/LinearLayout;

    .line 312
    .local v1, v:Landroid/view/View;
    if-eqz v1, :cond_0

    .line 313
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    float-to-int v2, v5

    .line 314
    .local v2, x:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v3, v5

    .line 315
    .local v3, y:I
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->mRectTemp:Landroid/graphics/Rect;

    .line 316
    .local v0, r:Landroid/graphics/Rect;
    invoke-virtual {v1, v0}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 317
    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v5

    if-nez v5, :cond_0

    .line 318
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->getVisibility()I

    move-result v5

    if-nez v5, :cond_0

    .line 319
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    if-eqz v5, :cond_0

    .line 320
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->closeImm()V

    .line 321
    iget-object v5, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v5}, Lcom/baidu/launcher/ui/logic/ViewManager;->closeSetLocationLayer()V

    goto :goto_0
.end method

.method public openSetLocationLayer()V
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->setVisibility(I)V

    .line 157
    return-void
.end method

.method public openSetLocationLayer(Ljava/lang/String;)V
    .locals 1
    .parameter "city"

    .prologue
    .line 164
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/logic/ViewManager;->startWeatherAnim()V

    .line 166
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->city:Ljava/lang/String;

    .line 167
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->tv_city:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 168
    return-void
.end method

.method public setViewManager(Lcom/baidu/launcher/ui/logic/ViewManager;)V
    .locals 0
    .parameter "viewManager"

    .prologue
    .line 152
    iput-object p1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationLayer;->mViewManager:Lcom/baidu/launcher/ui/logic/ViewManager;

    .line 153
    return-void
.end method
