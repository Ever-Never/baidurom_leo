.class Lcom/baidu/launcher/thememanager/service/ThemeProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "ThemeProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/launcher/thememanager/service/ThemeProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DatabaseHelper"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    .line 139
    const-string v0, "theme.db"

    const/4 v1, 0x0

    const/16 v2, 0xb

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 140
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .parameter "db"

    .prologue
    .line 145
    const-string v0, "ThemeProvider"

    const-string v1, "onCreate the db is created***************************"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    const-string v0, "CREATE TABLE IF NOT EXISTS theme ( _id INTEGER PRIMARY KEY,title TEXT,path TEXT,uiVersion TEXT,version TEXT,author TEXT,key TEXT,designer TEXT,themesize INTEGER,themeid INTEGER,datemodify INTEGER,theme_level INTEGER,theme_type INTEGER,thumbnail TEXT,UNIQUE (path));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 147
    const-string v0, "CREATE TABLE IF NOT EXISTS theme_content ( _id INTEGER PRIMARY KEY,theme_id INTEGER,title TEXT,path TEXT,key TEXT,component TEXT,preview TEXT,theme_level INTEGER,theme_type INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 148
    const-string v0, "CREATE TABLE IF NOT EXISTS wallpaper (_id INTEGER PRIMARY KEY,item_id  INTEGER,item_type  INTEGER,category_name TEXT,item_name TEXT,item_author TEXT,item_thumbnail TEXT,item_original TEXT,item_path TEXT,item_size INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 2
    .parameter "db"
    .parameter "oldVersion"
    .parameter "newVersion"

    .prologue
    .line 163
    const-string v0, "ThemeProvider"

    const-string v1, "onUpgrade theme.db is update"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/16 v0, 0xb

    if-ge p2, v0, :cond_0

    .line 166
    const-string v0, "DROP TABLE IF EXISTS theme"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 167
    const-string v0, "DROP TABLE IF EXISTS theme_content"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 168
    const-string v0, "DROP TRIGGER IF EXISTS update_theme_new"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 169
    const-string v0, "DROP TABLE IF EXISTS wallpaper"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 171
    const-string v0, "CREATE TABLE IF NOT EXISTS theme ( _id INTEGER PRIMARY KEY,title TEXT,path TEXT,uiVersion TEXT,version TEXT,author TEXT,key TEXT,designer TEXT,themesize INTEGER,themeid INTEGER,datemodify INTEGER,theme_level INTEGER,theme_type INTEGER,thumbnail TEXT,UNIQUE (path));"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 172
    const-string v0, "CREATE TABLE IF NOT EXISTS theme_content ( _id INTEGER PRIMARY KEY,theme_id INTEGER,title TEXT,path TEXT,key TEXT,component TEXT,preview TEXT,theme_level INTEGER,theme_type INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 173
    const-string v0, "CREATE TABLE IF NOT EXISTS wallpaper (_id INTEGER PRIMARY KEY,item_id  INTEGER,item_type  INTEGER,category_name TEXT,item_name TEXT,item_author TEXT,item_thumbnail TEXT,item_original TEXT,item_path TEXT,item_size INTEGER);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 175
    :cond_0
    return-void
.end method
