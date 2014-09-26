.class public final Lcom/baidu/yi/sdk/cloudstorage/provider/TableDefine$TaskColumns;
.super Ljava/lang/Object;
.source "TableDefine.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/baidu/yi/sdk/cloudstorage/provider/TableDefine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TaskColumns"
.end annotation


# static fields
.field public static final COLUMN_ACTION:Ljava/lang/String; = "action"

.field public static final COLUMN_ALLOWED_NETWORK:Ljava/lang/String; = "allowed_network"

.field public static final COLUMN_CLOUD_PROVIDER:Ljava/lang/String; = "cloud_provider"

.field public static final COLUMN_CONTROL:Ljava/lang/String; = "control"

.field public static final COLUMN_CREATE_TIME:Ljava/lang/String; = "create_time"

.field public static final COLUMN_CURRENT_BYTES:Ljava/lang/String; = "current_bytes"

.field public static final COLUMN_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final COLUMN_DESTINATION:Ljava/lang/String; = "destination"

.field public static final COLUMN_ERROR_CODE:Ljava/lang/String; = "error_code"

.field public static final COLUMN_FILE_NAME:Ljava/lang/String; = "file_name"

.field public static final COLUMN_LAST_MODIFICATION:Ljava/lang/String; = "lastmod"

.field public static final COLUMN_LOCAL_PATH:Ljava/lang/String; = "local_path"

.field public static final COLUMN_MD5:Ljava/lang/String; = "md5"

.field public static final COLUMN_MIME_TYPE:Ljava/lang/String; = "mimetype"

.field public static final COLUMN_NOTIFY_STATUS:Ljava/lang/String; = "notify_status"

.field public static final COLUMN_NUM_FAILED:Ljava/lang/String; = "num_failed"

.field public static final COLUMN_PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final COLUMN_RELATIVE_PATH:Ljava/lang/String; = "relative_path"

.field public static final COLUMN_RETRY_AFTER:Ljava/lang/String; = "retry_after"

.field public static final COLUMN_STATUS:Ljava/lang/String; = "status"

.field public static final COLUMN_TASK_ID:Ljava/lang/String; = "task_id"

.field public static final COLUMN_TITLE:Ljava/lang/String; = "title"

.field public static final COLUMN_TOTAL_BYTES:Ljava/lang/String; = "total_bytes"

.field public static final COLUMN_URI:Ljava/lang/String; = "uri"

.field public static final COLUMN_VISIBILITY:Ljava/lang/String; = "visibility"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
