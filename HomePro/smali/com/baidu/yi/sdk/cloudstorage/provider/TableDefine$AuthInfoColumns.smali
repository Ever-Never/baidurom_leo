.class public final Lcom/baidu/yi/sdk/cloudstorage/provider/TableDefine$AuthInfoColumns;
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
    name = "AuthInfoColumns"
.end annotation


# static fields
.field public static final COLUMN_API_KEY:Ljava/lang/String; = "api_key"

.field public static final COLUMN_APP_ID:Ljava/lang/String; = "app_id"

.field public static final COLUMN_CLOUD_PROVIDER:Ljava/lang/String; = "cloud_provider"

.field public static final COLUMN_PKG_NAME:Ljava/lang/String; = "package_name"

.field public static final COLUMN_ROOT_DIR:Ljava/lang/String; = "root_dir"

.field public static final COLUMN_SECRET_KEY:Ljava/lang/String; = "secret_key"

.field public static final COLUMN_TOKEN:Ljava/lang/String; = "token"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
