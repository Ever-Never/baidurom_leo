.class public final Lcom/baidu/yi/sdk/cloudstorage/provider/TableDefine;
.super Ljava/lang/Object;
.source "TableDefine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/yi/sdk/cloudstorage/provider/TableDefine$AuthInfoColumns;,
        Lcom/baidu/yi/sdk/cloudstorage/provider/TableDefine$TaskColumns;
    }
.end annotation


# static fields
.field public static final AUTHORITH:Ljava/lang/String; = ".cloudstorage.provider"

.field public static AUTH_PROJECTION:[Ljava/lang/String; = null

.field public static final DB_NAME:Ljava/lang/String; = "cloudstorage.db"

.field public static final DB_TABLE_AUTHINFO:Ljava/lang/String; = "authinfo"

.field public static final DB_TABLE_TASKLIST:Ljava/lang/String; = "tasklist"

.field public static final DB_TABLE_TASK_HISTORY:Ljava/lang/String; = "taskhistory"

.field public static final DB_VERSION:I = 0x2

.field public static final SQL_CREATE_TABLE_AUTHINFO:Ljava/lang/String; = "CREATE TABLE authinfo(_id INTEGER PRIMARY KEY AUTOINCREMENT,package_name TEXT, app_id TEXT, api_key TEXT, root_dir TEXT, token TEXT, cloud_provider TEXT, secret_key TEXT);"

.field public static final SQL_CREATE_TABLE_TASKLIST:Ljava/lang/String; = "CREATE TABLE tasklist(_id INTEGER PRIMARY KEY AUTOINCREMENT,uri TEXT, file_name TEXT, mimetype TEXT, destination INTEGER, description TEXT, allowed_network INTEGER, visibility INTEGER, control INTEGER, status INTEGER, create_time BIGINT, lastmod BIGINT, total_bytes INTEGER, current_bytes INTEGER, num_failed INTEGER, retry_after INTEGER, notify_status INTEGER, error_code INTEGER, action INTEGER, cloud_provider TEXT, package_name TEXT, md5 TEXT, title TEXT, relative_path TEXT, task_id TEXT, local_path TEXT);"

.field public static final SQL_CREATE_TABLE_TASK_HISTORY:Ljava/lang/String; = "CREATE TABLE taskhistory(_id INTEGER PRIMARY KEY AUTOINCREMENT,uri TEXT, file_name TEXT, mimetype TEXT, destination INTEGER, description TEXT, allowed_network INTEGER, visibility INTEGER, control INTEGER, status INTEGER, create_time BIGINT, lastmod BIGINT, total_bytes INTEGER, current_bytes INTEGER, num_failed INTEGER, retry_after INTEGER, notify_status INTEGER, error_code INTEGER, action INTEGER, cloud_provider TEXT, package_name TEXT, md5 TEXT, title TEXT, relative_path TEXT, task_id TEXT, local_path TEXT);"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 190
    const/16 v0, 0x8

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 191
    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 192
    const-string v2, "api_key"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 193
    const-string v2, "app_id"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 194
    const-string v2, "cloud_provider"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 195
    const-string v2, "package_name"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 196
    const-string v2, "root_dir"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 197
    const-string v2, "secret_key"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 198
    const-string v2, "token"

    aput-object v2, v0, v1

    .line 190
    sput-object v0, Lcom/baidu/yi/sdk/cloudstorage/provider/TableDefine;->AUTH_PROJECTION:[Ljava/lang/String;

    .line 199
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    return-void
.end method

.method public static getAuthContentURI(Landroid/content/Context;)Landroid/net/Uri;
    .locals 2
    .parameter "context"

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".cloudstorage.provider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 31
    const-string v1, "authinfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getContentURI(Landroid/content/Context;)Landroid/net/Uri;
    .locals 2
    .parameter "context"

    .prologue
    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".cloudstorage.provider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 21
    const-string v1, "tasklist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getHistoryContentURI(Landroid/content/Context;)Landroid/net/Uri;
    .locals 2
    .parameter "context"

    .prologue
    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".cloudstorage.provider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 26
    const-string v1, "taskhistory"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static getProjection()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 202
    const/16 v0, 0x1a

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 203
    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 204
    const-string v2, "uri"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 205
    const-string v2, "action"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 206
    const-string v2, "cloud_provider"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 207
    const-string v2, "control"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 208
    const-string v2, "create_time"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    .line 209
    const-string v2, "current_bytes"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 210
    const-string v2, "description"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    .line 211
    const-string v2, "destination"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 212
    const-string v2, "file_name"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    .line 213
    const-string v2, "local_path"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 214
    const-string v2, "relative_path"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    .line 215
    const-string v2, "lastmod"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 216
    const-string v2, "num_failed"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    .line 217
    const-string v2, "retry_after"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 218
    const-string v2, "mimetype"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    .line 219
    const-string v2, "notify_status"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    .line 220
    const-string v2, "package_name"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    .line 221
    const-string v2, "error_code"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    .line 222
    const-string v2, "status"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    .line 223
    const-string v2, "title"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    .line 224
    const-string v2, "md5"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    .line 225
    const-string v2, "total_bytes"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    .line 226
    const-string v2, "task_id"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    .line 227
    const-string v2, "visibility"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    .line 228
    const-string v2, "allowed_network"

    aput-object v2, v0, v1

    .line 202
    return-object v0
.end method
