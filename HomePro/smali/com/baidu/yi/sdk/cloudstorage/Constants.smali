.class public final Lcom/baidu/yi/sdk/cloudstorage/Constants;
.super Ljava/lang/Object;
.source "Constants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/baidu/yi/sdk/cloudstorage/Constants$ACTION;,
        Lcom/baidu/yi/sdk/cloudstorage/Constants$ALLOWED_NETWORK;,
        Lcom/baidu/yi/sdk/cloudstorage/Constants$AUTHTYPE;,
        Lcom/baidu/yi/sdk/cloudstorage/Constants$CONTROL;,
        Lcom/baidu/yi/sdk/cloudstorage/Constants$DESTINATION;,
        Lcom/baidu/yi/sdk/cloudstorage/Constants$NOTIFY_STATUS;,
        Lcom/baidu/yi/sdk/cloudstorage/Constants$VISIBILITY;
    }
.end annotation


# static fields
.field public static final ACTION_RETRY:Ljava/lang/String; = "com.baidu.cloudstorage.retry"

.field public static final CLOUD_PROVIDER_BAIDU:Ljava/lang/String; = "baidu"

.field public static final CLOUD_PROVIDER_DROPBOX:Ljava/lang/String; = "dropbox"

.field public static final CLOUD_STORAGE_MESSAGE_CANCEL_TASK:I = 0xa

.field public static final CLOUD_STORAGE_MESSAGE_DELETE_FILE:I = 0x4

.field public static final CLOUD_STORAGE_MESSAGE_GET_FILE:I = 0x2

.field public static final CLOUD_STORAGE_MESSAGE_GET_FILE_META:I = 0x5

.field public static final CLOUD_STORAGE_MESSAGE_GET_TASK_INFO:I = 0x7

.field public static final CLOUD_STORAGE_MESSAGE_GET_TOKEN:I = 0x6

.field public static final CLOUD_STORAGE_MESSAGE_LIST_DIR:I = 0x1

.field public static final CLOUD_STORAGE_MESSAGE_MESSAGE_PAUSE_TASK:I = 0x9

.field public static final CLOUD_STORAGE_MESSAGE_PARAM_FILE:Ljava/lang/String; = "param_file"

.field public static final CLOUD_STORAGE_MESSAGE_PARAM_OPERATION:Ljava/lang/String; = "operation"

.field public static final CLOUD_STORAGE_MESSAGE_PARAM_SENDER:Ljava/lang/String; = "sender"

.field public static final CLOUD_STORAGE_MESSAGE_PARAM_SENDER_CLIENT:I = 0x2711

.field public static final CLOUD_STORAGE_MESSAGE_PARAM_SENDER_PLUGIN:I = 0x2713

.field public static final CLOUD_STORAGE_MESSAGE_PARAM_SENDER_SERVICE:I = 0x2712

.field public static final CLOUD_STORAGE_MESSAGE_PARAM_TASK:Ljava/lang/String; = "param_task"

.field public static final CLOUD_STORAGE_MESSAGE_PUT_FILE:I = 0x3

.field public static final CLOUD_STORAGE_MESSAGE_REQUEST:I = 0x64

.field public static final CLOUD_STORAGE_MESSAGE_RESULT:I = 0x65

.field public static final CLOUD_STORAGE_MESSAGE_RESULT_ERRORCODE:Ljava/lang/String; = "error_code"

.field public static final CLOUD_STORAGE_MESSAGE_RESULT_FILE:Ljava/lang/String; = "result_file"

.field public static final CLOUD_STORAGE_MESSAGE_RESULT_FILELIST:Ljava/lang/String; = "result_entrylist"

.field public static final CLOUD_STORAGE_MESSAGE_RESULT_TASK:Ljava/lang/String; = "result_task"

.field public static final CLOUD_STORAGE_MESSAGE_START_TASK:I = 0x8

.field public static final CLOUD_STORAGE_OFFLINE_TASK_INFO:I = 0xb

.field public static final RETRY_FIRST_DELAY:I = 0x1e

.field public static final STATUS_PENDING:I = 0xbe

.field public static final STATUS_RUNNING:I = 0xc0

.field public static final STATUS_SUCCESS:I = 0xc8

.field public static final STATUS_UNRECOVERABLE_ERROR:I = 0x1f5

.field public static final STATUS_WAITING_FOR_SOME_CONDITION:I = 0x1f6

.field public static final STATUS_WAITING_TO_RETRY:I = 0x1f4


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
.end method
