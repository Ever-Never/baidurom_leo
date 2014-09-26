.class public Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity;
.super Landroid/app/Activity;
.source "SetLocationActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field public static final LOCATION_CHANGED_MSG:Ljava/lang/String; = "location_changed_message"

.field private static logger:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;


# instance fields
.field private cityCursorAdapter:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/CityCursorAdapter;

.field private mAutoLoc:Landroid/widget/ImageView;

.field private mBack:Landroid/widget/ImageButton;

.field private mCityList:Landroid/widget/GridView;

.field private mSearch:Landroid/widget/EditText;

.field private mSearchFail:Landroid/widget/TextView;

.field private mSearchList:Landroid/widget/ListView;

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

.field private popularListAdapter:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/PopularCityAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 41
    const-class v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;->getLogger(Ljava/lang/String;)Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    move-result-object v0

    sput-object v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity;->logger:Lcom/baidu/launcher/ui/widget/baidu/weather/utils/MyLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity;->popularCities:Ljava/util/List;

    return-void
.end method

.method private buildLocationOrCondition(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .parameter "columnName"
    .parameter "locations"

    .prologue
    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
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

    .line 140
    .local v4, location:Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 141
    const-string v5, " OR "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 143
    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    const-string v5, " like \'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    const-string v5, "\'"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 148
    .end local v4           #location:Ljava/lang/String;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method private loadPopularCities()V
    .locals 14

    .prologue
    .line 112
    iget-object v11, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity;->popularCities:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->clear()V

    .line 113
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f07000a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v9

    .line 115
    .local v9, locationNames:[Ljava/lang/String;
    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->getLocationColumnName()Ljava/lang/String;

    move-result-object v11

    invoke-direct {p0, v11, v9}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity;->buildLocationOrCondition(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 116
    .local v1, condition:Ljava/lang/String;
    invoke-static {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/DaoFactory;->getLocationDao(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/dao/ILocationDao;

    move-result-object v11

    invoke-interface {v11, v1}, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/ILocationDao;->getByCondition(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 118
    .local v3, contentValuess:Ljava/util/List;,"Ljava/util/List<Landroid/content/ContentValues;>;"
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 119
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

    .line 120
    .local v2, contentValues:Landroid/content/ContentValues;
    const-string v11, "locationCode"

    invoke-virtual {v2, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 121
    .local v6, locationCode:Ljava/lang/String;
    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->getLocationColumnName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v2, v11}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 122
    .local v8, locationName:Ljava/lang/String;
    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 124
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

    .line 125
    .restart local v8       #locationName:Ljava/lang/String;
    invoke-interface {v7, v8}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 126
    new-instance v10, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-direct {v10, v8, v11}, Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    .local v10, popularCity:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;
    iget-object v11, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity;->popularCities:Ljava/util/List;

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 124
    .end local v10           #popularCity:Lcom/baidu/launcher/ui/widget/baidu/weather/domain/City;
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 132
    .end local v8           #locationName:Ljava/lang/String;
    :cond_2
    new-instance v11, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/PopularCityAdapter;

    const/4 v12, 0x0

    iget-object v13, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity;->popularCities:Ljava/util/List;

    invoke-direct {v11, p0, v12, v13}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/PopularCityAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v11, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity;->popularListAdapter:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/PopularCityAdapter;

    .line 133
    iget-object v11, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity;->mCityList:Landroid/widget/GridView;

    iget-object v12, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity;->popularListAdapter:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/PopularCityAdapter;

    invoke-virtual {v11, v12}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 134
    return-void
.end method

.method private refreshAdapter(Ljava/lang/CharSequence;)V
    .locals 10
    .parameter "s"

    .prologue
    const/16 v2, 0x8

    const/4 v9, 0x0

    .line 171
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 172
    .local v8, searchName:Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity;->mCityList:Landroid/widget/GridView;

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity;->mSearchFail:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity;->mSearchList:Landroid/widget/ListView;

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->setVisibility(I)V

    .line 184
    const-string v6, ""

    .line 185
    .local v6, condition:Ljava/lang/String;
    const-string v7, ""

    .line 186
    .local v7, order:Ljava/lang/String;
    invoke-static {}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->isEnglish()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 187
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

    .line 201
    :goto_0
    invoke-static {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/DaoFactory;->getLocationDao(Landroid/content/Context;)Lcom/baidu/launcher/ui/widget/baidu/weather/dao/ILocationDao;

    move-result-object v0

    invoke-interface {v0, v6, v7}, Lcom/baidu/launcher/ui/widget/baidu/weather/dao/ILocationDao;->get(Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 203
    .local v3, cursor:Landroid/database/Cursor;
    if-eqz v3, :cond_3

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    if-lez v0, :cond_3

    .line 204
    invoke-virtual {p0, v3}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity;->startManagingCursor(Landroid/database/Cursor;)V

    .line 205
    new-instance v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/CityCursorAdapter;

    const v2, 0x7f030084

    new-array v4, v9, [Ljava/lang/String;

    new-array v5, v9, [I

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/CityCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity;->cityCursorAdapter:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/CityCursorAdapter;

    .line 208
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity;->mSearchList:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity;->cityCursorAdapter:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/CityCursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 210
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity;->mSearchList:Landroid/widget/ListView;

    invoke-virtual {v0, v9}, Landroid/widget/ListView;->setVisibility(I)V

    .line 216
    .end local v3           #cursor:Landroid/database/Cursor;
    .end local v6           #condition:Ljava/lang/String;
    .end local v7           #order:Ljava/lang/String;
    :goto_1
    return-void

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity;->mCityList:Landroid/widget/GridView;

    invoke-virtual {v0, v9}, Landroid/widget/GridView;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity;->mSearchList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity;->mSearchFail:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 190
    .restart local v6       #condition:Ljava/lang/String;
    .restart local v7       #order:Ljava/lang/String;
    :cond_1
    invoke-static {v8}, Lcom/baidu/launcher/ui/widget/baidu/weather/utils/Utils;->isAlpha(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 191
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

    .line 199
    :goto_2
    const-string v7, "locationNamePinYin ASC"

    goto :goto_0

    .line 196
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

    .line 212
    .restart local v3       #cursor:Landroid/database/Cursor;
    :cond_3
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity;->mSearchList:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    .line 213
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity;->mSearchFail:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method private sendLocationUpdateBroadcast(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .parameter "name"
    .parameter "code"

    .prologue
    .line 232
    new-instance v0, Landroid/content/Intent;

    const-string v2, "location_changed_message"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 233
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "com.baidu.home2"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 234
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 235
    .local v1, value:Landroid/os/Bundle;
    const-string v2, "location_code"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    const-string v2, "location_name"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    const-string v2, "location_update"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 238
    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity;->sendBroadcast(Landroid/content/Intent;)V

    .line 239
    invoke-virtual {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity;->finish()V

    .line 241
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 155
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 162
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 105
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 106
    .local v0, intent:Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity;->setResult(ILandroid/content/Intent;)V

    .line 107
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 108
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .parameter "savedInstanceState"

    .prologue
    .line 56
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    sget-boolean v0, Lcom/baidu/launcher/app/LauncherApplication;->onlyPortait:Z

    if-eqz v0, :cond_0

    .line 58
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity;->setRequestedOrientation(I)V

    .line 60
    :cond_0
    const v0, 0x7f0300d2

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity;->setContentView(I)V

    .line 61
    const v0, 0x7f080211

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity;->mCityList:Landroid/widget/GridView;

    .line 62
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity;->mCityList:Landroid/widget/GridView;

    invoke-virtual {v0, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 63
    const v0, 0x7f08020f

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity;->mSearch:Landroid/widget/EditText;

    .line 64
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity;->mSearch:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 65
    const v0, 0x7f080212

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity;->mSearchList:Landroid/widget/ListView;

    .line 66
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity;->mSearchList:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 67
    const v0, 0x7f080213

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity;->mSearchFail:Landroid/widget/TextView;

    .line 68
    const v0, 0x7f0802ba

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity;->mAutoLoc:Landroid/widget/ImageView;

    .line 69
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity;->mAutoLoc:Landroid/widget/ImageView;

    new-instance v1, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity$1;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity$1;-><init>(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 85
    const v0, 0x7f0802bb

    invoke-virtual {p0, v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity;->mBack:Landroid/widget/ImageButton;

    .line 86
    iget-object v0, p0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity;->mBack:Landroid/widget/ImageButton;

    new-instance v1, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity$2;

    invoke-direct {v1, p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity$2;-><init>(Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
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
    .line 220
    .local p1, arg0:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ViewHolder;

    .line 221
    .local v0, holder:Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ViewHolder;
    if-nez v0, :cond_0

    .line 229
    :goto_0
    return-void

    .line 225
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

    .line 227
    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ViewHolder;->getLocationName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/ViewHolder;->getLocationCode()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity;->sendLocationUpdateBroadcast(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 99
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 100
    invoke-direct {p0}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity;->loadPopularCities()V

    .line 101
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 167
    invoke-direct {p0, p1}, Lcom/baidu/launcher/ui/widget/baidu/weather/ui/SetLocationActivity;->refreshAdapter(Ljava/lang/CharSequence;)V

    .line 168
    return-void
.end method
